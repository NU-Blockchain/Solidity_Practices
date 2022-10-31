const storageNum = artifacts.require("storageNum");
// use artifacts.require to import your testToken contract

module.exports = function(deployer) {
	deployer.deploy(storageNum);
	// deploy your testToken here. Remember that the constructor of your testToken contract does take in arguments
	// Deploy with your token name as 'Test_Token', token symbol as 'TT', and token cap as 10000
};