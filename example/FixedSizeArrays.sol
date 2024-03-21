// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract FixedSizeArrays {

    /** Fixed Size Arrays
    * The size of the array should be predefined. 
    * The total number of elements should not exceed the size of the array. 
    * If the size of the array is not specified then the array of enough size is created which is enough to hold the initialization.
    * Cannot Delete a elements
    */
    uint[8] internal myFixedArray; // This was already assign [0, 0, 0, 0, 0] into it

    function assignValues() external {
        myFixedArray = [2, 34, 44]; // 2,34,44,0,0,0,0,0 - This will replace whole array into this
    }

    function getFixedArray() external view returns(uint[8] memory) {
        return myFixedArray;
    }

    function setArrayValue() external {
        myFixedArray[7] = 199; // 2,34,44,0,0,0,0,199 - This will add one value to the position 7
    }
}
