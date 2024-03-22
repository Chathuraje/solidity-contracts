// SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract StorageLocations {

    /**
        * DATA LOCATIONS
            -- Data locations in solidity describe how and where data is kept or accessible on the Ethereum blockchain. 
            -- The Storage, memory, and calldata are the three significant data places offered by Solidity. 
            -- For the creation of smart contracts to be effective and safe, it is crucial to comprehend these data locations.

            1️⃣ Storage
                - The storage data location refers to variables stored permanently on the blockchain. 
                - These variables, typically state variables declared at the contract level, persist across multiple function calls. 
                - They are accessible to all functions within the contract. 
                - However, accessing or modifying storage variables incurs higher gas costs compared to memory variables. 
                - Storage is where state variables are stored. 
                - Remember that we declare state variables in contracts, and they are permanent. 
                - Any changes we make to state variables during a transaction are stored after the transaction ends.
                - We can think of storage as a database (and indeed it is implemented by a database). 
                - Storage works like a key/value dictionary, where both the key and the value are 32 bytes long.

            2️⃣ Memory:
                - The memory data location is used to temporarily store variables during the execution of a function.
                - Memory variables are dynamically allocated and deallocated within the function’s scope.
                - They are not persistent between function calls and are primarily used for local variables or function parameters. 
                - Memory variables offer lower gas costs compared to storage variables. 
                - Can Only declare inside a function
                - Cannot declare uint and it's mutable
                - Very cheap than storage.
                - Memory is not permanent. Variables are placed in memory and used only during the execution of a function. 
                - At the end of the execution of the function, everything that was placed in the memory is erased.

            3️⃣ Calldata:
                - The calldata data location is a special read-only space that contains function arguments. 
                - It is particularly useful for passing large amounts of data to a function without incurring excessive gas costs. 
                - Calldata is mainly used for external function calls.
                - Similer to memory
                - Can only declare inside functions parameeter area
                - Calldata variable cannot update once declare it.
                - also cheaper that memory.
                - Calldata is where arguments passed to functions are temporarily stored. 
                - It is not a place where we can create variables, because it is unique to function arguments. 
                - It is also not possible to change the values of calldata: it is read-only.

            4️⃣ Stacks:
                - It is on the stack where the EVM processing takes place. 
                - The EVM puts information on and off the stack, and it is by manipulating this information from the stack that programs are executed. 
                - Solidity doesn’t have access to the stack, and unless we want to program at a low level.
                - The stack is a temporary storage location used by the Ethereum Virtual Machine (EVM) to hold data during the execution of the contract’s functions. 
                - The stack is used to store values and intermediate results during computation. 
                - Stack is significantly cheaper compared to storage for example, as it stores the values only temporarily.
                - These are the chepest storage types
    */

        // STORAGE VARIABLE
        string public name = "Apple";
        uint[] public year = [2001, 2022, 2024];

        function change1() external {
            year[0] = 1234;
        }

        // STORAGE POINTER VARIABLE
        function change2() external {
            uint[] storage newYear = year; // Cannot declare this outside of a function. This runs only until function's runs
            newYear[0] = 4356;
        }


        // MEMORY VARIABLE
        function getText(string memory _text) external pure returns(string memory) {
            string memory newText = _text;

            return newText;
        }


        // CALLDATA VARIABLE
        function getWord(string calldata _text) external pure returns(string calldata) {
            return _text;
        }


        // STACKS VARIABLE
        function getNum(uint _number) external pure returns(uint) {
            return _number;
        }


}
