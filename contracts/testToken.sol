// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../node_modules/@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";

contract testToken is ERC20Capped { //we inherit from the ERC20Capped contract found in ./node_modules/@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol
    // take a look at the docs here. This works like inheirtance of any other language, so you dont need to 

    uint8 public constant DECIMALS = 18;

    constructor (string memory name, string memory symbol, uint256 supplyCap)
        ERC20(name, symbol) // The constructor for ERC20, specifying name and symbol of your token. This works since we inherited from ERC20Capped, and it inherits from ERC20.
        ERC20Capped(supplyCap) // The constructor for ERC20Capped, specifying the supply cap of your token
        {}

    function getTokenName() public view returns (string memory) { // The 'view' keyword means that this function will not change the state of the contract
        return ERC20.name();
    }

    function getCap() public view returns (uint256) { // The 'public' keyword means that this function can be called outside of the contract
        return ERC20Capped.cap();
    }

    function mint(address minter, uint256 amount) public { // This function does not return anything, so we dont need to specify the return type
        ERC20Capped._mint(minter, amount); // Here we did not use 'msg.sender'. Instead, we asked the user to specify a address.
    }

    // function getTokenSymbol(//TODO) public view returns (string memory) {
    //     //TODO
    // }
    
    // function burn(//TODO) public {
    //     //TODO
    // }

    // function transferToken(//TODO) public {
    //     //TODO 
    // }

    // function getBalance(//TODO) public view returns (uint256) {
    //     //TODO
    // }

    // function getBalance() public view returns (uint256) { // For this function, try to use 'msg.sender' to get the implicitly passed-in address of the caller
    //     //TODO
    // }   

    // Implement/Change any other function you'd like. You can find a list of functions here: https://docs.openzeppelin.com/contracts/4.x/api/token/erc20#ERC20

}