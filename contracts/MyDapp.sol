pragma solidity >=0.4.21 <0.6.0;

import "./TruffleLogger.sol";

contract MyDapp is TruffleLogger {
  bool myBool = true;
  int myInt = -4321;
  uint myUint = 1234;
  string myString = "myString";
  bytes32 myBytes32 = bytes32("myBytes32");
  address myAddress = address(this);

  function doSomething() public {
    TruffleLogger.log(myBool);
    TruffleLogger.log(myInt);
    TruffleLogger.log(myUint);
    TruffleLogger.log(myString);
    TruffleLogger.log(myBytes32);
    TruffleLogger.log(myAddress);
  }
}
