// SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract FindEvenNumbers {

    uint[] internal myArray;

    function generateEvenNumbers(uint _number) external {
        for(uint i = 0; i < _number; i++) {
            if(i % 2 == 0) {
                myArray.push(i);
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
