// Get URL Parameters
function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
    results = regex.exec(location.search);
    return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

// Define UTM Variables
var utm_source = getParameterByName('utm_source');
var utm_medium = getParameterByName('utm_medium');
var utm_content = getParameterByName('utm_content');
var utm_campaign = getParameterByName('utm_campaign');
var utm_name = getParameterByName('utm_name');
var utm_term = getParameterByName('utm_term');
// Preload UTM Data for Elq Forms
$(document).ready(function () {
    $('input[name="utm_source"]').attr('value', utm_source);
    $('input[name="utm_medium"]').attr('value', utm_medium);
    $('input[name="utm_content"]').attr('value', utm_content);
    $('input[name="utm_campaign"]').attr('value', utm_campaign);
    $('input[name="utm_name"]').attr('value', utm_name);
    $('input[name="utm_term"]').attr('value', utm_term);
});

$(document).ready(function () {
    // Common vars 
    var width = $(window).width();
    // Custom Functions
    $(document).click(function () {
        $('.uDropdown').hide();
    });
    $('.navLink').click(function (event) {
        event.stopPropagation();
        location.href = "/";
    });
    $('#au-nav .navLink').click(function (event) {
        event.stopPropagation();
        location.href = "/au";
    });
    $('#uk-nav .navLink').click(function (event) {
        event.stopPropagation();
        location.href = "/en-gb";
    });
    $('.uIntl').click(function (event) {
        event.stopPropagation();
        $('.lang').slideToggle(400);
    });
    $('.navToggle').click(function (event) {
        event.stopPropagation();
        $('nav').slideToggle(400);
        $('.uAlt').hide();
    });
    $('.uToggle').click(function (event) {
        event.stopPropagation();
        $('.uAlt').slideToggle(400);
    });

    // Modal Window
    $('.modalClose').click(function () {
        $('.modal').css('opacity', '0');
        $('.modal').css('pointer-events', 'none');
    });

    // Flip Tiles
    $('.tile').hover(function () {
        $(this).addClass('flip');
    }, function () {
        $(this).removeClass('flip');
    });

    // Chat
    $('#open_chatModal').click(function () {
        $('#chatModal').css('opacity', '1');
        $('#chatModal').css('pointer-events', 'auto');
    });

    // Pricing
    // define partner attribution Variables
    var srid = getParameterByName('srid');
    var ror = getParameterByName('ror');
    /* toggle product displays */
    $('#toggleCloud').click(function(){
        $('.cloudOnly').css('display','none');
        $('.notCloud').css('display', 'block');
        location.hash = "apH2";
    });
    $('#togglePrem').click(function () {
        $('.cloudOnly').css('display', 'block');
        $('.notCloud').css('display', 'none');
        location.hash = "apcH2";
    });

    /* toggle product displays */
    $('#togglePrem2').click(function () {
        $('.prem').css('display', 'block');
        $('.premCloud').css('display', 'none');
        $('.pro').css('display', 'none');
        $('#togglePrem2').addClass('active');
        $('#toggleCloud2').removeClass('active');
        $('#togglePro').removeClass('active');
        //location.hash = "apH2";
    });
    $('#toggleCloud2').click(function () {
        $('.premCloud').css('display', 'block');
        $('.prem').css('display', 'none');
        $('.pro').css('display', 'none');
        $('#togglePrem2').removeClass('active');
        $('#toggleCloud2').addClass('active');
        $('#togglePro').removeClass('active');
        //location.hash = "apcH2";
    });
    $('#togglePro').click(function () {
        $('.premCloud').css('display', 'none');
        $('.prem').css('display', 'none');
        $('.pro').css('display', 'block');
        $('#togglePrem2').removeClass('active');
        $('#toggleCloud2').removeClass('active');
        $('#togglePro').addClass('active');
        //location.hash = "aproH2";
    });

    /* change pricing term and destination */
    //cloud
    $('#cloudBuy').attr('href', 'https://buy.act.com/en-us/purchase/product/ActPremiumCloud/plan/Annual?srid=' + srid + '&ror=' + ror + '');
    $('#cloudFreq').change(function () {
        var cloudVal = $('#cloudFreq').val();
        if (cloudVal == "monthly"){
            $('#cloudPrice').html('<span class="usd">$</span>42');
            $('#cloudBuy').attr('href', 'https://buy.act.com/en-us/purchase/product/ActPremiumCloud/plan/Month?srid=' + srid + '&ror=' + ror + '');
        }
        else {
            $('#cloudPrice').html('<span class="usd">$</span>35');
            $('#cloudBuy').attr('href', 'https://buy.act.com/en-us/purchase/product/ActPremiumCloud/plan/Annual?srid=' + srid + '&ror=' + ror + '');
        }
    });
    //prem
    $('#premBuy').attr('href', 'https://buy.act.com/en-us/purchase/product/ActPremium/plan/Month?srid=' + srid + '&ror=' + ror + '');
    $('#premFreq').change(function () {
        var premVal = $('#premFreq').val();
        if (premVal == "annual") {
            $('#premPrice').html('<span class="usd">$</span>250');
            $('#premPriceU').html('<span class="usd">$</span>190');
            $('#premTerm').html('USD/user');
            $('#premBuy').attr('href', 'https://buy.act.com/en-us/purchase/product/ActPremium/plan/Annual?srid=' + srid + '&ror=' + ror + '');
        }
        else if (premVal == "license") {
            $('#premPrice').html('<span class="usd">$</span>500');
            $('#premPriceU').html('<span class="usd">$</span>380');
            $('#premTerm').html('USD/user');
            $('#premBuy').attr('href', 'https://buy.act.com/en-us/purchase/product/ActPremium/plan/Annual?per=true&srid=' + srid + '&ror=' + ror + '');
        }
        else {
            $('#premPrice').html('<span class="usd">$</span>25');
            $('#premTerm').html('USD/user/month');
            $('#premBuy').attr('href', 'https://buy.act.com/en-us/purchase/product/ActPremium/plan/Month?srid=' + srid + '&ror=' + ror + '');
        }
    });
    // KM tracking on buy click
    $('#cloudBuy').click(function () {
        var term = $('#cloudFreq').val();
        _kmq.push(["record", "buyClick", [term]]);
    });
    $('#premBuy').click(function () {
        var term = $('#premFreq').val();
        _kmq.push(["record", "buyClick", [term]]);
    });

    // KM tracking blue CTA
    $('.pageBottomTrialCTA').click(function () {
        _kmq.push(["record", "Initiated Trial", ["Page Bottom CTA Blue"]]);
    });
    
    // Submit forms to 3rd Party
    $('#form1').removeAttr('runat');
    $('#form1').removeAttr('action');
    $('#form1').removeAttr('method');
    // enewsletter (footer)
    $('#enews_button').click(function () {
        $('input[name=elqFormName]').attr('value', 'emailsubscribehome')
        $('input[name=LeadSource]').attr('value', 'LCRMAA0001WQ')
        $('#form1').attr('action', 'https://s1966950654.t.eloqua.com/e/f2');
        $('#form1').attr('method', 'post');
        $('#form1').submit();
    })
    // partner application
    $('#acc_apply_button').click(function () {
        $('input[name=elqFormName]').attr('value', 'ACCSelect')
        $('input[name=LeadSource]').attr('value', 'LCRMAA0001X3')
        $('#form1').attr('action', 'https://s1966950654.t.eloqua.com/e/f2');
        $('#form1').attr('method', 'post');
        $('#form1').submit();
    })
});


