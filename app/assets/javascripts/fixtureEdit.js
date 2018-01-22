$(document).ready(function() {

  $('body').on('change', '.f-param', function() {
      // get fixture index from parent <p>
      const id = $(this).parent().attr('id').slice(2);
      // get which property this input relates to
      const prop = $(this).data('prop');
      // cache value
      let value = +( $(this).val() );
      // change property's value in fixture obj
      switch (prop) {
        case 'pos':
          fixtures[id].posNum = value; // no validations added here, letting user determine own numbering system
          break;
        case 'x':
          if (value < 0) {
            value = 0;
            fixtures[id].x = value;
            $(this).val( value );
          } else if (value >= vw) {
            value = vw - 1;
            fixtures[id].x = value;
            $(this).val( value );
          } else {
            fixtures[id].x = value;
          }
          break;
        case 'y':
          if (value < 0) {
            value = 0;
            fixtures[id].y = value;
            $(this).val( value );
          } else if (value >= vh) {
            value = vh - 1;
            fixtures[id].y = value;
            $(this).val( value );
          } else {
            fixtures[id].y = value;
          }
          break;
        default:
          console.log( `Invalid property data` );
      }
      drawFixtures();
      simCtx.clearRect(0, 0, vw, vh); // TODO this repeats, could refactor
      drawSim();
  });


}); // end doc ready
