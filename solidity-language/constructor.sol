// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.27;


contract A {

    uint value;

    constructor(uint _value) {
        value = _value;
    }
}

contract B is A {
    constructor(uint _value) A(_value * 100) {}
}