const { toAscii } = require("web3-utils");
const MyDapp = artifacts.require("./MyDapp.sol");

contract("LogTest", accounts => {
  it("...should log properly", async () => {
    const myDapp = await MyDapp.deployed();

    // Execute a transaction
    const tx = await myDapp.doSomething({ from: accounts[0] });

    // Catch log events with labels
    const logNamedEvts = tx.logs.filter(x => x.event === "_TruffleLogNamed");
    logNamedEvts.forEach(event => {
      const result = event.args;

      // A mapping to show how to output into our console
      const outputMap = {
        num: result[1].toString(),
        boolean: result[1],
        str: result[1],
        b32: result[1],
        addr: result[1],
      };

      // A list of all "supported" types: ["num", "boolean", "str", ...]
      const types = Object.keys(outputMap);

      // Find out what type our result is, and log it out if it matches
      types.forEach(type => {
        if (result.hasOwnProperty(type)) {
          const label = toAscii(result[0]);
          const val = outputMap[type];
          console.log(label, val);
        }
      });
    });
  });
});
