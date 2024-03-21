// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract Struct {
    string public name = "Orange";
    uint public price = 150;
    bool public stock = true;

    struct Fruits {
        string name;
        uint price;
        bool stock;
    }

    Fruits public fruit1 = Fruits("Orange", 150, true);
}
