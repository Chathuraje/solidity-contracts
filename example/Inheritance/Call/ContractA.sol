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

}