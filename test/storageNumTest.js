const { assert } = require('chai')

require('chai')
  .use(require('chai-as-promised'))
  .should()

const storageNum = artifacts.require("storageNum");

contract('storageNumber', (accounts) => {
    before(async () => {
        contract = await storageNum.deployed()
    })

    it('Setting and getting', async () => {
        num = 5
        await contract.set(num, {from:accounts[0]}) // accounts[0] is the first account in the ganache test network
        const result = await contract.get(accounts[0])
        assert.equal(result, num)
    })

    // it('Function2', async () => {
    //     //...
    // })

    // it('Function3', async () => {
    //     //...
    // })

    // ...
})