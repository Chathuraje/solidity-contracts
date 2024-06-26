// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract DataTypes {
 
    // Initializing Bool variable
    bool public boolean = false;
     
    // Initializing 32 and 256 bit limited Integer variable -> can use thease to save the gas
    // Can use negetive and positive numbers
    int32 public int32Variable = -60313;
    int256 public int256Variable = 23232;
    int public unlimitedintVariable = 213123;


    // Initializing 32 and 256 bit limited unsinged Integer variable -> can use thease to save the gas
    // Exclude the negetive numbers and can only store positive numbers -> uint = Unlimited Integer variable
    uint32 public uint32Variable = 60313;
    uint256 public uint256Variable = 23232;
    uint public uintVariable = 213123;
 
    // Initializing String variable - UTF8 Fromat
    string public stringVariable = "Chathura Ekanayake";
 
    // Initializing Byte variable. used to store fixed size words
    // Cheaper to use and stored in hexadecimal format (0x)
    bytes1 public oneByteVariable = "a"; // 0x61
    bytes32 public bytesVariable = "Chathura"; // 0x4368617468757261000000000000000000000000000000000000000000000000

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
