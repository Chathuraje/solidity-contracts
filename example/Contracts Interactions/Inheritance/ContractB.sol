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

            - When we Deploy this all the function inside ContractA can be used in ContractB and the state of ContractA will change when we run it in ContractB
    ----------------------------------------------------------------------------------
    */



}
