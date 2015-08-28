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
     $(playerA.name).css('margin-left',"0")
     $(playerB.name).css('margin-left',"0")

    $(document).on('keyup', function(event) {
      if(event.keyCode == 74) {
        if(playerA.posX < 100) {
          updatePosition(playerA)
        }
        else {
          // alert ("Game over!, Player B wins!");
          $(document).unbind('keyup')
          }
        }
        if(event.keyCode == 75) {
          if(playerB.posX < 100) {
            updatePosition(playerB)
          }
          else {
            // alert("Game over, Player B wins!");
            $(document).unbind('keyup')
            }
          }
        })
      });
    });


var updatePosition = function(player) {
  player.posX += 2;
  $(player.name).css('margin-left', player.posX + "%")
}

function displayWinner(player) {
  $('#result').css('text') // player.name has won!
}