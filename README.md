## RequireRevertAssert

This Solidity program is a simple "Bank Operations" program that demonstrates the basic syntax and functionality of the Solidity programming language. The purpose of this program is to understand the working and functionality of the require(), assert(), revert().

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has a five functions:
1. deposit(uint amount)
  Allows users to deposit funds into their account.
  Requires the deposit amount to be greater than 50.
  Asserts that the balance has increased after the deposit.

2.withdraw(uint amount)
  Allows users to withdraw funds from their account.
  Requires the user to have sufficient balance.
  Reverts if the withdrawal amount exceeds the daily limit of 500.
  
3.transfer(address recipient, uint amount)
  Allows users to transfer funds to another account.
  Requires the user to have sufficient balance.
  Requires a valid recipient address.
  
4.getBalance()
  Returns the current balance of the user's account.
  
5.onlyOwner()
  A restricted function that can only be called by the contract owner.
## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., BankOperations.sol). 

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.0" or above, and then click on the "RequireAsserRevert.sol.sol" button.
The code of the program can be checked on clicking the link:
[Code of BankOperations](https://github.com/AdiTiw-95/RequireRevertAssert/blob/main/BankOperations.sol)


Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "BankOperations-RequireAsserRevert.sol" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the deposit, withdraw and transfer function. Provide value to the deposit function. Then, click on the "transact" button to execute the function and check the balance by clicking on the "getBalance" button. Similarly perform executions of the withdraw and transfer functions and observe the outcomes.

## Authors

Aditi Tiwari

