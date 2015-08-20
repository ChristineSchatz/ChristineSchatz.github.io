var score = 0;

$(document).ready(function() {
   $('#begin').on('click',function() {
    $(this).hide();

    $(window).click(function(event) {
      $(event.target).toggle("explode");
      event.stopPropagation();
    });

});

// function deerShow() {

//      $('.deer').each(function() {
//         var $deer = $(this);
//         var min = 6000, max = 13000;
//         var delay = Math.floor(Math.random() * (max-min) + min);
//         setTimeout(function() {
//           $deer.animate({
//             'background-position-x': '0',
//             'background-position-y': '0'
//           }, 300, function() {
//             $deer.addClass('clickable');
//             deerHide();
//           });
//         }, delay);
//      });
// }

// function deerHide() {
//   $('.deer').each(function() {
//     var $deer = $(this);
//         var min = 4000, max = 6000;
//         var delay = Math.floor(Math.random() * (max - min) + min);
//         setTimeout(function(){
//             $deer.removeClass('clickable');
//             $deer.animate({
//                 'background-position-x': '0',
//                 'background-position-y': '40px'
//             }, 300, function() {
//                 deerShow();
//             });

//         },  delay);
//     });

// deerShow();
// $('.deer').on('click', '.clickable', function() {


});
