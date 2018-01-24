// for duplicating fixtures symmetrically over H or V axis

const sym = {
  symH: false,
  symHCounter: 0,

  symV: false,
  symVCounter: 0,
};





$('.pages.stage').ready(function() {
  $('#sym-h').on('click', function() {
    if (sym.symHCounter % 2 === 0) {
      sym.symH = true;
      $(this).addClass( 'symmetry-on' );
      sym.symHCounter++;
    } else {
      sym.symH = false;
      $(this).removeClass( 'symmetry-on' );
      sym.symHCounter++;
    }
  });

  $('#sym-v').on('click', function() {
    if (sym.symVCounter % 2 === 0) {
      sym.symV = true;
      $(this).addClass( 'symmetry-on' );
      sym.symVCounter++;
    } else {
      sym.symV = false;
      $(this).removeClass( 'symmetry-on' );
      sym.symVCounter++;
    }
  });
});
