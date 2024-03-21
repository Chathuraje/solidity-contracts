// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

// Importing the ContractA.sol file to inherit from ContractA
import "./ContractA.sol";

// ContractB inherits from ContractA
contract ContractB is ContractA {

    /** ----------------------------------------------------------------------------
        - INHERITANCE
            - ContractB inherits all state variables and functions from ContractA
    
            - No need to redefine the constructor, as it's already defined in ContractA
            - ContractB inherits the constructor from ContractA

            - No need to redefine changeText function,
            - as they are already defined in ContractA and inherited by ContractB

            - Can call any functions in ContractA after deploying this ContractB
            - Simply we can use anything that inside ContractA in here
    ----------------------------------------------------------------------------------
    */

    /** ----------------------------------------------------------------------------
        - VIRTUAL and OVERRIDE Functions
            - A virtual function is a function that a derived contract can override. 
            - You can mark a function as virtual by using the virtual keyword. 
            - If a derived contract overrides a virtual function, it must use the override keyword.
            - The override keyword is used to explicitly indicate that a derived function is intended to override a virtual function in the base contract. 
            - It ensures that the derived function has the same function signature as the virtual function it is overriding.
    ----------------------------------------------------------------------------------
    */
    function addNumbers(uint _number1, uint _number2) external pure override returns(uint){
        
        return _number1 + _number2 + 10000;
    }

}
