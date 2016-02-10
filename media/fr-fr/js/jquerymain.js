// init page
$(function(){
	initAutoScalingNav({
		menuId:"nav-bar",
		spacing:2
	});
	initTabs();
	initDropDown();
	initSameHeight();
	initCustomForms();
	initScrollGallery();
	initRandomBlocks();
	$('input, textarea').placeholder();
});
$(window).load(initSlideshow);

// random blocks init
function initRandomBlocks() {
	jQuery('div.banners div.block').randomBlock();
}

// tabs init
function initTabs() {
	jQuery('ul.tabset').contentTabs({
		event:'mouseover'
	})
}

// drop down init
function initDropDown(){
	$(".nav-bar li").each(function(){
		if($(this).find("ul").length){
			$(this).addClass('has-drop-down')
		}
	})
}

// same height init
function initSameHeight(){
	$('.tabs .block').sameHeight({
		elements: '>.tabset-holder'
	});
}
 
// scroll gallery init
function initScrollGallery(){
	jQuery('.carousel').scrollGallery({
		sliderHolder: '.drop-nav',
		pagerLinks:'#nav li',
		btnHide:'a.btn-close',
		pauseOnHover:false,
		autoRotation:false,
		switchTime:5000,
		duration:650
	});
}

// slideshow init
function initSlideshow() {
	jQuery('.gallery').each(function() {
		new Slideshow({
			gallery:this,
			effect:false,
			holder:'div.mask',
			slides:'ul.slider > li',
			pagerHolder:'div.pagination',
			btnNext:'a.btn-next',
			btnPrev:'a.btn-prev',
			fadeSpeed:1000,
			autoHeight:true
		})
	})
}

// random blocks function
;(function($) {
	$.fn.randomBlock = function(o) {
		var o = $.extend({
			content:'div.block-content',
			activeClass:'active'
		}, o)
		
		return this.each(function() {
			var holder = $(this);
			var blocks = holder.find(o.content).removeClass(o.activeClass);
			blocks.eq(Math.round(Math.random() * (blocks.length - 1))).addClass(o.activeClass);
		})
	}
}(jQuery))


// scroll gallery plugin
;(function($){
	Slideshow = function(){
		this.init.apply(this, arguments)
	}
	Slideshow.prototype = {
		init: function(o){
			// default options
			this.o = $.extend({
				gallery:null,
				effect:true, // true = fade, false = slide
				holder:'div.holder',
				slides:'ul.slides li',
				pagerLinks:'ul.switcher a',
				btnNext:'a.link-next',
				btnPrev:'a.link-prev',
				btnPlay:'a.link-play',
				btnPause:'a.link-pause',
				currentNum:'.current-num',
				allNum:'.all-num',
				playingClass:'playing',
				pagerHolder:'div.switcher-holder',
				autoRotation:false,
				autoHeight:true,
				pauseOnHover:true,
				switchEvent:'click',
				fadeSpeed:650,
				startIndex:0,
				activeClass:'active',
				afterInit:null,
				beforeChange:null,
				onChange:null,
				afterChange:null
			},o);
			// gallery options
			this.gallery = $(this.o.gallery);
			this.slides = this.gallery.find(this.o.slides);
			if(!this.gallery.length || this.slides.length < 2) return;
			this.holder = this.gallery.find(this.o.holder);
			this.pagerLinks = this.gallery.find(this.o.pagerLinks);
			this.btnNext = this.gallery.find(this.o.btnNext);
			this.btnPrev = this.gallery.find(this.o.btnPrev);
			this.btnPlay = this.gallery.find(this.o.btnPlay);
			this.btnPause = this.gallery.find(this.o.btnPause);
			this.currentNum = this.gallery.find(this.o.currentNum);
			this.pagerHolder = this.gallery.find(this.o.pagerHolder)
			this.allNum = this.gallery.find(this.o.allNum);
			this.index = this.o.startIndex;
			this.maxIndex = this.slides.length - 1;
			if(this.index > this.maxIndex) this.index = this.maxIndex;
			if(this.index < 0) this.index = 0;
			this.prevIndex = this.index;
			this.animating = false;
			this.direction = true;
			this.elementInit();
			if(typeof this.o.afterInit === 'function') this.o.afterInit();
		},
		elementInit: function() {
			// prepare gallery
			this.slides.removeClass(this.o.activeClass).css({position: 'absolute', top: 0}).eq(this.index).addClass(this.o.activeClass);
			if(this.o.effect) this.slides.css({opacity: 0, left: 0}).eq(this.index).css({opacity: 1});
			else this.slides.css({left: this.holder.width()}).eq(this.index).css({left: 0});
			this.slides.parent().css({position: 'relative', height: this.slides.eq(this.index).outerHeight(true)});
			if(this.o.autoRotation) this.gallery.addClass(this.o.playingClass);
			this.createPager();
			this.bindEvents();
			this.refreshButtons();
			this.autoSlide();
		},
		createPager: function() {
			// create pager
			if(this.pagerHolder.length) {
				var pager = $('<ul class="switcher" />');
				for(var i = 0; i < this.slides.length; i++) {
					pager.append($('<li><a href="#">' + (i + 1) + '</a></li>'));
				}
				this.pagerHolder.empty().append(pager);
				this.pagerLinks = pager.children();
			}
		},
		bindEvents: function() {
			// gallery controls
			this.pagerLinks.each($.proxy(function(ind, obj) {
				$(obj).bind(this.o.switchEvent, $.proxy(function(e) {
					if(this.index != ind && !this.animating) {
						this.index = ind;
						this.index > this.prevIndex ? this.direction = true : this.direction = false;
						this.switchSlide();
					}
					e.preventDefault();
				}, this))
			}, this))
			// next slide
			this.btnNext.bind(this.o.switchEvent, $.proxy(function(e) {
				if(!this.animating) this.nextSlide();
				e.preventDefault();
			}, this))
			// prev slide
			this.btnPrev.bind(this.o.switchEvent, $.proxy(function(e) {
				if(!this.animating) this.prevSlide();
				e.preventDefault();
			}, this))
			// pause on hover
			if(this.o.pauseOnHover) this.gallery.bind('mouseenter', $.proxy(this.stopAutoSlide, this)).bind('mouseleave', $.proxy(this.autoSlide, this));
			// autoplay
			this.btnPlay.click($.proxy(function(e) {
				this.gallery.addClass(this.o.playingClass);
				e.preventDefault();
			}, this));
			// stop autoplay
			this.btnPause.click($.proxy(function(e) {
				this.gallery.removeClass(this.o.playingClass);
				e.preventDefault();
			}, this));
		},
		switchSlide: function() {
			// gallery animation
			if(typeof this.o.beforeChange === 'function') this.o.beforeChange();
			this.animating = true;
			this.stopAutoSlide();
			var prop1 = {}, prop2 = {}, prop3 = {};
			prop1[this.o.effect ? 'opacity' : 'left'] = this.o.effect ? 0 : (this.direction ? -this.holder.width() : this.holder.width());
			prop2[this.o.effect ? 'opacity' : 'left'] = this.o.effect ? 1 : 0;
			prop3['left'] = this.o.effect ? 0 : (this.direction ? this.holder.width() : -this.holder.width());
			this.slides.eq(this.prevIndex).removeClass(this.o.activeClass).stop().animate(prop1, {duration: this.o.fadeSpeed});
			this.slides.eq(this.index).addClass(this.o.activeClass).stop().css(prop3).animate(prop2, {duration: this.o.fadeSpeed, complete: $.proxy(function() {this.animating = false; if(typeof this.o.beforeChange === 'function') this.o.afterChange()}, this)});
			if(this.o.autoHeight) this.slides.parent().stop().animate({height: this.slides.eq(this.index).outerHeight(true)}, {duration: this.o.fadeSpeed});
			this.prevIndex = this.index;
			if(typeof this.o.onChange === 'function') this.o.onChange();
			this.refreshButtons();
			this.autoSlide();
		},
		nextSlide: function() {
			// next slide
			this.index++;
			if(this.index > this.maxIndex) this.index = 0;
			this.direction = true;
			this.switchSlide();
		},
		prevSlide: function() {
			// prev slide
			this.index--;
			if(this.index < 0) this.index = this.maxIndex;
			this.direction = false;
			this.switchSlide();
		},
		refreshButtons: function() {
			// refresh prev/bext buttons and counter
			this.pagerLinks.removeClass(this.o.activeClass).eq(this.index).addClass(this.o.activeClass);
			this.currentNum.empty().text(this.index + 1);
			this.allNum.empty().text(this.slides.length);
		},
		stopAutoSlide: function() {
			// stop timer
			clearTimeout(this.timer);
		},
		autoSlide: function() {
			// run timer
			this.stopAutoSlide();
			if(this.o.autoRotation && this.gallery.hasClass(this.o.playingClass)) this.timer = setTimeout($.proxy(this.nextSlide, this), this.o.autoRotation + this.o.fadeSpeed);
		}
	};
})(jQuery);

// scrolling gallery plugin
jQuery.fn.scrollGallery = function(_options){
	var _options = jQuery.extend({
		sliderHolder: '>div',
		slider:'>ul',
		slides: '>li',
		pagerLinks:'div.pager a',
		btnPrev:'a.link-prev',
		btnNext:'a.link-next',
		btnHide:'a.link-hide',
		activeClass:'active',
		disabledClass:'disabled',
		generatePagination:'div.pg-holder',
		curNum:'em.scur-num',
		allNum:'em.sall-num',
		circleSlide:true,
		pauseClass:'gallery-paused',
		pauseButton:'none',
		pauseOnHover:true,
		autoRotation:false,
		stopAfterClick:false,
		switchTime:5000,
		duration:650,
		easing:'swing',
		event:'click',
		splitCount:false,
		afterInit:false,
		vertical:false,
		step:false
	},_options);

	return this.each(function(){
		// gallery options
		var _this = jQuery(this);
		var _sliderHolder = jQuery(_options.sliderHolder, _this);
		var _slider = jQuery(_options.slider, _sliderHolder);
		var _slides = jQuery(_options.slides, _slider);
		var _btnPrev = jQuery(_options.btnPrev, _this);
		var _btnNext = jQuery(_options.btnNext, _this);
		var _btnHide = jQuery(_options.btnHide, _this);
		var _pagerLinks = jQuery(_options.pagerLinks, _this);
		var _generatePagination = jQuery(_options.generatePagination, _this);
		var _curNum = jQuery(_options.curNum, _this);
		var _allNum = jQuery(_options.allNum, _this);
		var _pauseButton = jQuery(_options.pauseButton, _this);
		var _pauseOnHover = _options.pauseOnHover;
		var _pauseClass = _options.pauseClass;
		var _autoRotation = _options.autoRotation;
		var _activeClass = _options.activeClass;
		var _disabledClass = _options.disabledClass;
		var _easing = _options.easing;
		var _duration = _options.duration;
		var _switchTime = _options.switchTime;
		var _controlEvent = _options.event;
		var _step = _options.step;
		var _vertical = _options.vertical;
		var _circleSlide = _options.circleSlide;
		var _stopAfterClick = _options.stopAfterClick;
		var _afterInit = _options.afterInit;
		var _splitCount = _options.splitCount;

		// gallery init
		if(!_slides.length) return;

		if(_splitCount) {
			var curStep = 0;
			var newSlide = jQuery('<slide>').addClass('split-slide');
			_slides.each(function(){
				newSlide.append(this);
				curStep++;
				if(curStep > _splitCount-1) {
					curStep = 0;
					_slider.append(newSlide);
					newSlide = jQuery('<slide>').addClass('split-slide');
				}
			});
			if(curStep) _slider.append(newSlide);
			_slides = _slider.children();
		}

		var _currentStep = 0;
		var _sumWidth = 0;
		var _sumHeight = 0;
		var _hover = false;
		var _stepWidth;
		var _stepHeight;
		var _stepCount;
		var _offset;
		var _timer;
		var _flag = false;
		_sliderHolder.css('height','auto').data('height',_sliderHolder.height()).css('height',0);

		_slides.each(function(){
			_sumWidth+=jQuery(this).outerWidth(true);
			_sumHeight+=jQuery(this).outerHeight(true);
		});

		// calculate gallery offset
		function recalcOffsets() {
			if(_vertical) {
				if(_step) {
					_stepHeight = _slides.eq(_currentStep).outerHeight(true);
					_stepCount = Math.ceil((_sumHeight-_sliderHolder.height())/_stepHeight)+1;
					_offset = -_stepHeight*_currentStep;
				} else {
					_stepHeight = _sliderHolder.height();
					_stepCount = Math.ceil(_sumHeight/_stepHeight);
					_offset = -_stepHeight*_currentStep;
					if(_offset < _stepHeight-_sumHeight) _offset = _stepHeight-_sumHeight;
				}
			} else {
				if(_step) {
					_stepWidth = _slides.eq(_currentStep).outerWidth(true)*_step;
					_stepCount = Math.ceil((_sumWidth-_sliderHolder.width())/_stepWidth)+1;
					_offset = -_stepWidth*_currentStep;
					if(_offset < _sliderHolder.width()-_sumWidth) _offset = _sliderHolder.width()-_sumWidth;
				} else {
					_stepWidth = _sliderHolder.width();
					_stepCount = Math.ceil(_sumWidth/_stepWidth);
					_offset = -_stepWidth*_currentStep;
					if(_offset < _stepWidth-_sumWidth) _offset = _stepWidth-_sumWidth;
				}
			}
		}

		// gallery control
		if(_btnPrev.length) {
			_btnPrev.bind(_controlEvent,function(){
				if(_stopAfterClick) stopAutoSlide();
				prevSlide();
				return false;
			});
		}
		if(_btnNext.length) {
			_btnNext.bind(_controlEvent,function(){
				if(_stopAfterClick) stopAutoSlide();
				nextSlide();
				return false;
			});
		}
		if(_btnHide.length) {
			_btnHide.bind(_controlEvent,function(){
				if(_stopAfterClick) stopAutoSlide();
				hideSlider();
				return false;
			});
		}
		if(_generatePagination.length) {
			_generatePagination.empty();
			recalcOffsets();
			var _list = jQuery('<ul />');
			for(var i=0; i<_stepCount; i++) jQuery('<li><a href="#">'+(i+1)+'</a></li>').appendTo(_list);
			_list.appendTo(_generatePagination);
			_pagerLinks = _list.children();
		}
		if(_pagerLinks.length) {
			_pagerLinks.each(function(_ind){
				var _btn = jQuery(this);
				_btn.bind(_controlEvent,function(){
					if(!_btn.hasClass(_activeClass)) {
						if(_stopAfterClick) stopAutoSlide();
						_currentStep = _ind;
						_pagerLinks.removeClass(_activeClass);
						_btn.addClass(_activeClass);
						if(_flag){
							switchSlide();
						}
						else{
							openSlider();
						}
					}
					else{
						if(_flag) hideSlider();
						else openSlider();
					}
					return false;
				});
			});
		}

		// gallery animation
		function prevSlide() {
			recalcOffsets();
			if(_currentStep > 0) _currentStep--;
			//else if(_circleSlide) _currentStep = _slides.length-1;
			else if(_circleSlide) _currentStep = _stepCount-1;
			switchSlide();
		}
		function nextSlide() {
			recalcOffsets();
			if(_currentStep < _stepCount-1) _currentStep++;
			//if(_currentStep < _slides.length-1) _currentStep++;
			else if(_circleSlide) _currentStep = 0;
			switchSlide();
		}
		function refreshStatus() {
			//if(_pagerLinks.length) _pagerLinks.removeClass(_activeClass).eq(_currentStep).addClass(_activeClass);
			if(!_circleSlide) {
				_btnPrev.removeClass(_disabledClass);
				_btnNext.removeClass(_disabledClass);
				if(_currentStep == 0) _btnPrev.addClass(_disabledClass);
				if(_currentStep == _stepCount-1) _btnNext.addClass(_disabledClass);
			}
			if(_curNum.length) _curNum.text(_currentStep+1);
			if(_allNum.length) _allNum.text(_stepCount);
		}
		function switchSlide() {
			recalcOffsets();
			if(!_flag) {
				_flag = true;
				_slider.css('marginLeft',_offset);
				_sliderHolder.animate({height:_sliderHolder.data('height')},{queue:false,duration:_duration});
			}
			else{
				if(_vertical) _slider.stop().animate({marginTop:_offset},{duration:_duration,queue:false,easing:_easing});
				else _slider.stop().animate({marginLeft:_offset},{duration:_duration,queue:false,easing:_easing});
			}
			refreshStatus();
			autoSlide();
		}
		function openSlider() {
			recalcOffsets();
			_flag = true;
			_slider.css('marginLeft',_offset);
			_sliderHolder.animate({height:_sliderHolder.data('height')},{queue:false,duration:_duration});
		}
		function hideSlider() {
			recalcOffsets();
			_flag = false;
			_sliderHolder.animate({height:0},{queue:false,duration:_duration});
		}

		// autoslide function
		function stopAutoSlide() {
			if(_timer) clearTimeout(_timer);
			_autoRotation = false;
		}
		function autoSlide() {
			if(!_autoRotation || _hover) return;
			if(_timer) clearTimeout(_timer);
			_timer = setTimeout(nextSlide,_switchTime+_duration);
		}
		if(_pauseOnHover) {
			_this.hover(function(){
				_hover = true;
				if(_timer) clearTimeout(_timer);
			},function(){
				_hover = false;
				autoSlide();
			});
		}
		recalcOffsets();
		refreshStatus();
		autoSlide();

		// pause buttton
		if(_pauseButton.length) {
			_pauseButton.click(function(){
				if(_this.hasClass(_pauseClass)) {
					_this.removeClass(_pauseClass);
					_autoRotation = true;
					autoSlide();
				} else {
					_this.addClass(_pauseClass);
					stopAutoSlide();
				}
				return false;
			});
		}
		
		if(_afterInit && typeof _afterInit === 'function') _afterInit(_this, _slides);
	});
}

/*
 * jQuery SameHeight plugin
 */
;(function($){
	$.fn.sameHeight = function(opt) {
		var options = $.extend({
			elements: '>*'
		},opt);
		return this.each(function(){
			var holder = $(this);
			var elements = holder.find(options.elements);
			resizeElements(holder, elements);
		});
	}
	// resize helper function
	function resizeElements(parent, boxes) {
		var parentHeight = parent.height();
		boxes.each(function(){
			var element = $(this);
			var depthDiffHeight = 0;
			element.parents().each(function(){
				var tmpParent = $(this);
				if(this === parent[0]) {
					return false;
				} else {
					depthDiffHeight += tmpParent.outerHeight() - tmpParent.height();
				}
			});
			element.css({
				height: parentHeight - depthDiffHeight - (element.outerHeight() - element.height())
			});
		});
	}
}(jQuery));

//init Auto Scaling Nav
function initAutoScalingNav(o) {
	if (!o.menuId) o.menuId = "nav";
	if (!o.tag) o.tag = "a";
	if (!o.spacing) o.spacing = 0;
	if (!o.constant) o.constant = 0;
	if (!o.minPaddings) o.minPaddings = 0;
	if (!o.liHovering) o.liHovering = false;
	if (!o.sideClasses) o.sideClasses = false;
	if (!o.equalLinks) o.equalLinks = false;
	if (!o.flexible) o.flexible = false;
	var nav = document.getElementById(o.menuId);
	if(nav) {
		nav.className += " scaling-active";
		var lis = nav.getElementsByTagName("li");
		var asFl = [];
		var lisFl = [];
		var width = 0;
		for (var i=0, j=0; i<lis.length; i++) {
			if(lis[i].parentNode == nav) {
				var t = lis[i].getElementsByTagName(o.tag).item(0);
				asFl.push(t);
				asFl[j++].width = t.offsetWidth;
				lisFl.push(lis[i]);
				if(width < t.offsetWidth) width = t.offsetWidth;
			}
			if(o.liHovering) {
				lis[i].onmouseover = function() {
					this.className += " hover";
				}
				lis[i].onmouseout = function() {
					this.className = this.className.replace("hover", "");
				}
			}
		}
		var menuWidth = nav.clientWidth - asFl.length*o.spacing - o.constant;
		if(o.equalLinks && width * asFl.length < menuWidth) {
			for (var i=0; i<asFl.length; i++) {
				asFl[i].width = width;
			}
		}
		width = getItemsWidth(asFl);
		if(width < menuWidth) {
			var version = navigator.userAgent.toLowerCase();
			for (var i=0; getItemsWidth(asFl) < menuWidth; i++) {
				asFl[i].width++;
				if(!o.flexible) {
					asFl[i].style.width = asFl[i].width + "px";
				}
				if(i >= asFl.length-1) i=-1;
			}
			if(o.flexible) {
				for (var i=0; i<asFl.length; i++) {
					width = (asFl[i].width - o.spacing - o.constant/asFl.length)/menuWidth*100;
					if(i != asFl.length-1) {
						lisFl[i].style.width = width + "%";
					}
					else {
						if(navigator.appName.indexOf("Microsoft Internet Explorer") == -1 || version.indexOf("msie 8") != -1 || version.indexOf("msie 9") != -1)
							lisFl[i].style.width = width + "%";
					}
				}
			}
		}
		else if(o.minPaddings > 0) {
			for (var i=0; i<asFl.length; i++) {
				asFl[i].style.paddingLeft = o.minPaddings + "px";
				asFl[i].style.paddingRight = o.minPaddings + "px";
			}
		}
		if(o.sideClasses) {
			lisFl[0].className += " first-child";
			lisFl[0].getElementsByTagName(o.tag).item(0).className += " first-child-a";
			lisFl[lisFl.length-1].className += " last-child";
			lisFl[lisFl.length-1].getElementsByTagName(o.tag).item(0).className += " last-child-a";
		}
		nav.className += " scaling-ready";
	}
	function getItemsWidth(a) {
		var w = 0;
		for(var q=0; q<a.length; q++) {
			w += a[q].width;
		}
		return w;
	}
}

/*! http://mths.be/placeholder v2.0.6 by @mathias */
;(function(window, document, $) {
	var isInputSupported = 'placeholder' in document.createElement('input'),
		isTextareaSupported = 'placeholder' in document.createElement('textarea'),
		prototype = $.fn,
		valHooks = $.valHooks,
		hooks,
		placeholder;
	if(navigator.userAgent.indexOf('Opera/') != -1) {
		isInputSupported = isTextareaSupported = false;
	}
	if (isInputSupported && isTextareaSupported) {
		placeholder = prototype.placeholder = function() {
			return this;
		};
		placeholder.input = placeholder.textarea = true;
	} else {
		placeholder = prototype.placeholder = function() {
			var $this = this;
			$this
				.filter((isInputSupported ? 'textarea' : ':input') + '[placeholder]')
				.not('.placeholder')
				.bind({
					'focus.placeholder': clearPlaceholder,
					'blur.placeholder': setPlaceholder
				})
				.data('placeholder-enabled', true)
				.trigger('blur.placeholder');
			return $this;
		};
		placeholder.input = isInputSupported;
		placeholder.textarea = isTextareaSupported;
		hooks = {
			'get': function(element) {
				var $element = $(element);
				return $element.data('placeholder-enabled') && $element.hasClass('placeholder') ? '' : element.value;
			},
			'set': function(element, value) {
				var $element = $(element);
				if (!$element.data('placeholder-enabled')) {
					return element.value = value;
				}
				if (value == '') {
					element.value = value;
					// Issue #56: Setting the placeholder causes problems if the element continues to have focus.
					if (element != document.activeElement) {
						// We can’t use `triggerHandler` here because of dummy text/password inputs :(
						setPlaceholder.call(element);
					}
				} else if ($element.hasClass('placeholder')) {
					clearPlaceholder.call(element, true, value) || (element.value = value);
				} else {
					element.value = value;
				}
				// `set` can not return `undefined`; see http://jsapi.info/jquery/1.7.1/val#L2363
				return $element;
			}
		};
		isInputSupported || (valHooks.input = hooks);
		isTextareaSupported || (valHooks.textarea = hooks);
		$(function() {
			// Look for forms
			$(document).delegate('form', 'submit.placeholder', function() {
				// Clear the placeholder values so they don’t get submitted
				var $inputs = $('.placeholder', this).each(clearPlaceholder);
				setTimeout(function() {
					$inputs.each(setPlaceholder);
				}, 10);
			});
		});
		// Clear placeholder values upon page reload
		$(window).bind('beforeunload.placeholder', function() {
			$('.placeholder').each(function() {
				this.value = '';
			});
		});
	}
	function args(elem) {
		// Return an object of element attributes
		var newAttrs = {},
		    rinlinejQuery = /^jQuery\d+$/;
		$.each(elem.attributes, function(i, attr) {
			if (attr.specified && !rinlinejQuery.test(attr.name)) {
				newAttrs[attr.name] = attr.value;
			}
		});
		return newAttrs;
	}
	function clearPlaceholder(event, value) {
		var input = this,
		    $input = $(input),
		    hadFocus;
		if (input.value == $input.attr('placeholder') && $input.hasClass('placeholder')) {
			hadFocus = input == document.activeElement;
			if ($input.data('placeholder-password')) {
				$input = $input.hide().next().show().attr('id', $input.removeAttr('id').data('placeholder-id'));
				// If `clearPlaceholder` was called from `$.valHooks.input.set`
				if (event === true) {
					return $input[0].value = value;
				}
				$input.focus();
			} else {
				input.value = '';
				$input.removeClass('placeholder');
			}
			hadFocus && input.select();
		}
	}
	function setPlaceholder() {
		var $replacement,
			input = this,
			$input = $(input),
			$origInput = $input,
			id = this.id;
		if (input.value == '') {
			if (input.type == 'password') {
				if (!$input.data('placeholder-textinput')) {
					try {
						$replacement = $input.clone().attr({ 'type': 'text' });
					} catch(e) {
						$replacement = $('<input>').attr($.extend(args(this), { 'type': 'text' }));
					}
					$replacement
						.removeAttr('name')
						.data({
							'placeholder-password': true,
							'placeholder-id': id
						})
						.bind('focus.placeholder', clearPlaceholder);
					$input
						.data({
							'placeholder-textinput': $replacement,
							'placeholder-id': id
						})
						.before($replacement);
				}
				$input = $input.removeAttr('id').hide().prev().attr('id', id).show();
				// Note: `$input[0] != input` now!
			}
			$input.addClass('placeholder');
			$input[0].value = $input.attr('placeholder');
		} else {
			$input.removeClass('placeholder');
		}
	}

}(this, document, jQuery));

//jQuery Tabs plugin
;(function($){
	$.fn.contentTabs = function(o){
		// default options
		var options = $.extend({
			activeClass:'active',
			addToParent:false,
			autoHeight:false,
			autoRotate:false,
			animSpeed:400,
			switchTime:3000,
			effect: 'none',
			tabLinks:'a',
			event:'click'
		},o);

		return this.each(function(){
			var tabset = $(this);
			var tabLinks = tabset.find(options.tabLinks);
			var tabLinksParents = tabLinks.parent();
			var prevActiveLink = tabLinks.eq(0), currentTab, animating;
			
			// init tabLinks
			tabLinks.each(function(){
				var link = $(this);
				var href = link.attr('href');
				var parent = link.parent();
				var tab = $(href);
				
				// get elements
				href = href.substr(href.lastIndexOf('#'));
				link.data('cparent', parent);
				link.data('ctab', tab);
				
				// show only active tab
				if((options.addToParent ? parent : link).hasClass(options.activeClass)) {
					prevActiveLink = link; currentTab = tab;
					contentTabsEffect[options.effect].show({tab:tab, fast:true});
				} else {
					contentTabsEffect[options.effect].hide({tab:tab, fast:true});
				}
				
				// event handler
				link.bind(options.event, function(e){
					if(link != prevActiveLink && !animating) {
						switchTab(prevActiveLink, link);
						prevActiveLink = link;
					}
					e.preventDefault();
				});
				if(options.event !== 'click') {
					link.bind('click', function(e){
						e.preventDefault();
					});
				}
			});
			
			// tab switch function
			function switchTab(oldLink, newLink) {
				animating = true;
				var oldTab = oldLink.data('ctab');
				var newTab = newLink.data('ctab');
				currentTab = newTab;
				
				// refresh pagination links
				(options.addToParent ? tabLinksParents : tabLinks).removeClass(options.activeClass);
				(options.addToParent ? newLink.data('cparent') : newLink).addClass(options.activeClass);
				
				// hide old tab
				contentTabsEffect[options.effect].hide({
					speed: options.animSpeed,
					tab:oldTab,
					complete: function() {
						// show current tab
						resizeHolder();
						contentTabsEffect[options.effect].show({
							speed: options.animSpeed,
							tab:newTab,
							complete: function() {
								animating = false;
								resizeHolder(true);
								autoRotate();
							}
						});
					}
				});
			}
			
			// holder auto height
			var tabHolder = tabLinks.eq(0).data('ctab').parent();
			function resizeHolder(fast) {
				if(options.autoHeight) {
					var origStyles = currentTab.attr('style');
					currentTab.show().css({width:currentTab.width()});
					var tabHeight = currentTab.outerHeight(true);
					if(!origStyles) currentTab.removeAttr('style'); else currentTab.attr('style', origStyles);
					tabHolder.stop()[fast ? 'css' : 'animate']({height: tabHeight}, {duration: options.animSpeed});
				}
			}
			if(options.autoHeight) {
				resizeHolder(true);
				$(window).bind('resize orientationchange', resizeHolder);
			}
			
			// autorotation handling
			var rotationTimer;
			function nextTab() {
				var activeItem = (options.addToParent ? tabLinksParents : tabLinks).filter('.' + options.activeClass);
				var activeIndex = (options.addToParent ? tabLinksParents : tabLinks).index(activeItem);
				var newLink = tabLinks.eq(activeIndex < tabLinks.length - 1 ? activeIndex + 1 : 0);
				prevActiveLink = tabLinks.eq(activeIndex);
				switchTab(prevActiveLink, newLink);
			}
			function autoRotate() {
				if(options.autoRotate && tabLinks.length > 1) {
					clearTimeout(rotationTimer);
					rotationTimer = setTimeout(nextTab, options.switchTime);
				}
			}
			autoRotate();
		});
	}
	
	// tab switch effects
	var contentTabsEffect = {
		none: {
			show: function(o) {
				o.tab.css({display:'block'});
				if(o.complete) o.complete();
			},
			hide: function(o) {
				o.tab.css({display:'none'});
				if(o.complete) o.complete();
			}
		},
		fade: {
			show: function(o) {
				if(o.fast) o.speed = 1;
				o.tab.fadeIn(o.speed);
				if(o.complete) setTimeout(o.complete, o.speed);
			},
			hide: function(o) {
				if(o.fast) o.speed = 1;
				o.tab.fadeOut(o.speed);
				if(o.complete) setTimeout(o.complete, o.speed);
			}
		},
		slide: {
			show: function(o) {
				var tabHeight = o.tab.show().css({width:o.tab.width()}).outerHeight(true);
				var tmpWrap = $('<div class="effect-div">').insertBefore(o.tab).append(o.tab);
				tmpWrap.css({width:'100%', overflow:'hidden', position:'relative'}); o.tab.css({marginTop:-tabHeight,display:'block'});
				if(o.fast) o.speed = 1;
				o.tab.animate({marginTop: 0}, {duration: o.speed, complete: function(){
					o.tab.css({marginTop: '', width: ''}).insertBefore(tmpWrap);
					tmpWrap.remove();
					if(o.complete) o.complete();
				}});
			},
			hide: function(o) {
				var tabHeight = o.tab.show().css({width:o.tab.width()}).outerHeight(true);
				var tmpWrap = $('<div class="effect-div">').insertBefore(o.tab).append(o.tab);
				tmpWrap.css({width:'100%', overflow:'hidden', position:'relative'});
				
				if(o.fast) o.speed = 1;
				o.tab.animate({marginTop: -tabHeight}, {duration: o.speed, complete: function(){
					o.tab.css({display:'none', marginTop:'', width:''}).insertBefore(tmpWrap);
					tmpWrap.remove();
					if(o.complete) o.complete();
				}});
			}
		}
	}
}(jQuery));

// custom forms script
var maxVisibleOptions = 20;
var all_selects = false;
var active_select = null;
var selectText = "please select";

function initCustomForms() {
	getElements();
	separateElements();
	//replaceRadios();
	//replaceCheckboxes();
	//replaceSelects();

	// hide drop when scrolling or resizing window
	if (window.addEventListener) {
		window.addEventListener("scroll", hideActiveSelectDrop, false);
		window.addEventListener("resize", hideActiveSelectDrop, false);
	}
	else if (window.attachEvent) {
		window.attachEvent("onscroll", hideActiveSelectDrop);
		window.attachEvent("onresize", hideActiveSelectDrop);
	}
}

function refreshCustomForms() {
	// remove prevously created elements
	if(window.inputs) {
		for(var i = 0; i < checkboxes.length; i++) {
			if(checkboxes[i].checked) {checkboxes[i]._ca.className = "checkboxAreaChecked";}
			else {checkboxes[i]._ca.className = "checkboxArea";}
		}
		for(var i = 0; i < radios.length; i++) {
			if(radios[i].checked) {radios[i]._ra.className = "radioAreaChecked";}
			else {radios[i]._ra.className = "radioArea";}
		}
		for(var i = 0; i < selects.length; i++) {
			var newText = document.createElement('div');
			if (selects[i].options[selects[i].selectedIndex].title.indexOf('image') != -1) {
				newText.innerHTML = '<img src="'+selects[i].options[selects[i].selectedIndex].title+'" alt="" />';
				newText.innerHTML += '<span>'+selects[i].options[selects[i].selectedIndex].text+'</span>';
			} else {
				newText.innerHTML = selects[i].options[selects[i].selectedIndex].text;
			}
			document.getElementById("mySelectText"+i).innerHTML = newText.innerHTML;
		}
	}
}

// getting all the required elements
function getElements() {
	// remove prevously created elements
	if(window.inputs) {
		for(var i = 0; i < inputs.length; i++) {
			inputs[i].className = inputs[i].className.replace('outtaHere','');
			if(inputs[i]._ca) inputs[i]._ca.parentNode.removeChild(inputs[i]._ca);
			else if(inputs[i]._ra) inputs[i]._ra.parentNode.removeChild(inputs[i]._ra);
		}
		for(i = 0; i < selects.length; i++) {
			selects[i].replaced = null;
			selects[i].className = selects[i].className.replace('outtaHere','');
			selects[i]._optionsDiv._parent.parentNode.removeChild(selects[i]._optionsDiv._parent);
			selects[i]._optionsDiv.parentNode.removeChild(selects[i]._optionsDiv);
		}
	}

	// reset state
	inputs = new Array();
	selects = new Array();
	labels = new Array();
	radios = new Array();
	radioLabels = new Array();
	checkboxes = new Array();
	checkboxLabels = new Array();
	for (var nf = 0; nf < document.getElementsByTagName("form").length; nf++) {
		if(document.forms[nf].className.indexOf("default") < 0) {
			for(var nfi = 0; nfi < document.forms[nf].getElementsByTagName("input").length; nfi++) {inputs.push(document.forms[nf].getElementsByTagName("input")[nfi]);}
			for(var nfl = 0; nfl < document.forms[nf].getElementsByTagName("label").length; nfl++) {labels.push(document.forms[nf].getElementsByTagName("label")[nfl]);}
			for(var nfs = 0; nfs < document.forms[nf].getElementsByTagName("select").length; nfs++) {selects.push(document.forms[nf].getElementsByTagName("select")[nfs]);}
		}
	}
}

// separating all the elements in their respective arrays
function separateElements() {
	var r = 0; var c = 0; var t = 0; var rl = 0; var cl = 0; var tl = 0; var b = 0;
	for (var q = 0; q < inputs.length; q++) {
		if(inputs[q].type == "radio") {
			radios[r] = inputs[q]; ++r;
			for(var w = 0; w < labels.length; w++) {
				if((inputs[q].id) && labels[w].htmlFor == inputs[q].id)
				{
					radioLabels[rl] = labels[w];
					++rl;
				}
			}
		}
		if(inputs[q].type == "checkbox") {
			checkboxes[c] = inputs[q]; ++c;
			for(var w = 0; w < labels.length; w++) {
				if((inputs[q].id) && (labels[w].htmlFor == inputs[q].id))
				{
					checkboxLabels[cl] = labels[w];
					++cl;
				}
			}
		}
	}
}

//replacing radio buttons
function replaceRadios() {
	for (var q = 0; q < radios.length; q++) {
		var radioArea = document.createElement("div");
		if(radios[q].className.indexOf('default') != -1) {
			radioArea.style.display = 'none';
		} else {
			radios[q].className += " outtaHere";
		}
		if(radios[q].checked) {
			radioArea.className = "radioAreaChecked";
		}
		else
		{
			radioArea.className = "radioArea";
		}
		radioArea.id = "myRadio" + q;
		radios[q].parentNode.insertBefore(radioArea, radios[q]);
		radios[q]._ra = radioArea;

		radioArea.onclick = new Function('rechangeRadios('+q+')');
		if (radioLabels[q]) {
			if(radios[q].checked) {
				radioLabels[q].className += "radioAreaCheckedLabel";
			}
			radioLabels[q].onclick = new Function('rechangeRadios('+q+');');
			radios[q].onmouseup = new Function('rechangeRadios('+q+');');
		}
	}
	return true;
}

//checking radios
function checkRadios(who) {
	var what = radios[who]._ra;
	for(var q = 0; q < radios.length; q++) {
		if((radios[q]._ra.className == "radioAreaChecked") && (radios[q]._ra.nextSibling.name == radios[who].name))
		{
			radios[q]._ra.className = "radioArea";
		}
	}
	what.className = "radioAreaChecked";
}

//changing radios
function changeRadios(who) {
	if(radios[who].checked) {
		for(var q = 0; q < radios.length; q++) {
			if(radios[q].name == radios[who].name) {
				radios[q].checked = false;
			} 
			radios[who].checked = true; 
			checkRadios(who);
		}
	}
}

//rechanging radios
function rechangeRadios(who) {
	if(!radios[who].checked) {
		for(var q = 0; q < radios.length; q++) {
			if(radios[q].name == radios[who].name) {
				radios[q].checked = false; 
				if(radioLabels[q]) radioLabels[q].className = radioLabels[q].className.replace("radioAreaCheckedLabel","");
			}
		}
		radios[who].checked = true; 
		if(radioLabels[who] && radioLabels[who].className.indexOf("radioAreaCheckedLabel") < 0) {
			radioLabels[who].className += " radioAreaCheckedLabel";
		}
		checkRadios(who);
		
		if(window.$ && window.$.fn) {
			$(radios[who]).trigger('change');
		}
	}
}

//replacing checkboxes
function replaceCheckboxes() {
	for (var q = 0; q < checkboxes.length; q++) {
		var checkboxArea = document.createElement("div");
		if(checkboxes[q].className.indexOf('default') != -1) {
			checkboxArea.style.display = 'none';
		} else {
			checkboxes[q].className += " outtaHere";
		}
		if(checkboxes[q].checked) {
			checkboxArea.className = "checkboxAreaChecked";
			if(checkboxLabels[q]) {
				checkboxLabels[q].className += " checkboxAreaCheckedLabel"
			}
		}
		else {
			checkboxArea.className = "checkboxArea";
		}
		checkboxArea.id = "myCheckbox" + q;
		checkboxes[q].parentNode.insertBefore(checkboxArea, checkboxes[q]);
		checkboxes[q]._ca = checkboxArea;
		checkboxArea.onclick = new Function('rechangeCheckboxes('+q+')');
		if (checkboxLabels[q]) {
			checkboxes[q].onclick = new Function('changeCheckboxes('+q+')');
		}
		checkboxes[q].onkeydown = checkEvent;
	}
	return true;
}

//checking checkboxes
function checkCheckboxes(who, action) {
	var what = checkboxes[who]._ca;
	if(action == true) {
		what.className = "checkboxAreaChecked";
		what.checked = true;
	}
	if(action == false) {
		what.className = "checkboxArea";
		what.checked = false;
	}
	if(checkboxLabels[who]) {
		if(checkboxes[who].checked) {
			if(checkboxLabels[who].className.indexOf("checkboxAreaCheckedLabel") < 0) {
				checkboxLabels[who].className += " checkboxAreaCheckedLabel";
			}
		} else {
			checkboxLabels[who].className = checkboxLabels[who].className.replace("checkboxAreaCheckedLabel", "");
		}
	}
	
}

//changing checkboxes
function changeCheckboxes(who) {
	setTimeout(function(){
		if(checkboxes[who].checked) {
			checkCheckboxes(who, true);
		} else {
			checkCheckboxes(who, false);
		}
	},10);
}

// rechanging checkboxes
function rechangeCheckboxes(who) {
	var tester = false;
	if(checkboxes[who].checked == true) {
		tester = false;
	}
	else {
		tester = true;
	}
	checkboxes[who].checked = tester;
	checkCheckboxes(who, tester);
	if(window.$ && window.$.fn) {
		$(checkboxes[who]).trigger('change');
	}
}

// check event
function checkEvent(e) {
	if (!e) var e = window.event;
	if(e.keyCode == 32) {for (var q = 0; q < checkboxes.length; q++) {if(this == checkboxes[q]) {changeCheckboxes(q);}}} //check if space is pressed
}

// replace selects
function replaceSelects() {
	for(var q = 0; q < selects.length; q++) {
		if (!selects[q].replaced && selects[q].offsetWidth) {
			selects[q]._number = q;
			//create and build div structure
			var selectArea = document.createElement("div");
			var left = document.createElement("span");
			left.className = "left";
			selectArea.appendChild(left);

			var disabled = document.createElement("span");
			disabled.className = "disabled";
			selectArea.appendChild(disabled);

			selects[q]._disabled = disabled;
			var center = document.createElement("span");
			var button = document.createElement("a");
			var text = document.createTextNode(selectText);
			center.id = "mySelectText"+q;

			var stWidth = selects[q].offsetWidth;
			selectArea.style.width = stWidth + "px";
			if (selects[q].parentNode.className.indexOf("type2") != -1){
				button.href = "javascript:showOptions("+q+",true)";
			} else {
				button.href = "javascript:showOptions("+q+",false)";
			}
			button.className = "selectButton";
			selectArea.className = "selectArea";
			selectArea.className += " " + selects[q].className;
			selectArea.id = "sarea"+q;
			center.className = "center";
			center.appendChild(text);
			selectArea.appendChild(center);
			selectArea.appendChild(button);

			//insert select div
			selects[q].parentNode.insertBefore(selectArea, selects[q]);
			//build & place options div

			var optionsDiv = document.createElement("div");
			var optionsList = document.createElement("ul");
			var optionsListHolder = document.createElement("div");
			
			optionsListHolder.className = "select-center";
			optionsListHolder.innerHTML =  "<div class='select-center-right'></div>";
			optionsDiv.innerHTML += "<div class='select-top'><div class='select-top-left'></div><div class='select-top-right'></div></div>";
			
			optionsListHolder.appendChild(optionsList);
			optionsDiv.appendChild(optionsListHolder);
			
			selects[q]._optionsDiv = optionsDiv;
			selects[q]._options = optionsList;

			optionsDiv.style.width = stWidth + "px";
			optionsDiv._parent = selectArea;

			optionsDiv.className = "optionsDivInvisible";
			optionsDiv.id = "optionsDiv"+q;

			if(selects[q].className.length) {
				optionsDiv.className += ' drop-'+selects[q].className;
			}

			populateSelectOptions(selects[q]);
			optionsDiv.innerHTML += "<div class='select-bottom'><div class='select-bottom-left'></div><div class='select-bottom-right'></div></div>";
			document.body.appendChild(optionsDiv);
			selects[q].replaced = true;
			
			// too many options
			if(selects[q].options.length > maxVisibleOptions) {
				optionsDiv.className += ' optionsDivScroll';
			}
			
			//hide the select field
			if(selects[q].className.indexOf('default') != -1) {
				selectArea.style.display = 'none';
			} else {
				selects[q].className += " outtaHere";
			}
		}
	}
	all_selects = true;
}

//collecting select options
function populateSelectOptions(me) {
	me._options.innerHTML = "";
	for(var w = 0; w < me.options.length; w++) {
		var optionHolder = document.createElement('li');
		var optionLink = document.createElement('a');
		var optionTxt;
		if (me.options[w].title.indexOf('image') != -1) {
			optionTxt = document.createElement('img');
			optionSpan = document.createElement('span');
			optionTxt.src = me.options[w].title;
			optionSpan = document.createTextNode(me.options[w].text);
		} else {
			optionTxt = document.createTextNode(me.options[w].text);
		}
		
		// hidden default option
		if(me.options[w].className.indexOf('default') != -1) {
			optionHolder.style.display = 'none'
		}
		
		optionLink.href = "javascript:showOptions("+me._number+"); selectMe('"+me.id+"',"+w+","+me._number+");";
		if (me.options[w].title.indexOf('image') != -1) {
			optionLink.appendChild(optionTxt);
			optionLink.appendChild(optionSpan);
		} else {
			optionLink.appendChild(optionTxt);
		}
		optionHolder.appendChild(optionLink);
		me._options.appendChild(optionHolder);
		//check for pre-selected items
		if(me.options[w].selected) {
			selectMe(me.id,w,me._number,true);
		}
	}
	if (me.disabled) {
		me._disabled.style.display = "block";
	} else {
		me._disabled.style.display = "none";
	}
}

//selecting me
function selectMe(selectFieldId,linkNo,selectNo,quiet) {
	selectField = selects[selectNo];
	for(var k = 0; k < selectField.options.length; k++) {
		if(k==linkNo) {
			selectField.options[k].selected = true;
		}
		else {
			selectField.options[k].selected = false;
		}
	}
	
	//show selected option
	textVar = document.getElementById("mySelectText"+selectNo);
	var newText;
	var optionSpan;
	if (selectField.options[linkNo].title.indexOf('image') != -1) {
		newText = document.createElement('img');
		newText.src = selectField.options[linkNo].title;
		optionSpan = document.createElement('span');
		optionSpan = document.createTextNode(selectField.options[linkNo].text);
	} else {
		newText = document.createTextNode(selectField.options[linkNo].text);
	}
	if (selectField.options[linkNo].title.indexOf('image') != -1) {
		if (textVar.childNodes.length > 1) textVar.removeChild(textVar.childNodes[0]);
		textVar.replaceChild(newText, textVar.childNodes[0]);
		textVar.appendChild(optionSpan);
	} else {
		if (textVar.childNodes.length > 1) textVar.removeChild(textVar.childNodes[0]);
		textVar.replaceChild(newText, textVar.childNodes[0]);
	}
	if (!quiet && all_selects) {
		if(typeof selectField.onchange === 'function') {
			selectField.onchange();
		}
		if(window.$ && window.$.fn) {
			$(selectField).trigger('change');
		}
	}
}

//showing options
function showOptions(g) {
	_elem = document.getElementById("optionsDiv"+g);
	var divArea = document.getElementById("sarea"+g);
	if (active_select && active_select != _elem) {
		active_select.className = active_select.className.replace('optionsDivVisible',' optionsDivInvisible');
		active_select.style.height = "auto";
		hideActiveSelectDrop();
	}
	if(_elem.className.indexOf("optionsDivInvisible") != -1) {
		_elem.style.left = "-9999px";
		_elem.style.width = divArea.offsetWidth + 'px';
		_elem.style.top = findPosY(divArea) + divArea.offsetHeight + 'px';
		_elem.className = _elem.className.replace('optionsDivInvisible','');
		_elem.className += " optionsDivVisible";
		/*if (_elem.offsetHeight > 200) {
			_elem.style.height = "200px";
		}*/
		_elem.style.left = findPosX(divArea) + 'px';
		
		active_select = _elem;
		if(_elem._parent.className.indexOf('selectAreaActive') < 0) {
			_elem._parent.className += ' selectAreaActive';
		}
		
		if(document.documentElement) {
			document.documentElement.onclick = hideSelectOptions;
		} else {
			window.onclick = hideSelectOptions;
		}
	}
	else if(_elem.className.indexOf("optionsDivVisible") != -1) {
		hideActiveSelectDrop();
	}
	
	// for mouseout
	/*_elem.timer = false;
	_elem.onmouseover = function() {
		if (this.timer) clearTimeout(this.timer);
	}
	_elem.onmouseout = function() {
		var _this = this;
		this.timer = setTimeout(function(){
			_this.style.height = "auto";
			_this.className = _this.className.replace('optionsDivVisible','');
			if (_elem.className.indexOf('optionsDivInvisible') == -1)
				_this.className += " optionsDivInvisible";
		},200);
	}*/
}

function hideActiveSelectDrop() {
	if(active_select) {
		active_select.style.height = "auto";
		active_select.className = active_select.className.replace('optionsDivVisible', '');
		active_select.className = active_select.className.replace('optionsDivInvisible', '');
		active_select._parent.className = active_select._parent.className.replace('selectAreaActive','')
		active_select.className += " optionsDivInvisible";
		active_select = false;
	}
}

function hideSelectOptions(e) {
	if(active_select) {
		if(!e) e = window.event;
		var _target = (e.target || e.srcElement);
		if(!isElementBefore(_target,'selectArea') && !isElementBefore(_target,'optionsDiv')) {
			hideActiveSelectDrop();
			if(document.documentElement) {
				document.documentElement.onclick = function(){};
			}
			else {
				window.onclick = null;
			}
		}
	}
}

function isElementBefore(_el,_class) {
	var _parent = _el;
	do {
		_parent = _parent.parentNode;
	}
	while(_parent && _parent.className != null && _parent.className.indexOf(_class) == -1)
	return _parent.className && _parent.className.indexOf(_class) != -1;
}

function findPosY(obj) {
	if (obj.getBoundingClientRect) {
		var scrollTop = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
		var clientTop = document.documentElement.clientTop || document.body.clientTop || 0;
		return Math.round(obj.getBoundingClientRect().top + scrollTop - clientTop);
	} else {
		var posTop = 0;
		while (obj.offsetParent) {posTop += obj.offsetTop; obj = obj.offsetParent;}
		return posTop;
	}
}

function findPosX(obj) {
	if (obj.getBoundingClientRect) {
		var scrollLeft = window.pageXOffset || document.documentElement.scrollLeft || document.body.scrollLeft;
		var clientLeft = document.documentElement.clientLeft || document.body.clientLeft || 0;
		return Math.round(obj.getBoundingClientRect().left + scrollLeft - clientLeft);
	} else {
		var posLeft = 0;
		while (obj.offsetParent) {posLeft += obj.offsetLeft; obj = obj.offsetParent;}
		return posLeft;
	}
}