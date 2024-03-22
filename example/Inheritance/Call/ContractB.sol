// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

// Importing the ContractA.sol file to inherit from ContractA
import "./ContractA.sol";

// ContractB inherits from ContractA
contract ContractB is ContractA {

    /** ----------------------------------------------------------------------------
    * CALL FUNCTION
        - The call function in Solidity is a low level function developers use to interact with other contracts.
        - When building a Solidity smart contract, the call method should be used anytime you want to interact with another contract from your own contract.
        - Calls can also be used to execute other functions in the recipient smart contract, using Ether provided by the caller to pay for the transaction. 
        - The call function also has the advantage of returning the transaction status as a boolean with the return value sent as a variable. 
        - When you use the call function to invoke a function of another contract, it can potentially change the state of that contract.

        -- Error Handling
            - When using call, it's crucial to handle errors properly. 
            - Solidity does not automatically propagate exceptions from external calls, 
            - So you need to check the return value of call for success or failure and handle any potential errors accordingly. 
            - Failure to handle errors can result in unexpected behavior or vulnerabilities in your smart contract.

        -- Gas Limit
            - When calling external contracts or functions using call, you need to specify the gas limit explicitly. 
            - If you don't provide enough gas, the call might fail due to an out-of-gas error. 
            - Conversely, providing too much gas could result in wasted gas and increased transaction costs.


        --------------------------------------------------------------------------------------------------------------------------------------------------------------------
        - Caller Contract: 
            This is the contract that contains the logic to call another contract using the call function. You will need to deploy this contract.

        - Target Contract: 
            - This is the contract that contains the function you want to call using call. 
            - If this contract has already been deployed on the blockchain, you don't need to redeploy it. 
            - You can interact with the existing contract by specifying its address in your call function.
    --------------------------------------------------------------------------------------------------------------------------------------------------------------------
    */

    bytes internal data1;
    function callFunction(uint _number1, uint _number2, address _otherContracAddress) external {
        
        (bool success, bytes memory data) = _otherContracAddress.call(
            abi.encodeWithSignature("addNumbers(uint256, uint256)", _number1, _number2)
        );
        data1 = data;
        require(success, "Call Failed");
    }

}
