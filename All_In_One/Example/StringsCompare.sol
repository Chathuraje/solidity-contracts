// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract Strings {
    /**
    *   This contract provides a method to compare strings in Solidity,
    *   mimicking the behavior of string comparison in other programming languages.
    *   Solidity does not support direct string comparison like other languages.
        *   if (_word == "apple"){
        *       return true;
        *   } else {
        *       return false;
        *   }

    * For this we need to use some other metods
        - keccak256() ---> In Solidity, keccak256 is a cryptographic hash function that computes the Keccak-256 hash of the input 
        - bytes() --- abi.encodePacked() --- abi.encode()

    *   To achieve string comparison:
        *   1. Convert both strings to bytes and pack them using abi.encodePacked() or abi.encode().
        *   2. Hash the packed bytes using keccak256().
        *   3. Compare the resulting hashes.
    */

    // Method to compare two strings
    function compare(string memory _word) external pure returns(bool) {
        // Convert and hash both strings and compare the hashes
        if (keccak256(abi.encodePacked(_word)) == keccak256(abi.encodePacked("apple"))){
           return true; // If strings match, return true
        } else {
           return false; // If strings don't match, return false
        }
    }
}
