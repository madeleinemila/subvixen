$(document).ready(function() {

  $('body').on('change', '.f-param', function() {
      // get fixture index from parent <p>
      const id = $(this).parent().attr('id').slice(2);
      // get which property this input relates to
      const prop = $(this).data('prop');
      // cache value
      const value = $(this).val();
      // change property's value in fixture obj
      switch (prop) {
        case 'pos':
          fixtures[id].posNum = value;
          break;
        case 'x':
          fixtures[id].x = value;
          break;
        case 'y':
          fixtures[id].y = value;
          break;
        default:
          console.log( `Invalid property data` );
      }
      drawFixtures();
      simCtx.clearRect(0, 0, vw, vh); // TODO this repeats, could refactor
      drawSim();
  });


}); // end doc ready
