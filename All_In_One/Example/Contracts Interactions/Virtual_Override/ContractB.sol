// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

// Importing the ContractA.sol file to inherit from ContractA
import "./ContractA.sol";

// ContractB inherits from ContractA
contract ContractB is ContractA {
    /** ----------------------------------------------------------------------------
        - VIRTUAL and OVERRIDE Functions
            - A virtual function is a function that a derived contract can override. 
            - You can mark a function as virtual by using the virtual keyword. 
            - If a derived contract overrides a virtual function, it must use the override keyword.
            - The override keyword is used to explicitly indicate that a derived function is intended to override a virtual function in the base contract. 
            - It ensures that the derived function has the same function signature as the virtual function it is overriding.
    ----------------------------------------------------------------------------------
    */
    function addNumbers(uint _number1, uint _number2) external override{
        sum = _number1 + _number2 + 1500;
    }

}
