import "dart:math";
import "dart:io";

List basicList(List simpleList) {
  // List simpleList = [1, 2, 3, 44];

  simpleList.add(22);

  simpleList.remove(3);

  return (simpleList);
}

/**
 * Lists are a basic data structure equivalent to arrays form C (I guess there will be some differences), 
 * they work very simarly to arrays, so you can use indexes, and some higher order functions 
 * like map, filter and reduce with them.
 * 
 * You declare Lists (I'll call them Arrays sometimes, lol) with the syntax:
 * 
 *  List varName = [//values separated by ',' (comma), don't forget the square brackets]
 * 
 * To add a new element we can use List.add(), and List.remove() to remove an element (by value)
 * 
 * We also have an indexOf function (to get a List of indexes of a value within a List)
 * 
 */