// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

// Interface defining the required function
interface ITemplate {

    /**
     * ITemplate is declared as an interface. 
     * This means it defines a set of function signatures that other contracts can implement.
     * The interface contains only the function signature for changeText, specifying that it takes a single parameter of type string and has an external visibility modifier.
     * Interfaces in Solidity do not contain any implementation logic. They serve as agreements on how functions should look like.
     * Any contract that claims to implement ITemplate must provide a function named changeText with the same signature (external, string parameter).
     * Interfaces are crucial for enabling communication and interoperability between different contracts, 
     * As they provide a standard way for contracts to interact without needing to know each other's internal details.
     */

    // Function signature for changing text
    function changeText(string memory _inputText) external;

}