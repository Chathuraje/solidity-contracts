//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract ContractA {
   
   /**
    * In Solidity, delegatecall is a low-level function that allows a contract to delegate its call to another contract 
    *   (borrowing the functionality of another contract) while still preserving its own storage and context. 
    * When a contract makes a delegatecall, the code at the target address is executed in the context of the calling contract. 
    * This means that the storage, state variables, and functions of the calling contract are accessible to the code being executed.
    * 
    * To understand how delegatecall works better, let's consider the following scenario:
    *   - Let’s imagine that you’re a contractor👷 and you’ve been hired to build a house🏠. You’re responsible for coordinating with various other contractors 
    *       who will be responsible for different aspects of the project, such as plumbing, electrical, carpentry, e.t.c.
    *   - In this scenario, you are like the calling contract, and the other contractors are like the contracts that you will be calling using delegatecall.
    *   - Now, imagine that you need the plumber to come in and install the pipes in the house. 
    *   - Instead of doing it yourself, you can use delegatecall to call the plumber and have him install the pipes for you. 
    *   - When you use delegatecall, the plumber comes to your worksite and installs the pipes in the context of your project rather than their own. 
    *   - This means that the plumber can access the tools, materials, and workers that you have available rather than having to bring their own. 
    *   - However, the plumber will still use their own expertise and knowledge to install the pipes correctly.
    * 
    *   - Similarly, when you use delegatecall in a smart contract, you can call another contract and execute its code in the context of your own contract. 
    *   - This allows you to access your own storage, state variables, and functions while still being able to execute the code of the other contract.
    */

    
    string public text = "Hello, world!";
    function changeText(string memory _text) public {
        text = _text;
    }

}