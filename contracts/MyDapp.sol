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
    TruffleLogger.Log(myBool);
    TruffleLogger.Log(myInt);
    TruffleLogger.Log(myUint);
    TruffleLogger.Log(myString);
    TruffleLogger.Log(myBytes32);
    TruffleLogger.Log(myAddress);
  }
}
