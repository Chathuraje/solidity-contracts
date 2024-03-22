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



        /**
            - CONSTANT VARIABLES AND IMMUTABLE VARIABLES
                - State variables can be declared as constant or immutable. 
                - In both cases, the variables cannot be modified after the contract has been constructed. 
                - For constant variables, the value has to be fixed at compile-time, while for immutable, it can still be assigned at construction time.
                - It is also possible to define constant variables at the file level.
                - The compiler does not reserve a storage slot for these variables, and every occurrence is replaced by the respective value.
                - Compared to regular state variables, the gas costs of constant and immutable variables are much lower. 
                - For a constant variable, the expression assigned to it is copied to all the places where it is accessed and also re-evaluated each time. 
                - This allows for local optimizations. 
                - Immutable variables are evaluated once at construction time and their value is copied to all the places in the code where they are accessed. 
                - For these values, 32 bytes are reserved, even if they would fit in fewer bytes. 
                - Due to this, constant values can sometimes be cheaper than immutable values.
                - Not all types for constants and immutables are implemented at this time. 
                - The only supported types are strings (only for constants) and value types.
                - Variable Names should be CAPITAL


                1️⃣ Constant
                    - For constant variables, the value has to be a constant at compile time and it has to be assigned where the variable is declared. 
                    - Any expression that accesses storage, 
                        blockchain data (e.g. block.timestamp, address(this).balance or block.number) or 
                        execution data (msg.value or gasleft()) or 
                        makes calls to external contracts is disallowed. 
                    - Expressions that might have a side-effect on memory allocation are allowed, but those that might have a side-effect on other memory objects are not.
                    - The built-in functions keccak256, sha256, ripemd160, ecrecover, addmod and mulmod are allowed 
                        (even though, with the exception of keccak256, they do call external contracts).
                    - The reason behind allowing side-effects on the memory allocator is that it should be possible to construct complex objects like 
                        e.g. lookup-tables. This feature is not yet fully usable.
                    - Can initialte inside constructor 

                2️⃣ Immutable
                    - Variables declared as immutable are a bit less restricted than those declared as constant: 
                    - Immutable variables can be assigned a value at construction time. 
                    - The value can be changed at any time before deployment and then it becomes permanent.
                    - One additional restriction is that immutables can only be assigned to inside expressions for which there is no possibility of being executed after creation. 
                    - This excludes all modifier definitions and functions other than constructors.
                    - There are no restrictions on reading immutable variables. 
                    - The read is even allowed to happen before the variable is written to for the first time because variables in 
                        Solidity always have a well-defined initial value. For this reason it is also allowed to never explicitly assign a value to an immutable.
                    - cannot initiate inside constructor
                    - 
        */


        // Constant
        uint public immutable MY_NUM = 1245;

        // Imutable
        string public constant MY_COUNTRY = "New Zeland"; 

}
