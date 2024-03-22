// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

import "./ITemplate.sol";

contract ContractA is ITemplate {
    /**
     * ContractA is a Solidity smart contract.
     * This contract imports the ITemplate.sol file, which contains an interface named ITemplate.
     * ContractA declares a state variable text, initialized with the value "Hello World!". This variable holds the text that can be changed.
     * ContractA implements the ITemplate interface. By doing so, it agrees to provide an implementation for all functions declared in the ITemplate interface.
     * The only function declared in ITemplate is changeText, which ContractA must implement. So, ContractA provides the implementation for the changeText function. 
     * It takes a string _inputText as a parameter and updates the value of text to this input.
     * Because ContractA implements ITemplate, it must provide a function with the same signature as changeText in the interface (external visibility and a string parameter). 
     * By doing this, ContractA ensures it adheres to the agreement specified by the ITemplate interface.
     */
    
    string public text = "Hello World!";
    
    // Function to change the 'text' variable value
    function changeText(string memory _inputText) external {
        text = _inputText;
    }

}