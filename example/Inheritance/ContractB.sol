// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

// Importing the ContractA.sol file to inherit from ContractA
import "./ContractA.sol";

// ContractB inherits from ContractA
contract ContractB is ContractA {
    // ContractB inherits all state variables and functions from ContractA

    // No need to redefine the constructor, as it's already defined in ContractA
    // ContractB inherits the constructor from ContractA

    // No need to redefine storedText state variable or changeText function,
    // as they are already defined in ContractA and inherited by ContractB
}
