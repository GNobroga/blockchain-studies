// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.27;


contract functions {
    
    // internal - Função apenas vísivel dentro do contrato
    // external - Função somente visível de fora do contrato
    function sum(uint x, uint b) external pure returns(uint) {
        return x + b;
    }

    string name = "Gabriel";

    // Funções que só ler dados do contrato são view
    function getName() external view returns(string memory) {
        return name;
    }

    mapping(address => uint) balances;

    // payable - Marca a função como permitida a receber dinheiro.
    function invest() public payable returns(uint) {
        balances[msg.sender] += msg.value;
        return balances[msg.sender];
    }

}