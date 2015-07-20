# swearwords

Usage:

````js
var swearwords = require('./swearwords');

var phrases = ['Vai se fuder!', 'Filho da puta!', 'Não caralho...', 'Oi, tudo bem?'];
var swearsList = ['fuder', 'puta', 'cú', 'buceta', 'caralho'];

phrases.forEach(function(phrase) {
  return console.log(swearwords.parse(phrase, swearsList));
});
````
