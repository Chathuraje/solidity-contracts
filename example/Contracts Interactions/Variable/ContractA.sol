//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract ContractA {
    address internal owner;

    constructor() {
        owner = msg.sender;
    }

    string public text = "Hello, world!";
    function changeText(string memory _text) external{
        text = _text;
    }

}