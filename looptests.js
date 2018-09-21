
let groceryList = ['orange juice', 'bananas', 'coffee beans', 'brown rice', 'pasta', 'coconut oil', 'plantains'];

console.log('\n');
console.log('iterate');
console.log('\n');

for (let i = 0; i < groceryList.length; i ++) {
  console.log(`Grocery List item ${i + 1} is: ${groceryList[i]}`);
}

console.log('\n');
console.log('common items');
console.log('\n');

const commonItems = [];

let todaysList = ['butter', 'orange juice', 'pasta', 'lemons'];
for (let i = 0; i < groceryList.length; i ++) {
  for (let j = 0; j < todaysList.length; j ++) {
    if (groceryList[i] === todaysList[j]) {
    commonItems.push(todaysList[j]);
    }
  }
}
console.log('Common Items are: ' + commonItems);
console.log(commonItems);


console.log('\n');
console.log('while');
console.log('\n');

let cups = 1;
let cupsAdded = 0;

console.log('Total Cups: ' + cups);
console.log('Cups added: ' + cupsAdded);

while (cups < 2) {
  cupsAdded ++;
  cups ++;
}
console.log('Total Cups: ' + cups);
console.log('Cups added: ' + cupsAdded);

console.log('\n');
console.log('do while');
console.log('\n');

do {
  cupsAdded ++
  cups ++;
} while (cups >= 3 && cups < 4);

console.log('Total Cups: ' + cups);
console.log('Cups added: ' + cupsAdded);

console.log('\n');
console.log('while & break');
console.log('\n');

while (cups >= 1) {
    if (cups === 6) {
      console.log('Max cups reached!');
      break;
    }
  cupsAdded ++;
  cups ++;
}

console.log('Total Cups: ' + cups);
console.log('Cups added: ' + cupsAdded);
