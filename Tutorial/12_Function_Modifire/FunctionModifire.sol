//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract FunctionModifire {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner {
        owner = _newOwner;
    }

    modifier limit(amount _amount) {
        require(msg.value >= _amount, "Insufficient value");
        _;
    }

    function deposit(uint _amount) public payable limit(_amount) {
        // Deposit logic
    }

}