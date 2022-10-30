const { assert } = require('chai')

token = artifacts.require("NUToken");

require('chai')
  .use(require('chai-as-promised'))
  .should()

contract('testToken', (accounts) => {
    before(async () => {
        token = await token.deployed()

    })
    it('Matching Name', async () => {
        var token_name = await token.getName()
        var token_symbol = await token.getSymbol()
        var token_cap = await token.getCap()
        assert.equal(token_name,"Test_Token")
        assert.equal(token_symbol,"TST")
        assert.equal(token_cap,1000)
    })
    it('Matching Balance', async () => {
        // const address = accounts[0];
        // token_balance = await token.getBalance({from: accounts[0]})
        // assert.equal(token_balance,0)
        token.mintToken(100,{from: 0x0})
        // token_balance = await token.getBalance({from: address})
        // assert.equal(token_balance,100)
    })

})