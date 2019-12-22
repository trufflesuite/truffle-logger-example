pragma solidity >=0.4.25 <0.7.0;

import "truffle/TruffleLogger.sol";

contract TestLogger {

  function testLogger() public {
    string memory myString = "myString";
    TruffleLogger.log(myString);
  }
}
