// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract ConditionalStatement {
    function findMax() external pure returns (uint) {
        uint a = 10;
        uint b = 20;
        uint result;
        if (a > b) {
            result = a;
        } else {
            result = b;
        }
        return result;
    }
}
