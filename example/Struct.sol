// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Struct {
    /** Normal Variables
    * string public name = "Orange";
    * uint public price = 150;
    * bool public stock = true;
    */

    // Create model of the struct (tuple)
    struct Fruits {
        string name;
        uint price;
        bool stock;
    }

    // Create a fruit1 Struct and store values
    Fruits public fruit1 = Fruits("Orange", 150, true);
    
    Fruits internal fruit2;
    function createVar(string memory _name, uint _price, bool _stock) external {
        fruit2 = Fruits(_name, _price, _stock);
    }

    function returnVar() external view returns(Fruits memory) {
        return fruit2;
    }

    function updateVarPrice(uint _newPrice) external {
        fruit2.price = _newPrice;
    }
    
    function getVarPrice() external view returns(uint) {
        return fruit2.price;
    }

    function changeVarStockStatus() external {
        fruit2.stock = !fruit2.stock;
    }

}
