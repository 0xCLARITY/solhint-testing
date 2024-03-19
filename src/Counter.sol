// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {ICounter} from "./ICounter.sol";

contract Counter is ICounter {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;

        emit Increment(msg.sender, newNumber);
    }

    function increment() public {
        number++;

        emit Increment(msg.sender, number);
    }
}
