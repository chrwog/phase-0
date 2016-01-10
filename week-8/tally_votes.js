// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Gino Capio
// This challenge took me [3] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/

// console.log(voteCount["president"]["Bob"])
// console.log(votes)
// for (var voter in votes) {
//   var presidentKey = votes[voter];
//   var counter = 0
// if (presidentKey["president"] === "Bob") {
//   voteCount["president"]["Bob"] = (counter += 1)
// }}
// console.log(voteCount["president"])
// console.log(presidentKey)
/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// -created function that will count how many times a name appears on each index. 
// -determine which candidate name appears the most and declare the candidate as the winner
// - assign the winners to their respective offices

// __________________________________________
// Initial Solution
// for (var voter in votes) {
//   if (!votes.hasOwnProperty(voter)) continue;
//   var presidentKey = votes[voter];
//   // console.log(presidentKey["president"])  
//     var bobPresident = 0;
//     var array = []
// // console.log(votes.length)
//   console.log(( presidentKey["president"].length
//   ))
   
  // for (var i=0; i <= 26; i++) {
  //  }
  //         array.push (votes["Alex"]["president"])
// }

// console.log(array) 

// function separateCommas(number) {
//   var numArray = number.toString().split('').reverse();
//   var newArray = []
//   numArray.forEach(function (value, i) {
//     if (i % 3 === 0 && i != 0) {
//       newArray.push(",");
//     }
//     newArray.push(numArray[i]);
//   });
//   return newArray.reverse().join('');
// }
// console.log(separateCommas(123456262612));
//   var bobPresident = 0;
//   for (var i=0; i < presidentKey.length; i++) {
//     // if (presidentKey["president"] === "Bob") 


//   bobPresident++;
    // console.log(presidentKey.length)
// }
  // console.log(presidentKey["president"])
//   console.log(presidentKey)
// console.log(bobPresident)


// for (var voter in votes) {
//   if (!votes.hasOwnProperty(voter)) continue;
//   var presidentKey = votes[voter];
//   var bobTally = 0
//   votes.forEach(function (value,index) {
//     if(value === "Bob") {
//       bobTally++
//       console.log(bobTally)
//     }
//   })
// }


// for (var voter in votes) {
//   if (!votes.hasOwnProperty(voter)) continue;
//   var presidentKey = votes[voter];
//   var presBob = []
//   // console.log(presidentKey["president"])
//   for (var i = 0; i < 26; i++);
//   presBob.push(votes;
//     // if(presidentKey["president"] === "Bob") {
//     //   presBob.push("Bob");
//         console.log(presBob)
//     }

//   // console.log(presidentKey["president"])  
// // }

// for (var voter in votes) {
//   if (!votes.hasOwnProperty(voter)) continue;
//   var presidentKey = votes[voter];
//   // console.log(presidentKey["president"])  
//     var bobPresident = 0;
//     var array = []
//        for (var i = 0; i < 26; i++); {
//      for (var name in presidentKey) {

//           if (!presidentKey.hasOwnProperty(name)) continue;
//     array.push(presidentKey["president"])
//      }}
// }
// var array = []
// for (var i = 0; i < 26; i++){
// array.push(votes.i)
//            }
//            console.log(array)
// var bobCounterPres = 0
// var maryCounterPres = 0
// var cindyCounterPres = 0
// var louiseCounterPres = 0
// var fredCounterPres = 0
// var ivyCounterPres = 0
// var nateCounterPres = 0
// var oscarCounterPres = 0
// var paulinaCounterPres = 0
// var tracyCounterPres = 0
// var wesleyCounterPres = 0

// for (var voters in votes) {
//   if (votes[voters]["president"] === "Bob") {
//    voteCount["president"]["Bob"] = bobCounterPres +=1
//   }
//   if (votes[voters]["president"] === "Mary") {
//    voteCount["president"]["Mary"] = maryCounterPres += 1
//   }
//   if (votes[voters]["president"] === "Cindy") {
//    voteCount["president"]["Cindy"] = cindyCounterPres += 1
//   }
//   if (votes[voters]["president"] === "Louise") {
//    voteCount["president"]["Louise"] = louiseCounterPres += 1
//   }
//   if (votes[voters]["president"] === "Fred") {
//    voteCount["president"]["Fred"] = fredCounterPres += 1
//   }
//   if (votes[voters]["president"] === "Ivy") {
//    voteCount["president"]["Ivy"] = ivyCounterPres += 1
//   }
//   if (votes[voters]["president"] === "Nate") {
//    voteCount["president"]["Nate"] = nateCounterPres += 1
//   }
//   if (votes[voters]["president"] === "Oscar") {
//    voteCount["president"]["Oscar"] = oscarCounterPres += 1
//   }
//   if (votes[voters]["president"] === "Paulina") {
//    voteCount["president"]["Paulina"] = paulinaCounterPres += 1
//   }
//   if (votes[voters]["president"] === "Tracy") {
//    voteCount["president"]["Tracy"] = tracyCounterPres += 1
//   }
//   if (votes[voters]["president"] === "Wesley") {
//    voteCount["president"]["BWesleyb"] = wesleyCounterPres += 1
//   }
// var bobCounterVp = 0
// var devinCounterVp = 0
// var hermannCounterVp = 0
// var johnCounterVp = 0
// var alexCounterVp = 0
// var kerryCounterVp = 0
// var maryCounterVp = 0
// var louiseCounterVp = 0
// var nateCounterVp = 0
// var steveCounterVp = 0
// var oscarCounterVp = 0
// var yvonneCounterVp = 0
// var zaneCounterVp = 0
// var paulinaCounterVp = 0
// var tracyCounterVp = 0
// var wesleyCounterVp = 0
// }
// for (var voters in votes) {
//   if (votes[voters]["vicePresident"] === "Bob") {
//    voteCount["vicePresident"]["Bob"] = bobCounterVp +=1
//   }
//   if (votes[voters]["vicePresident"] === "Devin") {
//    voteCount["vicePresident"]["Devin"] = devinCounterVp += 1
//   }
//   if (votes[voters]["vicePresident"] === "Hermann") {
//    voteCount["vicePresident"]["Hermann"] = hermannCounterVp += 1
//   }
//   if (votes[voters]["vicePresident"] === "John") {
//    voteCount["vicePresident"]["John"] = johnCounterVp += 1
//   }
//   if (votes[voters]["vicePresident"] === "Alex") {
//    voteCount["vicePresident"]["Alex"] = alexCounterVp += 1
//   }
//   if (votes[voters]["vicePresident"] === "Kerry") {
//    voteCount["vicePresident"]["Kerry"] = kerryCounterVp += 1
//   }
//   if (votes[voters]["vicePresident"] === "Mary") {
//    voteCount["vicePresident"]["Mary"] = maryCounterVp += 1
//   }
//   if (votes[voters]["vicePresident"] === "Cindy") {
//    voteCount["vicePresident"]["Cindy"] = cindyCounteVpr += 1
//   }
//   if (votes[voters]["vicePresident"] === "Louise") {
//    voteCount["vicePresident"]["Louise"] = louiseCounterVp += 1
//   }
//   if (votes[voters]["vicePresident"] === "Fred") {
//    voteCount["vicePresident"]["Fred"] = fredCounterVp += 1
//   }  if (votes[voters]["vicePresident"] === "Ivy") {
//    voteCount["vicePresident"]["Ivy"] = ivyCounterVp += 1
//   }
//   if (votes[voters]["vicePresident"] === "Nate") {
//    voteCount["vicePresident"]["Nate"] = nateCounterVp += 1
//   }
//   if (votes[voters]["vicePresident"] === "Oscar") {
//    voteCount["vicePresident"]["Oscar"] = oscarCounterVp += 1
//   }
//   if (votes[voters]["vicePresident"] === "Paulina") {
//    voteCount["vicePresident"]["Paulina"] = paulinaCounterVp += 1
//   }
//   if (votes[voters]["vicePresident"] === "Tracy") {
//    voteCount["vicePresident"]["Tracy"] = tracyCounterVp += 1
//   }
//   if (votes[voters]["vicePresident"] === "Wesley") {
//    voteCount["vicePresident"]["Wesleyb"] = wesleyCounterVp += 1
//   }  

// var bobCounterSec = 0
// var maryCounterSec = 0
// var cindyCounterSec = 0
// var louiseCounterSec = 0
// var fredCounterSec = 0
// var ivyCounterSec = 0
// var nateCounterSec = 0
// var oscarCounterSec = 0
// var paulinaCounterSec = 0
// var tracyCounterSec = 0
// var wesleyCounterSec = 0
// var devinCounterSec = 0
// var alexCounterSec = 0
// var kerryCounterSec = 0
// var gailCounterSec = 0
// var valorieCounterSec = 0
// for (var voters in votes) {    
//   if (votes[voters]["secretary"] === "Gail") {

//    voteCount["secretary"]["Gail"] = gailCounterSec +=1
//   }
//   if (votes[voters]["secretary"] === "Valorie") {

//    voteCount["secretary"]["Valorie"] = valorieCounterSec +=1
//   }
//   if (votes[voters]["secretary"] === "Bob") {

//    voteCount["secretary"]["Bob"] = bobCounterSec +=1
//   }
//   if (votes[voters]["secretary"] === "Devin") {
//    voteCount["secretary"]["Devin"] = devinCounterSec += 1
//   }
//   if (votes[voters]["secretary"] === "Hermann") {
//    voteCount["secretary"]["Hermann"] = hermannCounterSec += 1
//   }
//   if (votes[voters]["secretary"] === "John") {
//    voteCount["secretary"]["John"] = johnCounterSec += 1
//   }
//   if (votes[voters]["secretary"] === "Alex") {
//    voteCount["secretary"]["Alex"] = alexCounterSec += 1
//   }
//   if (votes[voters]["secretary"] === "Kerry") {
//    voteCount["secretary"]["Kerry"] = kerryCounterSec += 1
//   }
//   if (votes[voters]["secretary"] === "Mary") {
//    voteCount["secretary"]["Mary"] = maryCounterSec += 1
//   }
//   if (votes[voters]["secretary"] === "Cindy") {
//    voteCount["secretary"]["Cindy"] = cindyCounteVpr += 1
//   }
//   if (votes[voters]["secretary"] === "Louise") {
//    voteCount["secretary"]["Louise"] = louiseCounterSec += 1
//   }
//   if (votes[voters]["secretary"] === "Fred") {
//    voteCount["secretary"]["Fred"] = fredCounterSec += 1
//   }  if (votes[voters]["secretary"] === "Ivy") {
//    voteCount["secretary"]["Ivy"] = ivyCounterSec += 1
//   }
//   if (votes[voters]["secretary"] === "Nate") {
//    voteCount["secretary"]["Nate"] = nateCounterSec += 1
//   }
//   if (votes[voters]["secretary"] === "Oscar") {
//    voteCount["secretary"]["Oscar"] = oscarCounterSec += 1
//   }
//   if (votes[voters]["secretary"] === "Paulina") {
//    voteCount["secretary"]["Paulina"] = paulinaCounterSec += 1
//   }
//   if (votes[voters]["secretary"] === "Tracy") {
//    voteCount["secretary"]["Tracy"] = tracyCounterSec += 1
//   }
//   if (votes[voters]["secretary"] === "Wesley") {
//    voteCount["secretary"]["Wesley"] = wesleyCounterSec += 1
//   }  
// } 
// var bobCounterTreas = 0
// var maryCounterTreas = 0
// var cindyCounterTreas = 0
// var louiseCounterTreas = 0
// var fredCounterTreas = 0
// var ivyCounterTreas = 0
// var nateCounterTreas = 0
// var oscarCounterTreas = 0
// var paulinaCounterTreas = 0
// var tracyCounterTreas = 0
// var wesleyCounterTreas = 0
// var devinCounterTreas = 0
// var alexCounterTreas = 0
// var kerryCounterTreas = 0
// var gailCounterTreas = 0
// var valorieCounterTreas = 0
// var hermannCounterTreas = 0
// for (var voters in votes) {
//   if (votes[voters]["treasurer"] === "Gail") {

//    voteCount["treasurer"]["Gail"] = gailCounterTreas +=1
//   }
//   if (votes[voters]["treasurer"] === "Valorie") {

//    voteCount["treasurer"]["Valorie"] = valorieCounterTreas +=1
//   }
//   if (votes[voters]["treasurer"] === "Bob") {

//    voteCount["treasurer"]["Bob"] = bobCounterTreas +=1
//   }
//   if (votes[voters]["treasurer"] === "Devin") {
//    voteCount["treasurer"]["Devin"] = devinCounterTreas += 1
//   }
//   if (votes[voters]["treasurer"] === "Hermann") {
//    voteCount["treasurer"]["Hermann"] = hermannCounterTreas += 1
//   }
//   if (votes[voters]["treasurer"] === "John") {
//    voteCount["treasurer"]["John"] = johnCounterTreas += 1
//   }
//   if (votes[voters]["treasurer"] === "Alex") {
//    voteCount["treasurer"]["Alex"] = alexCounterTreas += 1
//   }
//   if (votes[voters]["treasurer"] === "Kerry") {
//    voteCount["treasurer"]["Kerry"] = kerryCounterTreas += 1
//   }
//   if (votes[voters]["treasurer"] === "Mary") {
//    voteCount["treasurer"]["Mary"] = maryCounterTreas += 1
//   }
//   if (votes[voters]["treasurer"] === "Cindy") {
//    voteCount["treasurer"]["Cindy"] = cindyCounteVpr += 1
//   }
//   if (votes[voters]["treasurer"] === "Louise") {
//    voteCount["treasurer"]["Louise"] = louiseCounterTreas += 1
//   }
//   if (votes[voters]["treasurer"] === "Fred") {
//    voteCount["treasurer"]["Fred"] = fredCounterTreas += 1
//   }  if (votes[voters]["treasurer"] === "Ivy") {
//    voteCount["treasurer"]["Ivy"] = ivyCounterTreas += 1
//   }
//   if (votes[voters]["treasurer"] === "Nate") {
//    voteCount["treasurer"]["Nate"] = nateCounterTreas += 1
//   }
//   if (votes[voters]["treasurer"] === "Oscar") {
//    voteCount["treasurer"]["Oscar"] = oscarCounterTreas += 1
//   }
//   if (votes[voters]["treasurer"] === "Paulina") {
//    voteCount["treasurer"]["Paulina"] = paulinaCounterTreas += 1
//   }
//   if (votes[voters]["treasurer"] === "Tracy") {
//    voteCount["treasurer"]["Tracy"] = tracyCounterTreas += 1
//   }
//   if (votes[voters]["treasurer"] === "Wesley") {
//    voteCount["treasurer"]["Wesley"] = wesleyCounterTreas += 1
//   }  
// }
// }
// console.log(voteCount)
// __________________________________________
// Refactored Solution
for(var position in voteCount){  
  for(var voter in votes){
    if(voteCount[position][votes[voter][position]] === undefined)
      voteCount[position][votes[voter][position]] = 1;
    else
      voteCount[position][votes[voter][position]] += 1;    
  }
}

var count;
for(var position in voteCount){
  count = 1;
  for(var voter in voteCount[position]){
    if (voteCount[position][voter] > count || count == 1){
      officers[position] = voter; count = voteCount[position][voter];
    }
  }
}



// console.log(voteCount,officers);

// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
// I learned that for me it was a lot harder to iterate than in ruby. It was hard for us to figure out how to get the counter working in JavaScript.
// Some of the syntax is very similar to ruby, but enough of it was different that it caused us some issues.

// Were you able to find useful methods to help you with this?
// We used the hasOwnProperty to get through the nested objects.

// What concepts were solidified in the process of working through this challenge?
// Not really solitified, but it made me realize I need more work with JavaScript.
// I'm better at iterating through JavaScript objects, but not as comfortable as in ruby.




// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)