const { assert } = require('chai')

token = artifacts.require("testToken");

require('chai')
  .use(require('chai-as-promised'))
  .should()

contract('testToken', (accounts) => {
    before(async () => {
        token = await token.deployed()
    })

    it('Example Tests', async () => {
        var token_name = await token.getTokenName()
        var token_cap = await token.getCap()
        assert.equal(token_name,"Test_Token")
        assert.equal(token_cap,10000)
    })

    it('Your Test 2', async () => {
        assert.equal(0, 1)
    })

    it('Your Test 3', async () => {
        assert.equal(0, 1)
    })

    it('Your Test 4', async () => {
        assert.equal(0, 1)
    })

    it('Your Test 5', async () => {
        assert.equal(0, 1)
    })
    // ...

})