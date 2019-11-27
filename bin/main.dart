// Tower of Hanoi
// https://www.ocf.berkeley.edu/~shidi/cs61a/w/images/f/f8/Hanoi0.png
// Find possible moves for the given state of Hanoi towers
// input: [[3,4],[1,2],[]]
// output: [[[1,3,4],[2],[]], [[3,4],[2],[1]], [[4],[1,2],[3]]]

List<List> hanoi(List<List> towers) {
  List<List> towersPossibleOutput = [];
  //lets assume there are only 3 towers
  for (int i = 0; i < 3; i++) {
    if(towers[i].isEmpty){
      continue;
    }
    int discToMove = towers[i].first;
    //  print(discToMove);//#debug
    for (int j = 0; j < 3; j++) {
      if (i == j) {
        continue;
      }
      if (towers[j].isEmpty || discToMove < towers[j].first) {
        List temp=copyList(towers);
        towers[i].removeAt(0);
        towers[j].insert(0, discToMove);
        print('towers $i: $towers'); //#debug
        towersPossibleOutput.add(copyList(towers));
        towers[j].removeAt(0);
        towers[i].insert(0, discToMove);
      }
    }
  }

  //--------------------
  return towersPossibleOutput;
}

List copyList(List copyFrom) {
  List copyTo = [];
  copyFrom.forEach((item) => copyTo.add(item));
  return copyTo;
}

main() {
  print(hanoi([
    [3, 4],
    [1, 2],
    []
  ]));
}
