$(document).ready(function() {

    // The total score
    var total =         0,
        $gridCell =     $('.question-grid__cell'),
        $mail =         $('.email'),
        $twitter = $('.twitter'),
        link = "http://act.com/en-uk/entrepreneur-quiz",
        result;


    $gridCell.on('click', function() {

        if ($('.question-grid__cell.selected').length == 10) {

            total = 0;

            $('.section--social').show();

            $('.section--reminder').hide();

            $('.question-grid__cell.selected').each(function() {

                var $this = $(this);

                total += $this.data('answer');



            });

            console.log(total);


            if(total >= 10 && total <=18) {

                $('.grid--solo').show();

                result = "a Solo Entrepreneur";

                console.log(result);

            }

            if (total >= 19 && total <= 26 ) {

                $('.grid--creative').show();

                result = "a Creative Entrepreneur";

                console.log(result);

            }

            if (total >= 27 && total <= 34) {
                 $('.grid--serial-entrepreneur').show();

                result = "a Serial Entrepreneur";

                console.log(result);

            }

            if (total >= 35 && total <= 42) {

                $('.grid--innovator').show();

                result = "An Innovator";

                console.log(result);

            }

            if (total >= 43 && total <= 50) {

                $('.grid--techrepreneur').show();

                result = "a Techrepreneur";

                console.log(result);

            }

            if (total >= 51 && total <=60) {

                $('.grid--world-changer').show();

                result = "a World Changer";

                console.log(result);

            }

        }

        $mail.attr('href', "mailto:?subject=What type of Entrepreneur are you?&body=I am " + result  +  " - Take the quiz Entrepreneur Quiz by Act!. http://bit.ly/1TT4Opo");

        $.ajax({
        url: "http://api.bit.ly/v3/shorten",
        data: {
            longUrl: link,
            apiKey: 'R_ee06e5bc5e7c4a72a902432d31996b36',
            login: 'mediaworkstech'
        },
        dataType: "jsonp",
        success: function(data) {
    
            $twitter.attr('href', "https://twitter.com/intent/tweet?url=" + data.data.url + "&text=I am " + result + '. Take the quiz Entrepreneur Quiz by Act!.');
        }
    });

    });

        $('.facebook').on('click', function(){

        FB.ui({
            method: 'share',
            href:  'http://act.com/en-uk/entrepreneur-quiz/fb.php?result=' + result + '&date=' + $.now(),
            title: 'What type of entrepreneur are you?',
            name: 'What type of entrepreneur are you?',
            description: 'I am ' + result,
            picture: 'http://act.com/en-uk/entrepreneur-quiz/img/section/section--intro/facebook-logo.jpg',
        }, function (response) { });
    });

});
