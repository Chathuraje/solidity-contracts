// SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Transcations {

    /**
        Before runs transfer and withdraw contract need some eth to cover the gas fees
    */

    // Function to transfer Ether from account to another account. ACCOUNT ---> (CONTRACT) ---> ACCOUNT
    function transfer(address _receiver, uint _amount) external payable {
        (bool success, ) = _receiver.call{value: _amount}("");
        require(success, "Transaction Failed");
    }


    // Function to withdraw Ether from contract to an external account. CONTRACT ---> ACCOUNT
    function withdraw(address _receiver, uint _amount) external {
        (bool success, ) = _receiver.call{value: _amount}("");
        require(success, "Transaction Failed");
    }


    // Function to allow external accounts to deposit Ether into the contract. ACCOUNT ---> CONTRACT
    function deposit() external payable {}


    // Function to retrieve the balance of the contract.
    function getBalance() external view returns(uint) {
        return address(this).balance;
    }
}
