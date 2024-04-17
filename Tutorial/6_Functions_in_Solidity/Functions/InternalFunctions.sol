// SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract InternalFunctions {

    function getNum(uint _number) external pure returns(uint) {
        return _number;
    }

    // First Method -> this
    function checkThisKeyword(uint _number) external view returns(uint) {
        return this.getNum(_number);
    }
    
    // Second Method -> "contract" variable
    InternalFunctions internal targetContract;
    function setContract(address _targetContractAddress) external {
        targetContract = InternalFunctions(_targetContractAddress);
    }
    function checkContractKeyword(uint _number) external view returns(uint) {
        return targetContract.getNum(_number);
    }
}
