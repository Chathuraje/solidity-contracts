// SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract FindBigNumber {

    uint[] internal myArray = [154, 22, 33, 44, 55, 66, 77, 88, 99];

    function getBigNumber() external view returns(uint) {
        uint arrayBigNumber = 0;
        for(uint i = 0; i < myArray.length; i++) {
            if(myArray[i] > arrayBigNumber) {
                arrayBigNumber = myArray[i];
            }
        }

        return arrayBigNumber;
    }



    /**
     * Returns the entire array.
     */
    function getArray() external view returns(uint[] memory) {
        return myArray;
    }
}
