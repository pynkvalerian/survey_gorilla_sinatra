// $(document).ready(function() {
	
// 	var questionNum = 0;

// 	$("#addQues").on('click', function(){
// 		questionNum ++;
// 		$("#question").append(
// 			'<div id="question'+questionNum+'">
//       		<label for="ques'+questionNum+'">Question '+questionNum+': </label>
//       		<input type="text" name="ques'+questionNum+'">
//       		<span class="removeQues" type="button" class="btn btn-default">Remove question</span> 
//     		</div>'
// 		);
// 	});

// 	$("#removeQues").on('click', function(){
// 		$(this).parent().remove();
// 	});
	




// });

$(document).ready(function() {
  // var questionNum = 0;
  $('.add_choice').unbind("sum")

  $(".add_question").click(function(){
    // questionNum ++;
    var questionNum = $("#questions").children().length +1
    $("#questions").append(
      '<div id="question_'+ questionNum +'">\
          Question title: <input type="text" name="question' + questionNum + '"></input>\
          <br/>\
          <div id="question_'+ questionNum +'_choices"></div>\
          <button type="button" class="add_choice" value="'+ questionNum +'">Add Choice</button>\
        </div>\
      ');
  })


 //  $('.removeQues').on('click', function(){
	// $(this).parents('div').remove();
 //  });

  $(document).on("click", ".add_choice", function() {
    var questionNumber = $(this).val();
    var nextChoiceNumber = $(this).parent().children("#question_" + questionNumber + "_choices").children("input").length + 1;
    $("#question_" + questionNumber + "_choices").append(
      'Choice: <input type="text" name="question'+ questionNumber+'_choice'+ nextChoiceNumber+'"></input>'
      );
    $("#question_" + questionNumber + "_choices").append("<br/>");
    nextChoiceNumber ++;
  });
});