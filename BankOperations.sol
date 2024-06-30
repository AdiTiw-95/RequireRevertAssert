// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BankOperations {
    address private customer;
    mapping (address => uint) public balances;

    constructor() {
        customer = msg.sender;
    }

    function deposit(uint amount) public {
        require(amount > 50, "Deposit amount must be greater than 50");
        balances[msg.sender] += amount;
        assert(balances[msg.sender] >= amount); // assert that balance has increased
    }

    function withdraw(uint amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance, kindly check then withdraw!");
        if (amount > 500) {
            revert("Withdrawal amount exceeds daily limit");
        }
        balances[msg.sender] -= amount;
    }

    function transfer(address recipient, uint amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance, kindly check your balance!");
        require(recipient != address(0), "Invalid recipient address, kindly check the address and retry!");
        balances[msg.sender] -= amount;
        balances[recipient] += amount;
    }

    function getBalance() public view returns (uint) {
        return balances[msg.sender];
    }

    function onlyOwner() public view {
        require(msg.sender == customer, "Only the owner can call this function");
        // only the owner can call this function
    }
}
