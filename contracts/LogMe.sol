pragma solidity >=0.4.21 <0.6.0;

contract LogMe {
  bool myBool = true;
  int myInt = -4321;
  uint myUint = 1234;
  string myString = "myString";
  bytes32 myBytes32 = bytes32("myBytes32");
  address myAddress = address(this);

  event __TLog(bool boolean);
  event __TLog(int num);
  event __TLog(uint num);
  event __TLog(string str);
  event __TLog(bytes32 b32);
  event __TLog(address addr);

  function doSomething() public {
    emit __TLog(myBool);
    emit __TLog(myInt);
    emit __TLog(myUint);
    emit __TLog(myString);
    emit __TLog(myBytes32);
    emit __TLog(myAddress);
  }
}
