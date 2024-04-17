// SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

abstract contract ContractA {

    string public Text = "Hello World!";
    function changeText(string memory _text) external{
        Text = _text;
    }
    
    function getSomething() external view virtual returns(uint);

}
