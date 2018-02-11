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
    if (window.innerWidth > 720) { // if stage and main are side-by-side
      $('#jump-to-code').css({ 'display': 'none' });
    }
});


const removeByline = function() {
    $('#logo-byline').text( "" );
};

const restoreByline = function() {
    $('#logo-byline').text( "visual code generator" );
};
