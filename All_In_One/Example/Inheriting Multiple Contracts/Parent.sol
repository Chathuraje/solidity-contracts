// SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract ContractA {
    string public myWord;
    constructor(string memory _word) {
        myWord = _word;
    }
   
}



contract ContractB {
    uint public myUnit;
    constructor(uint _unit) {
        myUnit = _unit;
    }
}