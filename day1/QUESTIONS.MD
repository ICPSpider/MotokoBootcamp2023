Q1: How much is the current memory capacity of a canister?

A1: 48 GiB

Q2: What is the issue with the following code sample?
actor {
  let counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
}

A2: The code is trying to reassign to an immutable variable.
actor {
  var counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
}

Q3: What is the issue with the following code sample?
actor {
  var message : Text = 0;

  public query func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };
  
  public query func see_message() : async Text {
    return(message);
  };
}

A3: Cannot assign a Nat to a var type Text.
actor {
  var message : Text = "";

  public query func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };
  
  public query func see_message() : async Text {
    return(message);
  };
}

Q4: False or True: we can remove the keyword async for return argument of a query function since queries are faster to answer.

A4: False