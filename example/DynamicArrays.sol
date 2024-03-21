// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract DynamicArrays {

    /** Dynamic Arrays
    * The size of the array is not predefined when it is declared. 
    * As the elements are added the size of array changes and at the runtime, the size of the array will be determined.
    */
    uint[] internal myDynamicArray1 = new uint[] (3); // We do not create dynamic arrays like this
    uint[] internal myDynamicArray2;

    function addValues (uint _num) external {
        myDynamicArray2.push(_num);
    }

    function delLastValue() external {
        myDynamicArray2.pop(); // This delete last element of the array will removed a and the legth of the array is decresed by one
    }

    function delValue(uint _position) external {
        // delete myDynamicArray2[3]; 4th element will deleted
        delete myDynamicArray2[_position]; // it changed the selected element in to it's default value if it's uint it set the deleted elemen values into 0
    }

    function getDynamicArray() external view returns(uint[] memory) {
        return myDynamicArray2;
    }

    function changeDynamicArray() external {
        myDynamicArray2 = [23, 4123, 123]; // This wil completely replaced the array
    }

    function updateDynamicArray(uint _position, uint _value) external {
        //myByteArray[1] = 23;
        myDynamicArray2[_position] = _value;
    }

}
