//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract ArraysAndMappings {

    // Thease are exactly the same
    // Mappings are Cheap and easy to use

    //NGO MEMBERSHIP CONTRACT - MAPPING
    mapping(address => bool) public myMapping;
    function addMember1(address _newMember) external {
        myMapping[_newMember] = true;
    }
    function checkMember1(address _newMember) external view returns(bool) {
        return myMapping[_newMember];
    }

    /**
     * Members Mapping now we can use the address as a key to access the value, if the use is a new member it will return true or false
     * 0xc8ba0968eC45AaE4A2d683650082610270Dc5C8E => true
     * 0x4080b88e1858804800803ebB811e4A368208BCA1 => true
     * 0xC9C29E8030b8bC5bF8774682e0D3C4028B6196D3 => true
     * 
     */



    //NGO MEMBERSHIP CONTRACT - ARRAY
    address[] public myArray;
    function addMember2(address _newMember) external {
        myArray.push(_newMember);
    }
    function checkMember2(address _newMember) external view returns(bool) {
        bool status = false;
        for(uint i=0; i<myArray.length; i++) {
            if(myArray[i] == _newMember) {
                status = true;
                break;
            }
        }
        return status;
    }

    /**
     * Members in array started with key of array element to find the members are new we need to run it through the loop and it's costly and time consuming
     * myArray[0] = 0xc8ba0968eC45AaE4A2d683650082610270Dc5C8E
     * myArray[1] = 0x4080b88e1858804800803ebB811e4A368208BCA1
     * myArray[2] = 0xC9C29E8030b8bC5bF8774682e0D3C4028B6196D3
     * 
     */



}