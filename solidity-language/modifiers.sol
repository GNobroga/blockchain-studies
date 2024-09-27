// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.27;

/**
    Um modifier em Solidity é uma forma de reutilizar e adicionar lógica
    comum a várias funções de maneira eficiente. Ele permite que você adicione
    verificações ou condições que precisam ser cumpridas antes ou depois da 
    execução de uma função. Em essência, modificadores ajudam a melhorar a organização e reutilização do código, facilitando a aplicação de regras comuns.
 */
contract modifiers {
    uint supply = 10;
    address admin = msg.sender;

    function getSupply() external view returns(uint) {
        return supply;
    }

    function mint(uint _valor) external onlyAdmin() checkValue(_valor) {
        supply += _valor;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "only admins can plus value");
        _; // Significa execute o que vier depois.
    }

    modifier checkValue(uint _valor) {
        require(_valor < 100, "the value is grather then 100");
        _;
    }
}