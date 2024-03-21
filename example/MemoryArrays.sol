// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract MemoryArray {
    /**
    * This array is not permenant and only this array stays when the function is called
    * Memory is used for temporary variables that are only needed during the execution of a function, 
    * This does not cost money it only saved data into memory.
    */
    function createArray(uint _a, uint _b, uint _c) external pure returns(uint[3] memory){
        uint[3] memory myArray = [_a, _b, _c];

        return myArray;
    }

}
