const Dividends = artifacts.require("./Dividends.sol");
const LRET = artifacts.require("./LRET.sol");

module.exports = async (deployer) => {
  await deployer.deploy(Dividends);
  await deployer.deploy(LRET);
};
