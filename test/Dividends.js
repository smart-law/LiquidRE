const LRET = artifacts.require('./LRET.sol');
const Dividends = require('./Dividends.sol');

contract('Dividends', (accounts) => {
    it('verifies the beneficiary after construction', async () => {
        let lret = await LRET.new();
        let dividends = await Dividends.new();



    });
});
