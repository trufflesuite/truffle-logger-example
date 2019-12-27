pragma solidity >=0.4.25 <0.7.0;

import "truffle/Console.sol";

contract TestLogger {

  function testLogger() public {
    string memory myString = "myString";
    Console.log(myString);
  }
}
