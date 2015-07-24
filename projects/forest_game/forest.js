$(document).ready(function() {
  var move1 = 0;
  var move2 = 0;

   $('#begin').on('click',function() {
    $(this).hide();
     move1 = 0;
     move2 = 0;
     $('.deer').css('margin-left',"0")


    $('#track1').on('click', $('.deer'), function(event) {
      $(this).hide();
    })



    // $(document).on('keyup', function(event) {
    //   if(event.keyCode == 74) {
    //     if(move1 < 100) {
    //       move1 += 2;
    //       $('#playerA').css('margin-left',move1 + "%") }
    //       else {
    //         alert ("Game over!, Player B wins!");
    //         $(document).unbind('keyup')
    //       }
    //     }
    //     if(event.keyCode == 75) {
    //       if(move2 < 100) {
    //         move2 += 2;
    //         $('#playerB').css('margin-left', move2 + "%")}
    //         else {
    //           alert("Game over, Player B wins!");
    //           $(document).unbind('keyup')
    //         }
    //       }

    //     })
      })
    })
