const LogMe = artifacts.require("./LogMe.sol");

module.exports = function(deployer) {
  deployer.deploy(LogMe);
};
