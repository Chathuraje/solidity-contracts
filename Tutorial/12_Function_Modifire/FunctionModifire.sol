//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract FunctionModifire {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Modifire to check if the caller is the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner {
        owner = _newOwner;
    }


    // Modifier with parameters
    modifier limit(amount _amount) {
        require(msg.value >= _amount, "Insufficient value");
        _;
    }

    function deposit(uint _amount) public payable limit(_amount) {
        // Deposit logic
    }

    // Modifier to excute codes after the function runs
    modifier after() {
        _;
        // Code to run after the function
    }

    function withdraw(uint _amount) public after {
        // Withdraw logic
    }

}