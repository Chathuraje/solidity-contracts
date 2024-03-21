// SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract OrderingArray {

    uint[] internal myArray = [23, 123, 41, 2, 34, 3, 53, 2, 34, 234, 234, 234, 23, 0];

    function generateEvenNumbers() external {
        for(uint i = 0; i < myArray.length-1; i++) {
            for(uint j = 0; j < myArray.length-i-1; j++) {
                if (myArray[j] > myArray[j+1]) {
                    uint temp = myArray[j];
                    myArray[j] = myArray[j+1];
                    myArray[j+1] = temp;
                }
            }
        }
    }

    /**
     * Returns the entire array.
     */
    function getArray() external view returns(uint[] memory) {
        return myArray;
    }
}
