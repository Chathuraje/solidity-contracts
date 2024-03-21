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

  // Different Return Statement

  // This function takes an unsigned integer `_a` as input, adds 5 to it, 
  // stores the result in a variable `myNum`, and returns `myNum`.
  function getMyString1(uint _a) external pure returns(uint) {
    uint myNum = _a + 5;
    return myNum;
  }

  // This function is similar to `getMyString1`, but the return value is declared in the function signature.
  // It also takes an unsigned integer `_a` as input, adds 5 to it, and assigns the result directly to the return variable `myNum`.
  // There's no explicit return statement; the value of `myNum` is automatically returned because it's declared in the function signature.
  function getMyString2(uint _a) external pure returns(uint myNum) {
    myNum = _a + 5;
  }
  // This one is cheaper to use
  // Both functions achieve the same result, but `getMyString2` explicitly declares the return variable in the function signature.


}
