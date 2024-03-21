// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract Modifiers {
    /**
    * Modifier
        - A modifier is a special type of Solidity function that is used to modify the behavior of other functions. 
        - For example, developers can use a modifier to check that a certain condition is met before allowing the function to execute.
        - Modifiers are similar to functions, in that they can take arguments and have a return type. 
        - Modifiers can also be chained together, meaning that you can have multiple modifiers on a single function. 
    */

    // Requre without Modifier
    function normalChangeNum(uint _value) external pure returns(uint) {
        require(_value > 0, "Amount must be larger than 0");
        require(_value <= 1000, "Amount must be smaller than or equal to 1000");
     
        return _value;
    }


    // Same above functions with the Modifier -> Can use multiple times
    modifier isGood(uint _amount) {
        require(_amount > 0, "Amount must be larger than 0");
        require(_amount <= 1000, "Amount must be smaller than or equal to 1000");
        _;
    }
    function modifierChangeNum1(uint _value) external pure isGood(_value) returns(uint){

        return _value;
    }

    function modifierChangeNum2(uint _value) external pure isGood(_value) returns(uint){

        return _value;
    }

}
