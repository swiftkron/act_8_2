"use strict";

$(document).ready(function(){
    var q1 = $('#question-1'),
        q2 = $('#question-2'),
        q3 = $('#question-3'),
        q4 = $('#question-4'),
        q5 = $('#question-5'),
        hero = $('.hero'),
        quote = $('.testimonial .quote'),
        image = $('.testimonialInner img'),
        byline = $('.byline');
    

    q1.show();
    
    $('#question-1 .next').on('click', function(e){
        e.preventDefault();
        if (!$('#question1').val()) {
            $('#question-1 .help-block').html('Please fill out this field.');
            $('#question-1 .form-control').css('border-color', '#a94442');
        } else {
            
            q1.hide();
            hero.css({
                'background': 'url("/img/drafting.jpg") no-repeat 0 70%',
                'backgroundSize' : 'cover'
            });
            q2.fadeIn();
            image.attr('src','/img/testimonials/m-5.png');
            quote.html("Act! puts customer information at our fingertips, letting us know who we&rsquo;re supposed to call and when, and keeps track of all of our conversations, and customer history, which for us, is huge.");
            byline.html('Greg S.');
        
        }
    });
    
    
    //QUESTION 2 BUTTONS

    $('#question-2 .next').on('click', function(e){
        e.preventDefault();
        if (!$('#question2').val()) {
            $('#question-2 .help-block').html('Please fill out this field.');
            $('#question-2 .form-control').css('border-color', '#a94442');
            
        } else {
            
            q2.hide();
            hero.css({
                'background': 'url("/img/volunteers.jpg") no-repeat 0 30%',
                'backgroundSize' : 'cover'
            });
            q3.fadeIn();
            image.attr('src','/img/testimonials/m-2.png');
            quote.html("It wouldn’t be a stretch to say that 50 percent of this company’s success is attributable to Act! Premium. It’s that important and valuable to us.");
            byline.html('Chuck M.');
        }
        
        
    });
    
    $('#question-2 .back').on('click', function(e){
        e.preventDefault();
        q2.hide();
        hero.css({
            'background': 'url("/img/drafting.jpg") no-repeat 0 70%',
            'backgroundSize' : 'cover'
        });
        q1.fadeIn();
        $('#question-1 .help-block').hide();
        $('#question-1 .form-control').css('border-color', '#ccc');
        image.attr('src','/img/testimonials/m-4.png');
        quote.html("Act! allows me to be mobile so I always have current information, whether I&rsquo;m still at home or whether I&rsquo;m on the road. It helps us have our Act! together - no pun intended!");
        byline.html('Kevin K.');

    });
    
    
    //QUESTION 3 BUTTONS
    
    $('#question-3 .next').on('click', function(e){
        e.preventDefault();
        if (!$('#question3').val()) {
            $('#question-3 .help-block').html('Please fill out this field.');
            $('#question-3 .form-control').css('border-color', '#a94442');
            
        } else {
            q3.hide();
            hero.css({
                'background': 'url("/img/wine_bar.jpg") no-repeat 0 35%',
                'backgroundSize' : 'cover'
            });
            q4.fadeIn();
            image.attr('src','/img/testimonials/m-6.png');
            quote.html("With the automated reports that Act! offers us, I’m saving comfortably an hour a week of my own time, which represents approximately 5 hours a month of time saved.");
            byline.html('Dan M.');
        }
        
    });
    
    $('#question-3 .back').on('click', function(e){
        e.preventDefault();
        q3.hide();
        hero.css({
            'background': 'url("/img/drafting.jpg") no-repeat 0 70%',
            'backgroundSize' : 'cover'
        });
        q2.fadeIn();
        $('#question-2 .help-block').hide();
        $('#question-2 .form-control').css('border-color', '#ccc');
        image.attr('src','/img/testimonials/m-5.png');
        quote.html("Act! puts customer information at our fingertips, letting us know who we&rsquo;re supposed to call and when, and keeps track of all of our conversations, and customer history, which for us, is huge.");
        byline.html('Greg S.');

    });
    
    
    //QUESTION 4 BUTTONS
    
    $('#question-4 .next').on('click', function(e){
        e.preventDefault();
        if (!$('#question4').val()) {
            $('#question-4 .help-block').html('Please fill out this field.');
            $('#question-4 .form-control').css('border-color', '#a94442');
            
        } else {
            q4.hide();
            hero.css({
                'background': 'url("/img/wood_desk.jpg") no-repeat 0 30%',
                'backgroundSize' : 'cover'
            });
            q5.fadeIn();
            image.attr('src','/img/testimonials/m-3.png');
            quote.html("I couldn&rsquo;t run my small business without Act! Essentials. It&rsquo;s easy to use, quick to set up, and I love having all my contact information at my fingertips.");
            byline.html('David B.');
        }
        
    });

    $('#question-4 .back').on('click', function(e){
        e.preventDefault();
        q4.hide();
        hero.css({
            'background': 'url("/img/volunteers.jpg") no-repeat 0 35%',
            'backgroundSize' : 'cover'
        });
        q3.fadeIn();
        $('#question-3 .help-block').hide();
        $('#question-3 .form-control').css('border-color', '#ccc');
        image.attr('src','/img/testimonials/m-2.png');
        quote.html("It wouldn’t be a stretch to say that 50 percent of this company’s success is attributable to Act! Premium. It’s that important and valuable to us.");
        byline.html('Chuck M.');
        
    });

    //QUESTION 5 
    
    $('#question-5 .back').on('click', function(e){
        e.preventDefault();
        q5.hide();
        hero.css({
            'background': 'url("/img/wine_bar.jpg") no-repeat 0 35%',
            'backgroundSize' : 'cover'
        });
        q4.fadeIn();
        $('#question-4 .help-block').hide();
        $('#question-4 .form-control').css('border-color', '#ccc');
        image.attr('src','/img/testimonials/m-6.png');
        quote.html("With the automated reports that Act! offers us, I’m saving comfortably an hour a week of my own time, which represents approximately 5 hours a month of time saved.");
        byline.html('Dan M.');
    });
    
    
    
    

});  //end ready