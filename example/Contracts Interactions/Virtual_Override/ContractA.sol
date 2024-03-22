//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract ContractA {
    address internal owner;

    constructor() {
        owner = msg.sender;
    }

    uint public sum;

    // This is a virtual function that can be used inherited override functions
    function addNumbers(uint _number1, uint _number2) external virtual{
        sum = _number1 + _number2;
    }

}