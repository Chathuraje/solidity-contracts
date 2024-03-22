// SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract CompoundInterest {

    function generateCompundInterst(uint _priniciple, uint _period, uint _rate) external pure returns(uint) {

        for(uint i = 0; i < _period; i++) {
            uint yields = _priniciple * _rate / 100;
            _priniciple += yields;
        }

        return _priniciple;
        
    }
   
}
