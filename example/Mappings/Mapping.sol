// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract Mappings {

    /**
    * Mapping in Solidity acts like a hash table or dictionary in any other language. 
    * These are used to store the data in the form of key-value pairs.
    * A key can be any of the built-in data types but reference types are not allowed while the value can be of any type. 
    * Mappings are mostly used to associate the unique Ethereum address with the associated value type.
    * mapping(key => value) <access specifier> <name>;
    */

    mapping(uint => string) internal myMapping;

    function addValues(uint _num, string memory _word) external  {
        myMapping[_num] = _word;
    }

    function getValues(uint _num) external view returns(string memory) {
        return myMapping[_num];
    }
}
