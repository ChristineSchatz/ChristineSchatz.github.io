/*

   Functions list:
   beginQuiz()
   checkQuiz()
   clearForm()
   scoreQuiz()

*/


window.onload = beginQuiz;

function beginQuiz()  {

document.forms[0].onsubmit = checkQuiz;
document.forms[0].onreset = clearForm;
}

function checkQuiz(){
    var checker = false;
	for(var i=0; i < document.forms[0].question1.length; i++) {
	  if (document.forms[0].question1[i].checked) {
	     checker = true;
	      ans1 = i;
		  }
		  }
	  if(checker == false) {alert("Please select all answers before submitting");
	    return false;}


	  var checker = false;
	  for(var i=0; i < document.forms[0].question2.length; i++) {
	  if (document.forms[0].question2[i].checked){
	     checker = true;
		 ans2 = i;
		 }
		 }
	  if(checker == false) {alert("Please select all answers before submitting");
	     return false;}



	  var checker = false;
	 for(var i=0; i < document.forms[0].question3.length; i++) {
	  if (document.forms[0].question3[i].checked) {
	     checker = true;
	     ans3 = i;
		 }
		 }
	  if(checker == false) {alert("Please select all answers before submitting");
	     return false;}


	  var checker = false;
	 for(var i=0; i < document.forms[0].question4.length; i++) {
	  if (document.forms[0].question4[i].checked) {
	     checker = true;
		 ans4 = i;
		 }
		 }
	  if(checker == false){alert("Please select all answers before submitting");
	     return false;}



	  var checker = false;
	 for(var i=0; i < document.forms[0].question5.length; i++) {
	  if (document.forms[0].question5[i].checked){
	      checker = true;
		  ans5 = i;
		  }
		  }
	  if(checker == false) {alert("Please select all answers before submitting");
	     return false;}


	  // if(document.forms[0].name.value.length == 0)
	  //    {alert("Please enter your full name");
	  //     return false;}


	 //document.forms[0].score.value = scoreQuiz(ans1,ans2,ans3,ans4,ans5);
	 document.getElementById("score").value = scoreQuiz(ans1,ans2,ans3,ans4,ans5);
	 return true;
	}



function clearForm() {
return confirm('Are you sure you want to reset the form?')
}


function scoreQuiz(a,b,c,d,e) {
    var score=0;
	if(document.forms[0].question1[a].value == document.forms[0].answer1.value) score++;
	if(document.forms[0].question2[b].value == document.forms[0].answer2.value) score++;
	if(document.forms[0].question3[c].value == document.forms[0].answer3.value) score++;
	if(document.forms[0].question4[d].value == document.forms[0].answer4.value) score++;
	if(document.forms[0].question5[e].value == document.forms[0].answer5.value) score++;


	alert(score + " " + "out of 5")

	}

