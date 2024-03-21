// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Struct {
    // Create model of the struct (tuple)
    struct Fruits {
        string name;
        uint price;
        bool stock;
    }

    // Create a fruit1 Struct and store values
    Fruits public fruit1 = Fruits("Orange", 150, true);

    
    Fruits internal fruit2; // Internal variable to store a fruit struct
    // Function to create a new fruit struct and store values
    function createVar(string memory _name, uint _price, bool _stock) external {
        fruit2 = Fruits(_name, _price, _stock);
    }

    // Function to return the stored fruit struct
    function returnVar() external view returns(Fruits memory) {
        return fruit2;
    }

    // Function to update the price of the stored fruit
    function updateVarPrice(uint _newPrice) external {
        fruit2.price = _newPrice;
    }

    // Function to get the price of the stored fruit
    function getVarPrice() external view returns(uint) {
        return fruit2.price;
    }

    // Function to change the stock status of the stored fruit
    function changeVarStockStatus() external {
        fruit2.stock = !fruit2.stock;
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
