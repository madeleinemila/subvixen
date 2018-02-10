// for mobile devices when small screen size = code is below stage and preview
// instead of beside

$(document).ready(function() {
  $('#jump-to-code').on('click', function() {
    smoothScroll( $('#code-heading') );
  })
});

const smoothScroll = function( target ) {
  $('html, body').animate( { scrollTop: target.offset().top }, 400 );
};
