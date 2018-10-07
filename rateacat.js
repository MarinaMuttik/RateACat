//establish cat class

//sample cat rating arrays
const taffy = {
  rating: [5, 4, 4, 3, 5, 5, 5, 4, 5, 4, 2, 5, 4]
};
const tigga = {
  rating: [2, 3, 4, 4, 4, 3, 4, 4, 1, 5, 5, 3, 5]
};
const tikki = {
  rating: [5, 5, 5, 4, 5, 3, 5, 4, 4, 5, 3, 5, 4]
};
const tizzy = {
  rating: [3, 4, 5, 4, 4, 2, 3, 3, 4, 1, 5, 3, 2]
};

//obtain average cat ratings
function determineAverage(rating) {
    let total = rating.reduce((runningTotal, element) => {
      return runningTotal + element;
    });
  let average = total / rating.length;
  return average;
};

determineAverage(tizzy.rating);
//determine cotw
//cycle through cat class and determine average to see highest
let cotwRating = 4.6587;

//convert cotw rating to star %

const starTotal = 5;
function cotwPercentage(cotwRating) {
  let cotwPercentage = (cotwRating / starTotal) * 100;
};
function roundPercentage(cotwPercentage) {
  let roundedCotwRating = `${(Math.round(cotwPercentage / 10) * 10)}%`;
};

//replace width in CSS to the percentage
document.querySelector(PLACEINDOCUMENT.width) = roundedCotwRating;
