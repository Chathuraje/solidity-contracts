// SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

import "./ContractA.sol";

contract ContractB is ContractA {

    /**
        * ABSTRACT CONTRACT
            - Abstract contracts are contracts that have at least one function without its implementation 
                or in the case when you don’t provide arguments for all of the base contract constructors. 
            - Also in the case when we don’t intend to create a contract directly we can consider the contract to be abstract. 
            - An instance of an abstract cannot be created. 
            - Abstract contracts are used as base contracts so that the child contract can inherit and utilize its functions. 
            - The abstract contract defines the structure of the contract and any derived contract inherited from it should provide an implementation for the incomplete functions, 
                and if the derived contract is also not implementing the incomplete functions then that derived contract will also be marked as abstract. 
            - An abstract contract is declared using the abstract keyword. 
            - An interface is similar to an abstract contract as it must be inherited by another contract like the abstract contract. 
            - An interface functions visibility must be marked as external. 
            - It cannot have a constructor neither can it declare state variables.
            - THIS DOES NOT USE COMMONLY.
    */

    uint a = 12;
    function getSomething() external view override returns(uint) {
        return a;
    }

}
