//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract ContractA {
    address internal owner;

    constructor() {
        owner = msg.sender;
    }

    string public storedText = "Blockchain";
    function changeText(string memory _text) external {
        storedText = _text;
    }

}