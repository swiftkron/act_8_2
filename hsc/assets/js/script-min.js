function initVideo(){var e=$("#main_video_player")[0],i=$f(e);$("#launch_video").click(function(){$("header").hide(),$("#main_video").css("z-index",3),$("#main_video").show(),i.api("play")}),$(".close_player").click(function(){$(".video_holder").css("z-index",-1),$('iframe[src*="vimeo.com"]').each(function(){$f(this).api("unload")}),$("header").show()})}function targetSection(){$(".arrow_down").click(function(){$("html, body").animate({scrollTop:$("#Features").offset().top},500)}),$("#view").click(function(){$("html, body").animate({scrollTop:$("#panel_03").offset().top},500)})}function resizeSections(){var e=$(window).height();$(".section").each(function(){$(this).css("min-height",e)})}function checkWidth(){var e=$(window).width();503>=e||680>=e||856>=e||1032>=e||e>=1032&&(resizeSections(),targetSection())}function stickyNav(){var e=$("#header-banner").outerHeight(),i=$(window).scrollTop();i>e?($("#header-nav").css("position","fixed"),$("#header-nav").css("top",0)):$("#header-nav").css("position","relative");var t=$("#menu").outerHeight(),a=$(window).height();t>a&&($("#header-nav").css("max-height",a),$("#header-nav").css("overflow","scroll"))}function modernizrChecks(){Modernizr.input.placeholder||($("[placeholder]").focus(function(){var e=$(this);e.val()===e.attr("placeholder")&&(e.val(""),e.removeClass("placeholder"))}).blur(function(){var e=$(this);(""===e.val()||e.val()===e.attr("placeholder"))&&(e.addClass("placeholder"),e.val(e.attr("placeholder")))}).blur(),$("[placeholder]").parents("form").submit(function(){$(this).find("[placeholder]").each(function(){var e=$(this);e.val()===e.attr("placeholder")&&e.val("")})}))}function equalHeight(e,i){if($(window).width()>=i){$(e).css("min-height",0);var t=0;$(e).each(function(){var e=$(this).outerHeight();e>t&&(t=e)}),$(e).css("min-height",t)}else $(e).css("min-height",0)}$(document).ready(function(){$("body").addClass("js");var e=$("#menu"),i=$(".menu-link");i.click(function(){return i.toggleClass("active"),e.toggleClass("active"),!1}),$("#close_nav").click(function(){e.removeClass("active")}),$("#main-nav a").click(function(){return $("html, body").animate({scrollTop:$($.attr(this,"href")).offset().top},500),!1}),checkWidth(),initVideo(),equalHeight(".equal_gb_feat",856),equalHeight(".equal_gb_more",856)}),$(window).load(function(){stickyNav()}),$(window).resize(function(){stickyNav(),equalHeight(".equal_gb_feat",856),equalHeight(".equal_gb_more",856)}),$(window).resize(function(){checkWidth()},250);