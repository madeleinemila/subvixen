$('.pages.stage').ready(function() {

  // get video
  const video = $('#stage-video');
  // get stage context
  const stageContext = $('#stage-canvas')[0].getContext('2d');

  video.on('play', function() {
    // const $this = this;  // cache // TODO ask joel why this might be useful
    // console.log( stageContext );
    draw( this, stageContext, 640, 360  );
  });

});

function draw( video, context, w, h) {
  console.log( `width: ${w}` );
  console.log( `height: ${h}` );
    if ( video.paused || video.ended) return false;
    context.drawImage( video, 0, 0, w, h );
    requestAnimationFrame(function() {
      draw(video, context, w, h);
    });
}




// function drawVideo(context, video, width, height) {
//   context.drawImage(video, 0, 0, width, height); // draws current video frame to canvas
//   var delay = 100; // milliseconds delay for slowing framerate
//   setTimeout(drawVideo, delay, context, video, width, height); // recursively calls drawVideo() again after delay
// }
