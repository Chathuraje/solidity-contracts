//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract WhileLoops {

    uint[] internal myArray;

    function addArray() external {
        uint number = 0;
        while(number <= 10) {
            myArray.push(number);
            number++;
        }
    }

    function getArray() external view returns(uint[] memory) {
        return myArray;
    }

}