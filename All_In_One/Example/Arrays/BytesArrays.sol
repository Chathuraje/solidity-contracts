// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract BytesArrays {

    /** Byete Arrays
    * An array of bytes is used to store a dynamic sequence of bytes. 
    * This can be useful for storing data that does not have a fixed size or structure, 
    * such as raw data or arbitrary messages.
    */
    // It stores the values in bytes format
    bytes32 public myVar = "Chathura"; // 0x4368617468757261000000000000000000000000000000000000000000000000
    bytes1 public one_byte_variable = "a"; // 0x61

    // This is the array format
    bytes32[] internal myByteArray = [
        bytes32("Orange"), 
        bytes32("Apple")
    ];

    function getBytesArray() external  view returns (bytes32[] memory) {
        return myByteArray;
    }

    function updateByteAraay(string memory _value) external {
        //myByteArray[1] = "chathura";
        myByteArray[1] = bytes32(bytes(_value));
    }

}
