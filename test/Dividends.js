const LRET = artifacts.require('./LRET.sol');
const Dividends = require('./Dividends.sol');

contract('Dividends', (accounts) => {
    it('verifies the beneficiary after construction', async () => {
        let lret = await LRET.new();
        let dividends = await Dividends.new();


        let contract = await Beneficiary.new(accounts[1], accounts[2], accounts[0]);
        let trust = await contract.trust.call();
        assert.equal(trust, accounts[1]);
        let entity = await contract.entity.call();
        assert.equal(entity, accounts[2]);
        let signatures = await contract.getSignatures.call();
        assert.equal(signatures.length, 1);
    });
});
