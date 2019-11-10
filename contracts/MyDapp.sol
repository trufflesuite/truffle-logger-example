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
    emit TruffleLogger.__Log(myBool);
    emit TruffleLogger.__Log(myInt);
    emit TruffleLogger.__Log(myUint);
    emit TruffleLogger.__Log(myString);
    emit TruffleLogger.__Log(myBytes32);
    emit TruffleLogger.__Log(myAddress);
  }
}
