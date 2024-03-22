// SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

library Maths {

    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }
}

library Library1 {
    // Code and functions here
}

library Library2 {
    // Code and functions here
}

library Library3 {
    // Code and functions here
}

    /**
        * LIBRARIES
            -- Imagine you are working on a large-scale blockchain project that involves multiple smart contracts interacting with each other. 
                One of the requirements of your project is to implement a complex authentication mechanism that involves encryption, decryption, and user authentication, 
                for example. To achieve this, you can create a library specifically dedicated to handling the authentication logic. 
                This library can contain functions for encrypting and decrypting user data, verifying user credentials, and managing access control. 
                By creating a library for this authentication logic, you ensure that it is consistently applied across all the smart contracts within your project.
                
                Now, let’s consider a scenario where you have multiple smart contracts that require authentication. 
                For instance, you may have a contract for user registration, a contract for conducting transactions, and a contract for accessing sensitive information. 
                Instead of duplicating the authentication code in each of these contracts, you can simply import and utilize the authentication library.
                
                By using the library, you achieve code reusability as the authentication logic is centralized in one place. 
                Any updates or improvements to the authentication mechanism can be made in the library, and all the smart contracts using the library will 
                    automatically benefit from these changes. This approach not only reduces code duplication but also enhances code maintainability and reduces the
                    chances of introducing errors across multiple smart contracts.
                
            -- We can infer libraries in Solidity as a type of smart contract that contain reusable pieces of code. 
            -- This reusability allows multiple contracts to efficiently leverage the functionality provided by the library without duplicating the code within each contract. 
            -- They are similar to contracts but differ in how they are deployed and used.

            -- Advantages of using Libraries
                - Gas Optimization/Efficiency: By using libraries, you can optimize gas costs and contract size by avoiding code duplication. 
                        This results in more efficient and cost-effective smart contracts.
                - Code Organization: Libraries help organize code by separating reusable logic into standalone entities. 
                        This improves readability, maintainability, and overall code structure.
                - Security and Consistency: By using libraries, you can ensure that critical functionalities, such as authentication or arithmetic calculations, 
                        are implemented consistently and securely across multiple contracts.
                - Simplified Development: Leveraging libraries simplifies the development process by providing pre-built and tested code components that can be easily 
                        integrated into smart contracts.
                - Collaboration and Standardization: Libraries foster collaboration and standardization within the developer community by offering a shared collection of 
                        functionalities that can be utilized across various projects. A prime example of this is the widespread use of OpenZeppelin’s SafeMath library.

    */
