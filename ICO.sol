// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract ICO {
    IERC20 public token;
    address public owner;
    uint public tokenPrice;
    uint public startTime;
    uint public endTime;
    mapping(address => uint) public investments;

    constructor(IERC20 _token, uint _tokenPrice, uint _durationDays) {
        token = _token;
        owner = msg.sender;
        tokenPrice = _tokenPrice;
        startTime = block.timestamp;
        endTime = startTime + (_durationDays * 1 days);
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner");
        _;
    }

    function invest() external payable {
        require(block.timestamp >= startTime && block.timestamp <= endTime, "ICO not active");
        uint tokenAmount = msg.value * tokenPrice;
        token.transfer(msg.sender, tokenAmount);
        investments[msg.sender] += msg.value;
    }

    function claimTokens() external {
        require(block.timestamp > endTime, "ICO not finished");
        uint investment = investments[msg.sender];
        require(investment > 0, "No investment found");
        uint tokenAmount = investment * tokenPrice;
        token.transferFrom(owner, msg.sender, tokenAmount);
        investments[msg.sender] = 0;
    }

    function withdrawFunds() external onlyOwner {
        payable(owner).transfer(address(this).balance);
    }
}
