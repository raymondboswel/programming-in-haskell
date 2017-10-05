//Naive js implementation written imperatively for presentation

let votes = ["Red", "Blue", "Green", "Blue", "Blue", "Red"];

function count(vote) { //How testable is this?
  let count = 0;
  for (i=0; i<count.length; i++) {
    if(votes[i] == vote) {
      count++;
    }
  }
  return count;
}

function getUnique() {
  uniqueVotes = [];
  for (i=0; i<count.length; i++) {
    let v = votes[i];
    let isUnique = true;
    for(j=0; j<uniqueVotes.length; j++) {
      if (uniqueVotes[j] == v) {
        isUnique = false;
      }
    }
    if(isUnique) {
      uniqueVotes.push(v);
    }
  }
}

function result() {
  let result = [];
  let uniqueVotes = getUnique();
  for (i=0; i< unique.length; i++) {
    let voteCategory = uniqueVotes[i];
    let count = count(voteCategory);
    result.push({vote: voteCategory, count: count});
  }
  return result;
}

function winner() {
  result = result();
  let winnerIndex = 0;
  let highestCount = 0;
  for(i=0;i<result.length; i++) {
    if (result[i].count > highestCount) {
      winnerIndex = i;
      highestCount = result[i].count;
    }
  }
  return result[winnerIndex].vote
}
