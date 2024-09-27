// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.27;

contract myContract {
    
    uint public myAge = 24;
    string public name = "Gabriel";
    address public walletAddress = msg.sender;
    bool public isActive = false;
    bytes32 public data;
    uint[] public balances;
    string[] public clients;
    address[] public walletAddresses;
    uint constant public MAX_TOKEN = 1000;

    mapping(address => uint) public map;

    struct User {
        uint id;
        string name;
        address walletAddress;
    }

    enum Colors {
        RED,
        GREEN,
        YELLOW
    }

    function usingVariables() external {
        balances.push(1);
    }

}