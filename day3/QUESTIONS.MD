Q1: True or False: the Internet Computer has a unique public key that can be used to verify responses coming from any subnets.
A1: True

Q2: True or False: when I realize an update call, the boundary node will participate in the consensus but not during query calls.
A2: False, boundary nodes participate in both update and query calls to route requests. 

Q3: True or False: I can create a certified variable that will certify the response of the following actor:
actor {
    public func hello(name : Text) : async Text {
        return ("hello # name");
    };
}
A3: True