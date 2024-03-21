// SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract findIndex {

    uint[] internal myArray = [10, 22, 33, 44, 55, 66, 77, 88, 99];

    uint public targetIndex;
    /**
     * Finds the index of a given number within the array.
     */
    function findIndexOfNumber(uint _number) external {
        for(uint i = 0; i < myArray.length; i++) {
            if(myArray[i] == _number){
                targetIndex = i;
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
