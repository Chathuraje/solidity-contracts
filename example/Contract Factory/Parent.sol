// SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

import "./Child.sol";

contract Parent {

    // We're going to deploy Child Contract from Parent Contract and use it.

    Child internal childContract;
    function assignContract(string memory _text) external {
        childContract = new Child(_text);
    }

    function getData() external view returns(string memory) {
        return childContract.text();
    }

}
