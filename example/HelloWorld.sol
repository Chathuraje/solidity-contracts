// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract HelloWorld {

  // Public functions/ Variables can be used both externally and internally. For public state variable, Solidity automatically creates a getter function.
  string public publicVar = "Hello World!";

  // Private functions/ Variables can only be used internally and not even by derived contracts.
  string private privateVar = "Hello World!";

  // Internal functions/ Variables can only be used internally or by derived contracts.
  string internal internalVar = "Hello World!";

}
