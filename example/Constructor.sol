// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract Constructor {
    /**
    * Constructor
        - A constructor is automatically executed only once when the contract is deployed to the blockchain.
        - It’s responsible for initializing the contract’s state variables and configuring its initial state. 
        - Think of constructors as the “onboarding” process for a contract — setting up everything it needs to function correctly.
            - A contract can have only one constructor.
            - A constructor code is executed once when a contract is created and it is used to initialize contract state.
            - After a constructor code executed, the final code is deployed to blockchain. 
            - This code include public functions and code reachable through public functions. 
            - Constructor code or any internal method used only by constructor are not included in final code.
            - A constructor can be either public or internal.
            - A internal constructor marks the contract as abstract.
            - In case, no constructor is defined, a default constructor is present in the contract.
    */

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    /**
    - We can add parameters to get as a input when we deploying the contract.
        uint public numberAssigned;
        constructor(uint _num) {
            owner = msg.sender;
            numberAssigned = _num;
        }
    */

}
