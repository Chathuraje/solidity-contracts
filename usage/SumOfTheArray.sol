// SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract SumOfTheArray {

    uint[] internal myArray = [10, 22, 33, 44, 55, 66, 77, 88, 99];

    function getSumOfTheArray() external view returns(uint) {
        uint arraySum;
        for(uint i = 0; i < myArray.length; i++) {
            arraySum += myArray[i];
        }

        return arraySum;
    }

    

    /**
     * Returns the entire array.
     */
    function getArray() external view returns(uint[] memory) {
        return myArray;
    }
}
