//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract ContractA {
    address internal owner;

    constructor() {
        owner = msg.sender;
    }

    // These functions can be used inside any of imported inherted functions
    function changeText(string memory _text) external pure returns(string memory){

        return _text;
    }



    // In Solidity, the super keyword is used to call the parent contract's implementation of a function. 
    // It is used when a contract inherits from another contract, and the child contract wants to override the functionality of a function defined in the parent contract.
    // We can call a parent function from child contract
    // For that functions must be declared as "public" or "internal". we cannot use external functions
    function returnText(string memory _text) internal pure returns(string memory){

        return _text;
    }

}