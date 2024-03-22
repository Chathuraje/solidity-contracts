// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

// ContractB inherits from ContractA
contract CallbackAndRecive {

    /**
        * Payable, Fallback, and Receive
        -- Fallback Function 🎯
                - The fallback function serves as a safety net for handling unexpected situations within a smart contract. 
                - It prevents transactions from failing and ensures a graceful recovery when undefined functions are invoked. 
                - Additionally, the fallback function facilitates the reception of Ether without requiring a specific function call, 
                    making it an essential tool for implementing payment systems within contracts.
                - If a function that doesn't exist is called
                - Ether is sent directly to a contract but receive() doesn't exist or msg.data isn't empty, 
                    fallback has a 2300 gas limit when called by transfer or send.
                - It is called when the contract names a function that doesn't exist.
                - Must be marked as external, It has no name, It has no arguments, It can't return anything back, It's usually defined together with contracts.
                - If the contract is not marked as payable, it will throw an exception if it gets just plain ether without any data.
                - If a contract only gets plain Ether and no other information about the transaction, fallback functions are called.
                - This choice for the default design is smart and helps protect users.
        
        -- Payable Function
                - In Solidity, the payable modifier is used to allow a function to receive Ether. Without this modifier, 
                    if you attempt to send Ether to a function, the transaction will be rejected and will fail.
        
        -- Receive Function
                - The fallback function in Solidity is a special function that is executed when a contract receives 
                    Ether along with a call to a function that does not exist in the contract, or if no data is supplied with the transaction. 
                - This function must be marked as payable if you want the contract to be able to receive Ether in this way.
    */

    event LogDetails(string funcName, bytes FuncData);

    fallback() external payable { 
        emit LogDetails("fallbakc", msg.data);
    }

    receive() external payable { 
        emit LogDetails("recive", "");
    }

    function getBalance() external view returns(uint) {
        return address(this).balance;
    }
}
