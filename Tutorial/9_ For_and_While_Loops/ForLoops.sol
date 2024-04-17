// SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

// This Solidity contract defines a ForLoops contract that demonstrates the usage of for loops in Solidity. 
// It populates an array with numbers from 0 to 24, skipping the number 11, and prematurely exiting the loop when encountering the number 18.
// External callers can retrieve the populated array using the getArray function.
contract ForLoops {
    uint[] internal myArray;

    function addValues() external {

        // Loop through numbers from 0 to 24.
        for(uint i=0; i<25; i++) {
            // Check if the current number is equal to 11.
            if(i==11) {
                // If the number is 11, skip adding it to the array and continue to the next iteration.
                continue;
            } else {
                // If the number is not 11, add it to the array.
                myArray.push(i);
            }

            // Check if the current number is equal to 18.
            if(i==18) {
                // If the number is 18, exit the loop.
                break;
            }
        }
    }

    function getArray() external view returns(uint[] memory) {
        return myArray;
    }
}
