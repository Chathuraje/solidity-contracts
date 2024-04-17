// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract CallFunctions {
    string internal name = "KeyBoard";
    uint internal price = 1500;
    bool internal stock = true;

    // Internal function to change the product details
    function changeValues(string memory _name, uint _price, bool _stock) internal {
        name = _name;
        price = _price;
        stock = _stock;
    }

    // External function to call changeValues with specific parameters
    function call1() external {
        changeValues("Mouse", 2500, false);
    }
    // External function to call changeValues with named parameters
    function call2() external {
        changeValues({
            _name: "Apple",
            _price: 150,
            _stock: true
        });
    }

    function getValues() external view returns(string memory, uint, bool) {
        return (name, price, stock);
    }
}
