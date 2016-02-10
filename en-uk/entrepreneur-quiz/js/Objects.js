function Quiz(thresholds, questionTotal){

	this.score = 0;
	this.currentQuestion = 1;
	this.questionTotal = questionTotal;
	this.thresholds = thresholds;
	this.quizComplete = false;
}

Quiz.prototype.displayResult = function(){

	var obj = this.thresholds,
		result;

	for(var key in obj ){

		// Check to see if threshold is display as "3-5" or "3"
		if( key.indexOf("-") > -1 ){

			var range = key.split('-');

			if( this.score >= range[0] && this.score <= range[1] ){

				var score = this.score;

				result = {
					score: score,
					description: obj[key]
				};

				return result;
				
			}
		
		}else{

			if( this.score == key ){

				var score = this.score;

				result = {
					score: score,
					description: obj[key]
				};


				return result;
			}
		}
	}
}

Quiz.prototype.increaseScore = function(){

	this.score += 1;

	//console.log( 'score: ' + this.score);
}

Quiz.prototype.decreaseScore = function(){

	this.score -=1;

	//console.log( 'score: ' + this.score);
}

Quiz.prototype.checkCompleted = function(){

	if(this.currentQuestion === this.questionTotal){

		this.quizComplete = true;
		//console.log('completed');
	}
}






function Question(questionObj, correctAnswer){

	this.questionObj = questionObj;
	this.correctAnswer = correctAnswer;
	this.answeredCorrectly = false;
	this.questionAnswered = false;

}

Question.prototype.flagAnswer = function(quizObj){

	var self = this;
		$parent = $(self.questionObj),
		$answers = $parent.children('.button');

	$answers.each(function(){

		// $this represents each answer button
		var $this = $(this);

		$this.on('click', function(){

			var $answer = $this.data('answer');

			$this.siblings().removeClass('selected');
			$this.addClass('selected');

			// Add class of answered to keep track of current question
			$this.closest('.answer').addClass('answered');
			self.markAnswer($answer, quizObj);

			// check the quiz object to see if this has been completed
			quizObj.checkCompleted();

		});

	});

}

Question.prototype.markAnswer = function(selection, quizObj){

	if( (!this.questionAnswered && !this.answeredCorrectly) && (selection === this.correctAnswer) ){

		quizObj.increaseScore();
		this.answeredCorrectly = true;

	}else if( (this.questionAnswered && !this.answeredCorrectly) && (selection === this.correctAnswer) ){

		quizObj.increaseScore();
		this.answeredCorrectly = true;
	
	}else if( (this.questionAnswered && this.answeredCorrectly) && (selection !== this.correctAnswer) ){

		quizObj.decreaseScore();
		this.answeredCorrectly = false;
	}

	this.questionAnswered = true;

	quizObj.currentQuestion = $('.answer.answered').length;
}

Question.prototype.init = function(quizObj){

	this.flagAnswer(quizObj);

}