// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

contract UserControls {
    
        // Mapping to store user details
        mapping(address => User) public users;
    
        // Struct to store user details
        struct User {
            string name;
            string email;
            uint age;
        }
    
        // Function to add user details
        function addUser(string memory _name, string memory _email, uint _age) public {
            users[msg.sender] = User(_name, _email, _age);
        }
    
        // Function to get user details
        function getUser() public view returns (string memory, string memory, uint) {
            User memory user = users[msg.sender];
            return (user.name, user.email, user.age);
        }
    
        // Function to update user details
        function updateUser(string memory _name, string memory _email, uint _age) public {
            User storage user = users[msg.sender];
            user.name = _name;
            user.email = _email;
            user.age = _age;
        }
    
        // Function to delete user details
        function deleteUser() public {
            delete users[msg.sender];
        }
}
