// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract Enums {
    /**
    * Enums restrict a variable to have one of only a few predefined values. The values in this enumerated list are called enums.
    * With the use of enums it is possible to reduce the number of bugs in your code.
    * For example, 
    *   if we consider an application for a fresh juice shop, 
    *   it would be possible to restrict the glass size to small, medium, and large. 
    *   This would make sure that it would not allow anyone to order any size other than small, medium, or large.
    */

    enum Juices {SMALL, MEDIUM, LARGE} // Maximum 255 items can be put inside enum list

    Juices internal myChoise;
    
    function set1() external {
        // myChoise = Juice(1)
        myChoise = Juices.LARGE;
    }

    function getValue() external view returns(Juices) {
        return myChoise;
    }

    // Create a Array with Enum
    Juices[] internal clientChoices = [Juices.LARGE, Juices.SMALL];
    function getArrayValues() external view returns(Juices[] memory) {
        return clientChoices;
    }
}
