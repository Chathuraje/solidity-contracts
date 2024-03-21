// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract StructArray {
    // Create model of the struct (tuple)
    struct Fruits {
        string name;
        uint price;
        bool stock;
    }

    Fruits[] internal fruitsArray; // Internal array to store multiple fruit structs
    // Function to add a new fruit struct to the array
    function addElements(string memory _name, uint _price, bool _stock) external {
        Fruits memory fruit = Fruits(_name, _price, _stock);
        fruitsArray.push(fruit);
    }

    // Function to get the entire array of fruit structs
    function getArray() external view returns(Fruits[] memory) {
        return fruitsArray;
    }
}
