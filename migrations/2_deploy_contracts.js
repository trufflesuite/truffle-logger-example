const Console = artifacts.require("./Console.sol");
const MyDapp = artifacts.require("./MyDapp.sol");

module.exports = async function(deployer) {
  await deployer.deploy(Console);
  await deployer.link(Console, MyDapp);
  await deployer.deploy(MyDapp);
};
