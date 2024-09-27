// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.27;

/**
    gás - É a taxa de transação na blockchain

    # Function Modifiers
        default - Funções sem modificador algum, consome gás e podem modificar o estado do contrato, o default é transaction.
        view - Apenas acessam estado do contrato sem modifica-los (Não consome gás)
        pure - Apenas efetua cálculos, como próprio nome sugere é uma função pura. (Não consome gás)

*/

contract stateModifiers {

    uint number = 10;

    // Default
    function whatIsNumber() external {
        number = 200;
    }

    // View
    function getNumber() external view returns(uint) {
        return number;
    }

    // Pure
    function calc(uint x, uint y) external pure returns(uint) {
        return x + y;
    }

}