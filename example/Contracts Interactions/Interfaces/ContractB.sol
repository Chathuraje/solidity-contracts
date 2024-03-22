// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

import "./ITemplate.sol";

contract ContractB {
    /** ----------------------------------------------------------------------------
        - INTERFACE
            - Solidity interface serves as a blueprint, defining a set of function declarations that contracts must adhere to within the Ethereum ecosystem. 
            - Solidity interfaces allow contracts to communicate and collaborate effortlessly, fostering interoperability. 
            - By specifying function names, parameter types, and return types without implementing the actual code, 
            - Solidity interfaces enable contracts to interact seamlessly with one another and external entities. 
            - They provide a common language of interaction, facilitating the development of complex systems on the Ethereum blockchain. 

            - The Solidity interface can inherit from other interfaces
            - Contracts can inherit interfaces as they would inherit other contracts
            - You can override an interface function
            - Data types defined inside interfaces can be accessed from other contracts


            INTERFACE - To access standard functions
            CALL - To access specific functions
    */

   ITemplate public targetContract;
   function interfaceContract(string memory _text, address _otherContracAddress) external {
        // Instantiating ConA with the provided contract address
        targetContract = ITemplate(_otherContracAddress);
        // Calling the changeText function of ContractA to update the text
        targetContract.changeText(_text);
   }

}
