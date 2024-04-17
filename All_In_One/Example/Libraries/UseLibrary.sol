//SPDX-License-Identifier: MIT

pragma solidity >=0.8.10;

import "./CreateLibrary.sol";
import {Library1, Library3} from "./CreateLibrary.sol";

contract UseLibrary {

    using Maths for uint;

     uint a = 10;
     uint b = 10;

     uint c = a.add(b);
}