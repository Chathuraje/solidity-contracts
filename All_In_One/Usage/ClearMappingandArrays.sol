//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract ClearMappingandArrays {

    //RESET MAPPING AND ARRAY WITH FOR LOOP
    mapping(address => uint) internal donorsMapping;
    address[] internal donorsArray;

    //ACCOUNT --> CONTRACT
    function donate() external payable {
        donorsMapping[msg.sender] = msg.value;
        donorsArray.push(msg.sender);
    }

    //CONTRACT --> ACCOUNT
    function withdraw() external {
        (bool success, ) = msg.sender.call{value: address(this).balance}("");
        require(success == true, "tx failed");

        for(uint i=0; i<donorsArray.length; i++) {
            donorsMapping[donorsArray[i]] = 0;
        }

        delete donorsArray;
    }

    //to check array length after reset
    function checkLength() external view returns(uint) {
        return donorsArray.length;
    }

    //to check the balance of this contract after reset
    function checkBalance() external view returns(uint) {
        return address(this).balance;
    }


    
}