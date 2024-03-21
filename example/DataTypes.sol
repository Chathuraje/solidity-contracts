// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract DataTypes {
 
    // Initializing Bool variable
    bool public boolean = false;
     
    // Initializing 32 and 256 bit limited Integer variable -> can use thease to save the gas
    // Can use negetive and positive numbers
    int32 public int_32_variable = -60313;
    int256 public int_256_variable = 23232;
    int public unlimited_int_variable = 213123;


    // Initializing 32 and 256 bit limited unsinged Integer variable -> can use thease to save the gas
    // Exclude the negetive numbers and can only store positive numbers
    uint32 public uint_32_variable = 60313;
    uint256 public uint_256_variable = 23232;
    uint public uunlimited_int_variable = 213123;
 
    // Initializing String variable - UTF8 Fromat
    string public string_variable = "Chathura Ekanayake";
 
    // Initializing Byte variable. used to store fixed size words
    // Cheaper to use and stored in hexadecimal format (0x)
    bytes1 public one_byte_variable = "a";
    bytes8 public ten_byte_variable = "Chathura";

    // Address, 20 bytes data type to store account address in ethereum
    // Store in Hexadecimal format (0x)
    address public myAddress = 0x95222290DD7278Aa3Ddd389Cc1E1d165CC4BAfe5;
     
    // Defining an enumerator
    enum Fruits {
        APPLE, // 0
        ORANGE, // 1
        MANGO // 2
    }
    Fruits public myFavourite = Fruits.ORANGE;

    // Arrays
    string[] public subjectArray = ["Science", "Maths", "ICT"];
    uint[] public noArray = [10, 33, 12, 53];


    // Structs - Customizable data types
    struct Cars {
        string brand;
        uint price;
    }
    Cars public myCar = Cars("Audi", 7462122);


    // Declaring a mapping that associates addresses with uint values - Key:Value Pairs
    //  balances[msg.sender] = newBalance;
    mapping(address => uint) public balances;
    

}
