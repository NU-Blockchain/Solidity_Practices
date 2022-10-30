const { assert } = require('chai')

const storageNum = artifacts.require("storageNum");

require('chai')
  .use(require('chai-as-promised'))
  .should()


contract('storageNumber', (accounts) => {
    before(async () => {
        this.storageNum = await storageNum.deployed()
    })

    it('Setting and getting', async () => {
        const num = 5
        await this.storageNum.set(num, {from:accounts[0]})
        const result = await this.storageNum.get({from:accounts[0]})
        assert.equal(result, num)
    })

})