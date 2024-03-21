// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract ErrorHandling {
    
    /* Error Handling
    *   Solidity has many functions for error handling. 
    *   Errors can occur at compile time or runtime. 
    *   Solidity is compiled to byte code and there a syntax error check happens at compile-time, 
    *   while runtime errors are difficult to catch and occurs mainly while executing the contracts. 
    *   Some of the runtime errors are out-of-gas error, data type overflow error, divide by zero error, array-out-of-index error
    * 
        1. Require Statements
            - The ‘require’ statements declare prerequisites for running the function 
                i.e. it declares the constraints which should be satisfied before executing the code. 
            - It accepts a single argument and returns a boolean value after evaluation, it also has a custom string message option. 
            - If false then exception is raised and execution is terminated. 
            - The unused gas is returned back to the caller and the state is reversed to its original state. 
    */

    function requireSendMoney(uint _amount) external pure returns(uint) {
        require(_amount > 0, "Amount must be larger than 0");
        require(_amount <= 1000, "Amount must be smaller than or equal to 1000");

        return _amount;
    }

    /*  2. Assert Statements
            - Its syntax is similar to the require statement. 
            - It returns a boolean value after the evaluation of the condition. 
            - Based on the return value either the program will continue its execution or it will throw an exception. 
            - Instead of returning the unused gas, the assert statement consumes the entire gas supply and the state is then reversed to the original state. 
            - Assert is used to check the current state and function conditions before the execution of the contract. 
            - No need to use this.
    */

    function assertSendMoney(uint _amount) external pure returns(uint) {
        assert(_amount > 0);
        assert(_amount <= 1000);

        return _amount;
    }


    /*  3. Revert Statements
            - This statement is similar to the require statement. 
            - It does not evaluate any condition and does not depends on any state or statement. 
            - It is used to generate exceptions, display errors, and revert the function call. 
            - This statement contains a string message which indicates the issue related to the information of the exception. 
            - Calling a revert statement implies an exception is thrown, the unused gas is returned and the state reverts to its original state.  
            - Revert is used to handle the same exception types as require handles, but with little bit more complex logic.
    */

    function revertSendMoney(uint _amount) external pure returns(uint) {
        if(_amount > 0 && _amount <= 1000) {
            return _amount;
        } else {
            revert("Amount is Wrong!");
        }
    }

    /*  3. Custom Errors
            - Solidity allows you to define custom errors using the `error` keyword. 
            - Custom errors help optimize gas costs by avoiding unnecessary storage operations and provide more informative error messages.
    */

    error AmountWrong(address caller, string message);

    function customSendMoney(uint _amount) external view returns(uint) {
        if(_amount > 0 && _amount <= 1000) {
            return _amount;
        } else {
            revert AmountWrong(msg.sender, "Amount is Wrong!");
        }
    }

}
