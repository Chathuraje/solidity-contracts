// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract Assembly {

    /**
        - You can interleave Solidity statements with inline assembly in a language close to the one of the Ethereum Virtual Machine. 
        - This gives you more fine-grained control, which is especially useful when you are enhancing the language by writing libraries.
        - The language used for inline assembly in Solidity is called Yul.
        - Inline assembly is a way to access the Ethereum Virtual Machine at a low level. 
        - This bypasses several important safety features and checks of Solidity. 
        - You should only use it for tasks that need it, and only if you are confident with using it.
        

        SMART CONTRACT --> COMPILATION --> BYTECODE --> OPCODE --> EVM
    */

    // Normal Way
    function normalAddNumbers(uint _a, uint _b) public pure returns (uint) {
        return _a + _b;
    }

    // Assembly Way
    function assemblyAddNumbers(uint _a, uint _b) public pure returns (uint) {
        assembly {
            let c := add(_a, _b) // Using inline assembly to add two numbers
            mstore(0x0, c)       // Storing the result in memory at position 0x0
            return(0x0, 0x20)    // Returning the result pointer and its size
        }
    }


    // Return a uint storage variable using assembly
    uint internal number = 10;

    function asemblyReturn1() public view returns(uint) {
        assembly {
            let x := sload(number.slot) // Loading a value from storage to EVM register
            mstore(0x0, x)               // Storing the value in memory at position 0x0
            return (0x0, 0x20)           // Returning the result pointer and its size
        }
    }

    function asemblyReturn2() public view returns(uint) {
        assembly {
            let x := sload(number.slot) // Loading a value from storage to EVM register
            mstore(0x0, x)               // Storing the value in memory at position 0x0
            return (0x0, 0x20)           // Returning the result pointer and its size
        }
    }



    /**
        - sload(): loads a value from storage to EVM register.
                    (EVM Register: an exlusive data location used by EVM for contract execution. It is a memory location but not the main memory)

        - mstore(): loads a value from EVM Register to the main/free memory. 
                     Or loads a values from stack memory to EVM register and then to main/free memory.
                     cannot load a value from contract storage.
    */

}
