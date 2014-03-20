var randomize = function() {
  shuffleArray(objects);
  var index = Math.floor(Math.random() * objects.length);
  $("#site-frame").attr("src", objects[index].source);
}

var shuffleArray = function(array) {
  for (var i = array.length - 1; i > 0; i--) {
    var j = Math.floor(Math.random() * (i + 1));
    var temp = array[i];
    array[i] = array[j];
    array[j] = temp;
  }
}
