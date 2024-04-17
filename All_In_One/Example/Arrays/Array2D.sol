// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract Array2D {
    
    uint[3][3] internal my2DArray;
    /**
    * my2DArray[0] = [0, 0, 0]
    * my2DArray[1] = [0, 0, 0]
    * my2DArray[2] = [0, 0, 0]
    */


    function setValues() external {
        my2DArray[1][2] = 888;
        /**
        * my2DArray[0] = [0, 0, 0]
        * my2DArray[1] = [0, 0, 888]
        * my2DArray[2] = [0, 0, 0]
        *
        * my2DArray[3][3] = 0, 0, 0, 0, 0, 888, 0, 0, 0
        */
    }

    function getArray() external view returns(uint[3][3] memory) {
        return my2DArray;
    }

    function getValues(uint _parentIndex, uint _childIndex) external view returns(uint) {
        return my2DArray[_parentIndex][_childIndex];
    }

    function setInputValues(uint _parentIndex, uint _childIndex, uint _value) external {
        my2DArray[_parentIndex][_childIndex] = _value;
    }

}
