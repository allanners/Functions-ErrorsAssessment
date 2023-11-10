# Functions & Errors Assessment

This Solidity program is a simple short program that demonstrates error handling in the Solidity programming language. The goal of this program is to use the methods require(), assert(), and revert() and show how to handle errors gracefully. 

## Description

This program is a smart contract that contains a constructor, a modifier, and three functions for each method used for handling errors. The constructor initializes the value of the of the owner variable. The modifier checks if the user accessing a function is the owner. The three functions, namely requireExample(), assertExample(), and revertExample() serves as examples on how to use the methods require(), assert(), and revert() respectively.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., FunctionsErrorsAssessment.sol). Copy and paste the following code into the file: 
```javascript
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
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.13" (or another compatible version), and then click on the "Compile SolidityProject.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "SolidityProject" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the all the functions and interacting with the variables.


