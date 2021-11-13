// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import "hardhat/console.sol";

contract ExampleRegistry {
    string public message;

    event MessageSet(address indexed sender, string message);

    constructor(string memory _message) {
        message = _message;
    }

    function setMessage(string calldata _message) external {
        message = _message;
        emit MessageSet(msg.sender, message);
    }
}
