// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract DEX {
    mapping(address => uint) public balances;
    mapping(address => mapping(address => uint)) public allowance;
    
    IERC20 public token;

    constructor(IERC20 _token) {
        token = _token;
    }

    function deposit(uint amount) external {
        token.transferFrom(msg.sender, address(this), amount);
        balances[msg.sender] += amount;
    }

    function withdraw(uint amount) external {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        require(token.balanceOf(address(this)) >= amount, "Contract has insufficient balance");
        
        balances[msg.sender] -= amount;
        token.transfer(msg.sender, amount);
    }

    function createLimitOrder(uint amount, uint price) external {

    }

    function createMarketOrder(uint amount, bool isBuyOrder) external {

    }
}
