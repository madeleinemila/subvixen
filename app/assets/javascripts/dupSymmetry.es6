const dup = {
  dupH: false,
  dupHCounter: 0,

  dupV: false,
  dupVCounter: 0,
};





$('.pages.stage').ready(function() {


  $('#dup-h').on('click', function() {
    if (dup.dupHCounter % 2 === 0) {
      dup.dupH = true;
      $(this).addClass( 'symmetry-on' );
      dup.dupHCounter++;
    } else {
      dup.dupH = false;
      $(this).removeClass( 'symmetry-on' );
      dup.dupHCounter++;
    }
  });

  $('#dup-v').on('click', function() {
    if (dup.dupVCounter % 2 === 0) {
      dup.dupV = true;
      $(this).addClass( 'symmetry-on' );
      dup.dupVCounter++;
    } else {
      dup.dupV = false;
      $(this).removeClass( 'symmetry-on' );
      dup.dupVCounter++;
    }
  });


});
