// SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

import "./Parent.sol";

// Method 1: Static Input
contract ContractC is ContractA("Text Here"),  ContractB(10282) {
    
}


// Method 2: Dynamic Inputs
contract ContractD is ContractA, ContractB {
    
    constructor(string memory _word, uint _unit) ContractA(_word) ContractB(_unit) {}
    
}