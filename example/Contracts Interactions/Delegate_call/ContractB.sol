// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract ContractB {

    function delegatecall(address _otherContracAddress, string memory _word) external {
            
            bytes memory data1;
            (bool success, bytes memory data) = _otherContracAddress.delegatecall(
                abi.encodeWithSignature("changeText(string)", _word)
            );
            require(success, "Delegate Call Failed");
            data1 = data;
    }
}