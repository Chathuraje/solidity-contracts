# Solidity Contract Repository - Basic Documentation

Welcome to the Solidity Basic Contracts and Tutorials repository! This repository is aimed at providing beginners with a solid foundation in Solidity smart contract development. Whether you're new to blockchain development or looking to strengthen your skills, you'll find helpful resources and example contracts here.

## Table of Contents

1. Introduction to the Solidity
2. Getting Started with Remix IDE
3.

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

## Contributing

Contributions to this repository are welcome! If you have additional example contracts, tutorials, or improvements to existing content, please feel free to open a pull request. For major changes, please open an issue first to discuss the proposed changes.

## License

This repository is licensed under the MIT License. See the LICENSE file for details.
