# Solidity Contract Repository - Basic Documentation

Welcome to the Solidity Basic Contracts and Tutorials repository! This repository is aimed at providing beginners with a solid foundation in Solidity smart contract development. Whether you're new to blockchain development or looking to strengthen your skills, you'll find helpful resources and example contracts here.

## Table of Contents

1. [Introduction to the Solidity](#1-introduction-to-the-solidity)
2. [Getting Started with Remix IDE](#2-getting-started-with-solidity)
3. [Getting Started with Hardhat](#3-getting-started-with-hardhat)
4. [Hello World Contract](#4-hello-world-contract)
5. [Data Types in Solidity](#5-data-types-in-solidity)
6. [Functions in Solidity](#6-functions-in-solidity)
7. [Constants Variables](#7-constant-variables)
8. [Conditional Statements](#8-conditional-statements-if-and-else)
9. [For and While Loops](#9-for-and-while-loops)
10. [Error Handling](#10-error-handling)
11. [Constructor in Solidity](#11-constructor-in-solidity)
12. [Function Modifires](#12-function-modifires)

## 1. Introduction to the Solidity

Solidity is a programming language used for writing smart contracts on various blockchain platforms, primarily Ethereum. It's designed to target the Ethereum Virtual Machine (EVM) and facilitates the creation of decentralized applications (dApps). Solidity syntax is similar to that of JavaScript, making it relatively easy for developers to learn.

## 2. Getting Started with Remix IDE

Remix IDE is a powerful online development environment for Ethereum smart contract development. It provides features like code editing, compilation, debugging, testing, and deployment, all within a web browser. Here's a basic guide to getting started with Remix IDE:

1. **Accessing Remix IDE**:

   - Go to the Remix IDE website: [https://remix.ethereum.org/](https://remix.ethereum.org/).
   - Once the page loads, you'll see the Remix IDE interface.

2. **Creating a New File**:

   - Click on the "+" button in the file explorer panel on the left side.
   - Choose the appropriate file type for your smart contract (e.g., Solidity).
   - A new file will be created, and you can start coding your smart contract.

3. **Writing Smart Contracts**:

   - Write your Solidity smart contract code in the editor area.
   - You can create multiple files for your project if needed by repeating the file creation process.

4. **Compiling Contracts**:

   - After writing your contract code, click on the "Solidity Compiler" tab located on the left sidebar.
   - Click the "Compile" button to compile your contracts. Any errors or warnings will be displayed in the "Compile" tab.

5. **Deploying Contracts**:

   - Switch to the "Deploy & run transactions" tab located on the left sidebar.
   - Select the contract you want to deploy from the dropdown menu.
   - Choose the appropriate environment (e.g., JavaScript VM, Injected Web3, etc.) for deployment.
   - Click on the "Deploy" button to deploy your contract.

6. **Interacting with Contracts**:

   - Once your contract is deployed, you can interact with it using the provided interface.
   - You can call functions, view state variables, and debug transactions using the interface.

7. **Testing Contracts**:

   - Remix IDE also allows you to write and execute tests for your smart contracts.
   - You can write tests using Solidity or JavaScript and run them within Remix.

8. **Settings and Plugins**:

   - Explore the various settings and plugins available in Remix IDE to customize your development environment according to your needs.
   - Remix offers plugins for additional features such as code analysis, security checks, and more.

9. **Saving and Sharing**:

   - Remix automatically saves your files locally in your browser's storage.
   - You can also export your project as a zip file or share it using the provided buttons.

10. **External Plugins and Integrations**:
    - Remix supports integration with external tools and plugins. You can explore the available plugins and integrations to enhance your development experience further.

This guide should help you get started with Remix IDE for Ethereum smart contract development. Experiment with the features and functionalities provided by Remix to build and test your smart contracts efficiently.

## 3. Getting Started with Hardhat

To get started with Solidity development using Hardhat and Remix IDE, follow these steps:

### Install Node.js and npm:

Ensure that you have Node.js and npm installed on your system. You can download and install them from the [official Node.js website](https://nodejs.org/).

### Install Hardhat:

Hardhat is a development environment for Ethereum that makes it easy to compile, deploy, and test your contracts. Install Hardhat globally by running:

```bash
npm install --save-dev hardhat
```

### Set up your project:

Create a new directory for your Solidity project and navigate into it. Initialize a new Hardhat project by running:

```bash
npx hardhat init
```

### Choose JavaScript or TypeScript:

Let’s create the JavaScript or TypeScript project and go through these steps to compile, test and deploy the sample contract. We recommend using TypeScript, but if you are not familiar with it just pick JavaScript.

```bash
888    888                      888 888               888
888    888                      888 888               888
888    888                      888 888               888
8888888888  8888b.  888d888 .d88888 88888b.   8888b.  888888
888    888     "88b 888P"  d88" 888 888 "88b     "88b 888
888    888 .d888888 888    888  888 888  888 .d888888 888
888    888 888  888 888    Y88b 888 888  888 888  888 Y88b.
888    888 "Y888888 888     "Y88888 888  888 "Y888888  "Y888

👷 Welcome to Hardhat v2.22.3 👷‍

? What do you want to do? …
❯ Create a JavaScript project
  Create a TypeScript project
  Create a TypeScript project (with Viem)
  Create an empty hardhat.config.js
  Quit
```

### Write your contracts:

Use your preferred code editor to write Solidity contracts in the contracts/ directory of your Hardhat project.

### Compile your contracts:

Next, to deploy the contract we will use a Hardhat Ignition module.Inside the ignition/modules folder you will need to create a script for that.

```bash
npx hardhat compile
```

### Deploy your contracts:

First you will need to create a hardhat.config file to do that add the following to your hardhat.config file

```ts
import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
import "@nomicfoundation/hardhat-ignition";
import "@nomicfoundation/hardhat-verify";

import dotenv from "dotenv";
dotenv.config();

const {
  TESTNET_ALCHEMY_RPC_URL,
  TESTNET_WALLET_PRIVATE_KEY,
  TESTNET_ETHSCAN_API_KEY,
} = process.env;

const config: HardhatUserConfig = {
  solidity: "0.8.24",
  defaultNetwork: "sepolia",
  networks: {
    sepolia: {
      url: TESTNET_ALCHEMY_RPC_URL,
      accounts: [`0x${TESTNET_WALLET_PRIVATE_KEY}`],
    },
  },
  etherscan: {
    apiKey: TESTNET_ETHSCAN_API_KEY,
  },
  sourcify: {
    enabled: true,
  },
};

export default config;
```

This code is a TypeScript script that configures a Hardhat project for Ethereum development and deployment. Let's break it down step by step:

This code is a TypeScript script that configures a Hardhat project for Ethereum development and deployment. Let's break it down step by step:

1. **Imports**: The script imports necessary modules from Hardhat and other packages:

   - `HardhatUserConfig`: This is a type definition for the configuration object used by Hardhat.
   - `@nomicfoundation/hardhat-toolbox`: This package provides additional tools and plugins for Hardhat.
   - `@nomicfoundation/hardhat-ignition`: Another plugin for Hardhat, possibly for smart contract deployment.
   - `@nomicfoundation/hardhat-verify`: A plugin for verifying smart contracts on Etherscan.
   - `dotenv`: A package for loading environment variables from a `.env` file.

2. **dotenv configuration**: It loads environment variables from a `.env` file using `dotenv.config()`. This allows sensitive information like API keys and private keys to be stored securely outside of the codebase.

3. **Destructuring environment variables**: It extracts specific environment variables needed for configuration from `process.env` object. These variables are related to Ethereum network configuration, wallet private key, and Etherscan API key.

4. **Configuration object**: It defines a configuration object (`config`) of type `HardhatUserConfig`, specifying various settings for the Hardhat project:

   - `solidity`: Specifies the version of Solidity compiler to use.
   - `defaultNetwork`: Specifies the default network to use for deployments and interactions.
   - `networks`: Defines network configurations. In this case, it defines a network named "sepolia" with its URL and the account to use for transactions (presumably the wallet associated with the private key).
   - `etherscan`: Specifies the API key for Etherscan to enable contract verification.
   - `sourcify`: Enables the Sourcify plugin, which may be used for verifying contract source code on-chain.

5. **Export**: It exports the `config` object as the default export of the module, making it accessible to other parts of the Hardhat project.

Overall, this script sets up the environment for Ethereum smart contract development, specifying network configurations, API keys, and other necessary settings.

Overall, this script sets up the environment for Ethereum smart contract development, specifying network configurations, API keys, and other necessary settings.

### Ignition configuration

Next, to deploy the contract we will use a Hardhat Ignition module.Inside the ignition/modules folder you will need to create a script for that.

deploy.ts

```ts
import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

export default buildModule("MelodyMintModule", (m) => {
  const UserManagmentContract = m.contract("MelodyMintContract");

  return { UserManagmentContract };
});
```

After that we can deploy the contract into the blockchain

```bash
npx hardhat ignition deploy --network sepolia --path ignition/modules/deploy.ts
```

### Verify the contract source code:

Use Hardhat to deploy and test your contracts on a testnet or mainnet . You can also use Remix IDE for testing and debugging in a browser-based environment.

Once the contract is deployed, you can verify it using the Etherscan plugin configured in your hardhat.config.ts file. Run the following command:

```bash
npx hardhat verify --network sepolia <deployed_contract_address> <constructor_variables>
```

By following these steps, you can compile, deploy, and verify your contract source code using the provided configuration.

## 4. Hello World Contract

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;
//pragma solidity ^0.9.0; // Supprots from solidity version 0.9.0 upwards

contract HelloWorld {
    string public publicVar = "Hello World!";
    string private privateVar = "Hello World!";
    string internal internalVar = "Hello World!";
}
```

**1. License and Solidity Version:**

- `// SPDX-License-Identifier: MIT`: This line specifies that the code is licensed under the MIT License, a permissive open-source license.
- `pragma solidity >=0.6.12 <0.9.0;`: This line defines the version of Solidity compiler that this code is compatible with. It specifies that the code will work with Solidity versions greater than or equal to 0.6.12 but less than 0.9.0.

**2. Contract Definition:**

- `contract HelloWorld {`: This line declares a smart contract named `HelloWorld`. A smart contract is a self-executing program stored on the blockchain that can hold and manage data according to the defined rules.

**3. Variables:**
The code defines three variables with different visibility scopes:

- `string public publicVar = "Hello World!";`: This line declares a public variable named `publicVar` of type `string`. The value is initialized to "Hello World!". Because it's public, this variable can be accessed from both inside and outside the contract.
- `string private privateVar = "Hello World!";`: This line declares a private variable named `privateVar` of type `string`. Similar to `publicVar`, it's initialized to "Hello World!". However, since it's private, it can only be accessed from within the `HelloWorld` contract itself.
- `string internal internalVar = "Hello World!";`: This line declares an internal variable named `internalVar` of type `string`. It's initialized with the value "Hello World!". An internal variable can be accessed from within the contract and by contracts that inherit from `HelloWorld`.

In essence, this code provides a basic structure for a Solidity contract demonstrating different visibility levels for variables.

## 5. Data Types in Solidity

### Boolean

```solidity
bool public boolean = false;
```

Initializing Bool variable

### Integer Variable

```solidity
int32 public int32Variable = -60313;
int256 public int256Variable = 23232;
int public unlimitedintVariable = 213123;
```

Initializing 32 and 256 bit limited Integer variables. (int32 and int256) Can use negative and positive numbers. Use smaller sizes for gas efficiency if the range fits your needs

### Unsinged Integer variable

```solidity
uint32 public uint32Variable = 60313;
uint256 public uint256Variable = 23232;
uint public uintVariable = 213123;
```

Initializing 32 and 256 bit limited unsigned Integer variables. (uint32 and uint256) Can only store non-negative (positive) numbers. Use smaller sizes for gas efficiency if the range fits your needs

### String Variables

```solidity
string public stringVariable = "Chathura Ekanayake";
```

Initializing String variable - UTF-8 format

### Byte Variables

```solidity
bytes1 public oneByteVariable = "a"; // 0x61
bytes32 public bytesVariable = "Chathura"; // 0x4368617468757261000000000000000000000000000000000000000000000000
```

Initializing Byte variable(s). Used to store fixed-size raw data. Cheaper to use and stored in hexadecimal format (0x)

### Address Variables

```solidity
address public myAddress = 0x95222290DD7278Aa3Ddd389Cc1E1d165CC4BAfe5;
```

Address, a 20-byte data type to store Ethereum account addresses. Stored in hexadecimal format (0x)

### Enumerator

```solidity
enum Fruits {
    APPLE, // 0 (implicitly assigned)
    ORANGE, // 1
    MANGO // 2
}

Fruits public myFavourite = Fruits.ORANGE;
```

Defining an enumerator (custom named type)

### Arrays

```solidity
string[] public subjectArray = ["Science", "Maths", "ICT"];
uint[] public noArray = [10, 33, 12, 53];
```

Ordered collections of elements of the same data type

### Structs

```solidity
struct Cars {
    string brand; // Car brand as a string
    uint price; // Car price as an unsigned integer
}
Cars public myCar = Cars("Audi", 7462122); // Create a Car object with brand "Audi" and price 7462122
```

User-defined data types that group related variables

### Mappings

```solidity
mapping(address => uint) public balances; // Stores balances associated with addresses
```

Key-value pairs where the key is an address and the value is an unsigned integer

## 6. Functions in Solidity

### 6.1 Basic Functions

Solidity smart contract contains functions to read and write a string value, as well as demonstrate different ways to return values from a function.

#### Read Functions -> Pure or View

Pure - A function that doesn't read or modify the variables of the state
View - Designed to retrieve and return data from the blockchain without modifying the state of the contract

```solidity
string internal myString = "This is My String"; // State variable to store a string

function getMyString() external view returns(string memory) {
    return myString;
}
```

Accessible externally (i.e., from outside the contract) and is view-only (it doesn't modify the contract state). Returns the value of `myString`

#### Write Functions

```solidity
string internal myString = "This is My String"; // State variable to store a string

function writeMyString(string memory _myString) external {
    myString = _myString;
}
```

#### Different Return Statement

```solidity
function getMyString1(uint _a) external pure returns(uint) {
    uint myNum = _a + 5;
    return myNum;
}
```

This function takes an unsigned integer `_a` as input, adds 5 to it, stores the result in a variable `myNum`, and returns `myNum`.

```solidity
function getMyString2(uint _a) external pure returns(uint myNum) {
    myNum = _a + 5;
}
```

This function is similar to `getMyString1`, but the return value is declared in the function signature. It also takes an unsigned integer `_a` as input, adds 5 to it, and assigns the result directly to the return variable `myNum`. There's no explicit return statement; the value of `myNum` is automatically returned because it's declared in the function signature.

This one is cheaper to use. Both functions achieve the same result, but `getMyString2` explicitly declares the return variable in the function signature.

### 6.2. Internal Functions

This contract demonstrates two methods of calling an internal function from within the contract.

Function to return the input number

```solidity
function getNum(uint _number) external pure returns(uint) {
    return _number;
}
```

#### First Method using 'this' keyword

```solidity
function checkThisKeyword(uint _number) external view returns(uint) {
    return this.getNum(_number);
}
```

This method directly calls the getNum function of the current contract instance. The `checkThisKeyword` function uses the `this` keyword to directly call the `getNum` function of the current contract instance.

#### Second Method using a contract variable

```solidity
InternalFunctions internal targetContract;

// Function to set the target contract address
function setContract(address _targetContractAddress) external {
    targetContract = InternalFunctions(_targetContractAddress);
}

// Function to call the getNum function of the target contract instance
function checkContractKeyword(uint _number) external view returns(uint) {
    return targetContract.getNum(_number);
}
```

Declaring an internal variable of type InternalFunctions. The contract declares an internal variable `targetContract` of type `InternalFunctions`. Through the `setContract` function, the address of another contract instance of type `InternalFunctions` can be set. Then, the `checkContractKeyword` function calls the `getNum` function of the target contract instance using this variable.

### 6.3. Call Function

This contract demonstrates how to call an internal function with different methods.

```solidity
// Internal state variables to store product details
string internal name = "KeyBoard";
uint internal price = 1500;
bool internal stock = true;

// Internal function to change the product details
function changeValues(string memory _name, uint _price, bool _stock) internal {
    name = _name;
    price = _price;
    stock = _stock;
}

// External function to call changeValues with specific parameters
function call1() external {
    changeValues("Mouse", 2500, false);
}

// External function to call changeValues with named parameters
function call2() external {
    changeValues({
        _name: "Apple",
        _price: 150,
        _stock: true
    });

// External function to retrieve product details
function getValues() external view returns(string memory, uint, bool) {
    return (name, price, stock);
}
```

## 7. Constant Variables

The code snippet declaring two constant variables in a Solidity contract.

```solidity
address public constant MY_ADDRESS = 0x1234567890123456789012345678901234567890;
uint public constant MY_UINT = 123;
```

Constants in Solidity are variables whose values are set at compile-time and cannot be changed during runtime. Declaring them as public allows other contracts or external entities to read their values. Declaring them as constant ensures that their values remain constant and cannot be modified within the contract itself. Using constants in your contract is generally cheap in terms of deployment cost, and accessing them within the contract does not incur gas costs. However, there might be gas costs associated with accessing constants through function calls from external contracts.

## 8. Conditional Statements (IF and ELSE)

Function to demonstrate conditional statements

```solidity
function findMax() external pure returns (uint) {
    uint a = 10;
    uint b = 20;
    uint result;
    if (a > b) {
        result = a;
    } else {
        result = b;
    }
    return result;
}
```

Terniary Operator

```solidity
function findMax() external pure returns (uint) {
    uint a = 10;
    uint b = 20;

    return (a > b) ? a : b;
}
```

This Solidity contracts defines a function findMax that compares two numbers a and b, and returns the maximum of the two.

## 9. For and While Loops

### For Loop

```solidity
uint[] internal myArray;
function addValues() external {
    // Loop through numbers from 0 to 24.
    for(uint i=0; i<25; i++) {
        // Check if the current number is equal to 11.
        if(i==11) {
            // If the number is 11, skip adding it to the array and continue to the next iteration.
            continue;
        } else {
            // If the number is not 11, add it to the array.
            myArray.push(i);
        }

        // Check if the current number is equal to 18.
        if(i==18) {
            // If the number is 18, exit the loop.
            break;
        }
    }
}
```

This Solidity contract defines a ForLoops contract that demonstrates the usage of for loops in Solidity. It populates an array with numbers from 0 to 24, skipping the number 11, and prematurely exiting the loop when encountering the number 18.

### While Loop

```solidity
uint[] internal myArray;

function addArray() external {
    uint number = 0;
    while(number <= 10) {
        myArray.push(number);
        number++;
    }
}
```

The provided code defines a contract with an internal array myArray and a function addArray to populate this array with numbers from 0 to 10.

## 10. Error Handling

Solidity has many functions for error handling. Errors can occur at compile time or runtime. Solidity is compiled to byte code and there a syntax error check happens at compile-time, while runtime errors are difficult to catch and occurs mainly while executing the contracts. Some of the runtime errors are out-of-gas error, data type overflow error, divide by zero error, array-out-of-index error 

### Require Statements

- The `require` statements declare prerequisites for running the function
    - i.e. it declares the constraints which should be satisfied before executing the code.
- It accepts a single argument and returns a boolean value after evaluation, it also has a custom string message option. 
- If false then exception is raised and execution is terminated. 
- The unused gas is returned back to the caller and the state is reversed to its original state.
```solidity
function requireSendMoney(uint _amount) external pure returns(uint) {
    require(_amount > 0, "Amount must be larger than 0");
    require(_amount <= 1000, "Amount must be smaller than or equal to 1000");

    return _amount;
}
```

### Assert Statements
- Its syntax is similar to the require statement.
- It returns a boolean value after the evaluation of the condition.
- Based on the return value either the program will continue its execution or it will throw an exception.
- Instead of returning the unused gas, the assert statement consumes the entire gas supply and the state is then reversed to the original state.
- Assert is used to check the current state and function conditions before the execution of the contract.
- No need to use this.

```solidity
function assertSendMoney(uint _amount) external pure returns(uint) {
    assert(_amount > 0);
    assert(_amount <= 1000);

    return _amount;
}
```
### Revert Statements
- This statement is similar to the require statement. 
- It does not evaluate any condition and does not depends on any state or statement. 
- It is used to generate exceptions, display errors, and revert the function call. 
- This statement contains a string message which indicates the issue related to the information of the exception. 
- Calling a revert statement implies an exception is thrown, the unused gas is returned and the state reverts to its original state.  
- Revert is used to handle the same exception types as require handles, but with little bit more complex logic.

```solidity
function revertSendMoney(uint _amount) external pure returns(uint) {
    if(_amount > 0 && _amount <= 1000) {
        return _amount;
    } else {
        revert("Amount is Wrong!");
    }
}
```

### Custom Errors
- Solidity allows you to define custom errors using the `error` keyword. 
- Custom errors help optimize gas costs by avoiding unnecessary storage operations and provide more informative error messages.

```solidity
error AmountWrong(address caller, string message);

function customSendMoney(uint _amount) external view returns(uint) {
    if(_amount > 0 && _amount <= 1000) {
        return _amount;
    } else {
        revert AmountWrong(msg.sender, "Amount is Wrong!");
    }
}
```

## 11. Constructor in Solidity
A constructor is automatically executed only once when the contract is deployed to the blockchain. It’s responsible for initializing the contract’s state variables and configuring its initial state. 
- Think of constructors as the “onboarding” process for a contract — setting up everything it needs to function correctly.
- A contract can have only one constructor.
- A constructor code is executed once when a contract is created and it is used to initialize contract state.
- After a constructor code executed, the final code is deployed to blockchain. 
- This code include public functions and code reachable through public functions. 
- Constructor code or any internal method used only by constructor are not included in final code.
- A constructor can be either public or internal.
- A internal constructor marks the contract as abstract.
- In case, no constructor is defined, a default constructor is present in the contract.

```solidity
address public owner;

constructor() {
    owner = msg.sender;
}
```

We can add parameters to get as a input when we deploying the contract.
```solidity
address public owner;

uint public numberAssigned;
constructor(uint _num) {
    owner = msg.sender;
    numberAssigned = _num;
}
```



## 12. Function Modifires
In Solidity, a function modifier is a piece of code that can change the behavior of a function in a contract. Modifiers are used to enforce access control, validate inputs, or perform other checks before executing the actual function code.
Modifiers are a powerful feature in Solidity that help in writing cleaner and more secure code by separating concerns and avoiding code duplication. They can be reused across multiple functions within the same contract.

```solidity
// Declaring a state variable to store the address of the owner.
address public owner;

// Constructor function that sets the deployer's address as the owner.
constructor() {
    owner = msg.sender;
}

// Modifier named onlyOwner, which restricts access to functions only to the owner.
modifier onlyOwner() {
    // Require statement checks if the condition is met, otherwise it reverts the transaction with the provided error message.
    require(msg.sender == owner, "Only owner can call this function");
    // "_" is a placeholder for the code of the function that the modifier is applied to.
    _;
}

// Function to change the owner, accessible only by the current owner.
function changeOwner(address _newOwner) public onlyOwner {
    // Changes the owner to the new address provided.
    owner = _newOwner;
}
```
In the provided Solidity contract, onlyOwner is a function modifier. It restricts access to certain functions by allowing them to be called only by the contract owner. This modifier is then applied to the changeOwner function, ensuring that only the current owner can change the owner address.

```solidity
// Modifier named limit, which checks if the value sent with a transaction is at least equal to the specified amount.
modifier limit(uint _amount) {
    // Require statement checks if the condition is met, otherwise it reverts the transaction with the provided error message.
    require(msg.value >= _amount, "Insufficient value");
    // "_" is a placeholder for the code of the function that the modifier is applied to.
    _;
}

// Function named deposit, which allows users to deposit funds into the contract.
// It is marked as payable because it can receive Ether.
// The limit modifier is applied to ensure that the value sent with the transaction is at least equal to the specified amount.
function deposit(uint _amount) public payable limit(_amount) {
    // Deposit logic
}
```
In summary, the deposit function allows users to deposit funds into the contract, but only if the value sent with the transaction is at least equal to the specified amount. This ensures that users cannot deposit less than the specified amount, enforcing a minimum deposit requirement.

## Contributing

Contributions to this repository are welcome! If you have additional example contracts, tutorials, or improvements to existing content, please feel free to open a pull request. For major changes, please open an issue first to discuss the proposed changes.

## License

This repository is licensed under the MIT License. See the LICENSE file for details.
