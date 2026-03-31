// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CounterNumber {
    uint256 public number;

    function setNumber(uint256 _number) public {
        number = _number;
    }
}