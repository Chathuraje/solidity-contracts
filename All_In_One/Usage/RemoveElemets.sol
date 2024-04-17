//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract RemoveElement {

    uint[] internal myArray = [10, 22, 33, 44, 55, 66, 77, 88, 99];

    /** Unorderd Removal
        [10, 22, 33, 44, 55, 66, 77, 88, 99]
        [10, 22, 33, 99, 55, 66, 77, 88]
    */
    function unorderdRemoval() external  {
        myArray[3] = myArray[8];
        myArray.pop();
    }


    /** Orderd Removal
        [10, 22, 33, 44, 55, 66, 77, 88, 99]
        [10, 22, 33, 55, 66, 77, 88, 99]
    */
    function orderdRemoval() external {
        for(uint i = 3; i<myArray.length-1; i++) {
            myArray[i] = myArray[i+1];
        }
        myArray.pop();
    }



    function getArray() external view returns(uint[] memory) {
        return myArray;
    }

}