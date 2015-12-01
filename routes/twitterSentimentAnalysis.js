var sentiment = require('sentiment');

module.exports = function(text) {
console.log(typeof text);
console.log(text);
    return sentiment(text);
};
