// Tower of Hanoi
// https://www.ocf.berkeley.edu/~shidi/cs61a/w/images/f/f8/Hanoi0.png
// Find possible moves for the given state of Hanoi towers
// input: [[3,4],[1,2],[]]
// output: [[[1,3,4],[2],[]], [[3,4],[2],[1]], [[4],[1,2],[3]]]

List<List> hanoi(List<List> towers){
  List<List> towersrsPossibleOutput =[];
  //lets assume there are only 3 towers
  int count=0;
  int a=1, b=2, c=0;
  int discToMove = towers[a].first;
//  print(discToMove);//#debug
  if(towers[b].isEmpty || discToMove<towers[b].first){
    towers[a].removeAt(0);
    towers[b].insert(0,discToMove);
    print('towers here 1: $towers');//#debug
    towersrsPossibleOutput.add(List.from(towers).toList());
    towers[b].removeAt(0);
    towers[a].insert(0,discToMove);

  }
  if(towers[2].isEmpty || discToMove<towers[c].first){
    towers[a].removeAt(0);
    towers[c].insert(0,discToMove);
    print('towers here 2: $towers');//#debug
    towersrsPossibleOutput.add(List.from(towers).toList());
    towers[c].removeAt(0);
    towers[c].insert(0,discToMove);
  }
  return towersrsPossibleOutput;
}

main() {
  print(hanoi([[3,4],[1,2],[]]));
}
