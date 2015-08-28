$(document).ready(function() {
  var playerA = {
    name: '#playerA',
    posX: 0
  }, playerB = {
    name: '#playerB',
    posX: 0
  }

   $('#begin').on('click',function() {
    $(this).hide();
     // move1 = 0;
     // move2 = 0;
     $(playerA.name).css('margin-left',"0")
     $(playerB.name).css('margin-left',"0")

    $(document).on('keyup', function(event) {
      if(event.keyCode == 74) {
        if(playerA.posX < 100) {
          // move1 += 2;
          updatePosition(playerA)
        }
          // $('#playerA').css('margin-left',move1 + "%") }
          else {
            alert ("Game over!, Player B wins!");
            $(document).unbind('keyup')
          }
        }
        if(event.keyCode == 75) {
          if(playerB.posX < 100) {
            updatePosition(playerB)
          }
            // move2 += 2;
            // $('#playerB').css('margin-left', move2 + "%")}
            else {
              alert("Game over, Player B wins!");
              $(document).unbind('keyup')
            }
          }

        })
      });
    });


var updatePosition = function(player) {
  player.posX += 2;
  $(player.name).css('margin-left',player.posX + "%")
}

function displayWinner() {

}