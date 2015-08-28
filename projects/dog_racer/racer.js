$(document).ready(function() {
  var playerA = {
    name: '#playerA',
    id: "Player A",
    posX: 0
  }, playerB = {
    name: '#playerB',
    id: "Player B",
    posX: 0
  }

   $('#begin').on('click', function() {
    $(this).hide();
    $('.instructions').hide();
     $(playerA.name).css('margin-left',"0")
     $(playerB.name).css('margin-left',"0")

    $(document).on('keyup', function(event) {
      if(event.keyCode == 81) {
        if(playerA.posX < 100) {
          updatePosition(playerA);
        }
        else {
          displayWinner(playerA);
          $(document).unbind('keyup');
          }
        }
        if(event.keyCode == 80) {
          if(playerB.posX < 100) {
            updatePosition(playerB);
          }
          else {
            displayWinner(playerB);
            $(document).unbind('keyup');
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
  var winner = player.id;
  $('#result').append(document.createTextNode(winner + " won! Yay!"));
  $('#result').css( "color", "white" );
}