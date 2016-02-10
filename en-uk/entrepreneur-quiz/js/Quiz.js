function Quiz(amount, thresholds){

	this.amount = amount;
	this.thresholds = thresholds;
	this.questions = [];
	this.questionCount = 1;
	this.questionsCompleted = 0;
	this.score = 0;
	this.quizComplete = false;

}


Quiz.prototype.completedOutput = function(){

	var obj = this.thresholds,
		result;

	if( obj !== null ){

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
}

Quiz.prototype.createEvents = function(){

	var self = this;

	for( var i = 0; i < this.questions.length; i++ ){

		var current = this.questions[i],
			// This represents the questions object in the DOM
			// that holds all of the answers
			$parent = $(current.obj),
			// Answers represents the collection of buttons used to
			// store the answers to the question
			$answers = $parent.children('.button');

		$parent.attr('data-question', current.question);

		$answers.on('click', function(){

			var $this = $(this),
				question = $this.parent('.answer').data('question'),
				$answer = $this.data('answer');


			$this.siblings().removeClass('selected');
			$this.addClass('selected');

			// Add class of answered to keep track of current question
			$this.closest('.answer').addClass('answered');
			self.markAnswer($answer, question);

			// check the quiz object to see if this has been completed
			self.checkCompleted();


		});-
	}
}

Quiz.prototype.markAnswer = function(answer, question){

	for( var i = 0; i < this.questions.length; i++ ){

		var current = this.questions[i];

		if( current.question === question ){

			if( (!current.answered && !current.answeredCorrectly) && (answer === current.correctAnswer) ){

				this.increaseScore();
				current.answeredCorrectly = true;

			}else if( (current.answered && !current.answeredCorrectly) && (answer === current.correctAnswer) ){

				this.increaseScore();
				current.answeredCorrectly = true;
			
			}else if( (current.answered && current.answeredCorrectly) && (answer !== current.correctAnswer) ){

				this.decreaseScore();
				current.answeredCorrectly = false;
			}

			current.answered = true;
			this.questionsCompleted += 1;
		}
	}
}

Quiz.prototype.createQuestion = function(obj, correctAnswer){

	var question = {
		obj: obj,
		correctAnswer: correctAnswer,
		answered: false,
		answeredCorrectly: false,
		question: this.questionCount
	};

	this.questions.push(question);
	this.questionCount += 1;
}

Quiz.prototype.checkCompleted = function(){

	if( $('.answer.answered').length === this.amount){

		this.quizComplete = true;

	}

}


Quiz.prototype.increaseScore = function(){

	this.score += 1;
}

Quiz.prototype.decreaseScore = function(){

	this.score -=1;
}

Quiz.prototype.init = function(){

	this.createEvents();

}