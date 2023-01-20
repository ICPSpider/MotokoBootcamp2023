import Array = "mo:base/Array";
import Buffer "mo:base/Buffer";
import Int = "mo:base/Int";

actor {
//In your file called utils.mo: create a function called second_maximum that takes an array [Int] of integers and returns the 
//second largest number in the array.
//second_maximum(array : [Int]) ->  Int;
  public query func second_maximum(array: [Int]) : async Int {
      var first : Int = 0;
      var second : Int = 0;
      let arraySorted : [Int] = Array.sort(array, Int.compare);
      for (val in arraySorted.vals()) {
          if(val > first) {
              second := first;
              first := val;
          };
      };
      return second;
  };


//In your file called utils.mo: create a function called remove_even that takes an array [Nat] and returns a new array with 
//only the odd numbers from the original array.
//remove_event(array : [Nat]) -> [Nat];
  public query func remove_even(array: [Nat]) : async [Nat] {
      let buffer = Buffer.Buffer<Nat>(array.size());
      for (val in array.vals()) {
          if(val%2==1) {
              buffer.add(val);
          };
      };
      return Buffer.toArray(buffer);
  };


//In your file called utils.mo: write a function drop that takes 2 parameters: an array [T] and a Nat n. This function will 
//drop the n first elements of the array and returns the remainder.
//⛔️ Do not use a loop.
//drop<T> : (xs : [T], n : Nat) -> [T]
  func drop<T>(xs : [T], n : Nat) : [T] {
      let buffer = Buffer.fromArray<T>(xs);
      buffer.filterEntries(func(index, value) = index >= n);
      return Buffer.toArray(buffer);
  };
  //the following function was for my personnal test to understand how to query the drop function
  /* */
  public query func dropNatArray(array : [Nat], n : Nat) : async [Nat] {
      return drop<Nat>(array, n);
  };


}