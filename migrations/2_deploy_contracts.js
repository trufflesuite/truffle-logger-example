const TruffleLogger = artifacts.require("./TruffleLogger.sol");
const MyDapp = artifacts.require("./MyDapp.sol");

module.exports = function(deployer) {
  deployer.deploy(TruffleLogger);
  deployer.deploy(MyDapp);
};
