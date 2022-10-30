// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract NUToken is ERC20 {
    
    uint256 setTotalSupply;
    
    constructor( string memory name, string memory symbol, uint256 supplyCap) ERC20(name, symbol) {
        setTotalSupply = supplyCap;
    }

    function getName() public view returns (string memory) {
        return name();
    }

    function getCap() public view returns (uint256) {
        return setTotalSupply;
    }
    
    function getSymbol() public view returns (string memory) {
        return symbol();
    }

    function getBalance() public view returns (uint256) {
        return balanceOf(msg.sender);
    }

    function getTotalSupply() public view returns (uint256) {
        return totalSupply();
    }

    function mintToken(uint256 amount) public {
        
        if (totalSupply() + amount <= setTotalSupply) {
            _mint(msg.sender, amount);
        }else{
            revert("Total supply exceeded!");
        }
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function safeTransfer(address to, uint256 amount) public {
        _transfer(msg.sender, to, amount);
    }
}