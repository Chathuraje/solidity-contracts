//SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Events {
    address internal owner;

    constructor() {
        owner = msg.sender;
    }

    /**
    Events
        - In Solidity, events are a way to log and notify external entities 
            (such as user interfaces or other smart contracts) about specific occurrences within a smart contract.
        - They serve as a mechanism for emitting and recording data onto the blockchain, making it transparent and easily accessible.
        - Events are similar to logs or records that capture important information, allowing external observers to react to them and obtain relevant data. 
        - They are stored on the blockchain as part of the transaction history and can be retrieved even after the transaction is complete.

        - The most important aspect of events is gas efficiency. 
        - Emitting events is a gas-efficient way to store and communicate information on the blockchain. 
        - Events consume less gas compared to updating storage variables.

        - But also, vvents facilitate off-chain analysis of smart contract activities. 
        - External tools can monitor events, analyze data, and provide valuable insights without interacting directly with the blockchain.

        ** Event Declaration
            - event Deposit(address indexed _from, bytes32 indexed _id, uint _value);

        ** Event Emit
            - emit Deposit(msg.sender, _id, msg.value);
    */

    event eventTextChange(address changer, string newText);

    string internal text = "Blockchain";
    function changeText(string memory _newText) external {
        text = _newText;
        emit eventTextChange(msg.sender, _newText);
    }

}