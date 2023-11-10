// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Assessment {
    address public owner;

    // Constructor to initialize the owner variable
    constructor() {
        owner = msg.sender;
    }

    // Modifier that checks if the sender is the owner
    modifier onlyOwner() {
        // Checks if value msg.sender is owner
        require(msg.sender == owner, "Access denied! Only the owner can call this function.");
        _;
    }

    function requireExample(int _value) public pure returns (int) {
        // Checks if value is greater than 0
        require(_value > 0, "Value must be greater than zero.");
        return _value;
    }

    function assertExample(int _a, int _b) public pure returns (int) {
        // Using assert() to check an invariant
        assert(_a > _b);
        return _a - _b;
    }

    function revertExample(int _value) view external onlyOwner returns (int){
        // Using revert() to revert the transaction with a custom error message
        if(!(_value > 0)){
            revert("Value must be greater than zero.");
        }
        return _value;
    }
}
