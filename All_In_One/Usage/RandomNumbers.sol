// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract RandomNumbers {
    /**
    * 1. Get msg.sender, number, block.timestamp
    * 2. Mix them and convert them to bytes using abi.encodePacked()
    * 3. Hash it using keccak256()
    * 4. Convert it into a number
    */

    function GenerateRandomNumber1() external view returns(uint){
        uint randomNum = 99;
        randomNum = uint(keccak256(abi.encodePacked(msg.sender, randomNum, block.timestamp)));
        randomNum %= randomNum % 100;

        return randomNum;
    }

    function GenerateRandomNumber2() external view returns(uint){
        return block.prevrandao;
    }

}
