const WindowTokenCrowdsale = artifacts.require('./contracts/crowdsale/MintedCrowdsale.sol');
const WindowToken = artifacts.require('./ERC20/WindowToken.sol');

module.exports = function(deployer, network, accounts) {
  console.log('network:', network);
  const wallet = accounts[0];
  return deployer.then(() => {
    return deployer.deploy(WindowToken);
  });
  // .then(() => {
  //   return deployer.deploy(WindowTokenCrowdsale, new web3.BigNumber(1000), wallet, WindowToken);
  // });
};
