//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Operators {
    address internal owner;

    constructor() {
        owner = msg.sender;
    }

    //AND in require: &&
    function getNumber1(uint _number) external pure returns(uint) {
        require(_number > 100 && _number < 2300, "Not in Range");
        return _number;
    }

    //OR in require: ||
    function getNumber2(uint _number) external pure returns(uint) {
        require(_number > 230 || _number < 40, "Not in Range");
        return _number;
    }

    //OR in return
    function getNumber3(uint _number) external pure returns(bool) {
        return _number > 910 && _number < 4200;
    }

    //AND in return
    function getNumber4(uint _number) external pure returns(bool) {
        return _number > 144 || _number < 120;
    }

    //With IF
    function getNumber5(uint _number) external pure returns(bool) {
        if(_number > 330 || _number < 19) {
            return true;
        } else {
            return false;
        }
    }
}