//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Inheritance {
    address internal owner;

    constructor() {
        owner = msg.sender;
    }

    /**
    Import Inheritance
        - 
    */

    function getTimeUnits() external view returns(uint, uint, uint, uint, uint, uint){
        
        return (block.timestamp, 1 seconds, 1 minutes, 1 hours, 1 days, 1 weeks);
    }

}