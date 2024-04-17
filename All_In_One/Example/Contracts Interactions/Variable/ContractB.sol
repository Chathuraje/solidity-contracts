// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

// Importing the ContractA.sol file to access the ContractA contract
import "./ContractA.sol";

contract ContractB {

    /** ----------------------------------------------------------------------------
    * Variable Contract
        - This contract demonstrates how to interact with another contract (ContractA)
        - by importing its definition and calling its functions.
    -----------------------------------------------------------------------------*/

   // Declaring a public variable of type ContractA to hold a reference to ContractA
   ContractA public ConA;

   // Function to update the text in ContractA
   function variableContract(string memory _text, address _otherContracAddress) external {
        // Instantiating ConA with the provided contract address
        ConA = ContractA(_otherContracAddress);
        // Calling the changeText function of ContractA to update the text
        ConA.changeText(_text);
   }
}
