$(document).ready(function() {
  if (window.innerWidth < 640) {
    removeByline();
  }
});



$(window).resize(function() {
    if (window.innerWidth < 640) {
      removeByline();
    } else {
      restoreByline();
    }
});


const removeByline = function() {
    $('#logo-byline').text( "" );
};

const restoreByline = function() {
    $('#logo-byline').text( "visual code generator" );
};
