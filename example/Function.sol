// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract Fundctions {
 /**
   * Read Functions -> Pure or View
   *    Pure - A function that doesn't read or modify the variables of the state
   *    View - Designed to retrieve and return data from the blockchain without modifying the state of the contract
   */
    string internal myString = "This is My String";

    // Accessible externally (i.e., from outside the contract) and is view-only (it doesn't modify the contract state).
    // Internally not Visible
    function getMyString() external view returns(string memory) {
        return myString;
    }

 /**
   * Write Functions
   */
   function writeMyString(string memory _myString) external {
        myString = _myString;
   }


}
