// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.27;

/**
    São variavéis já disponível pelo Solidity para acesso de metadados.
 */
contract globalVariables {

    constructor() payable {
        // block - é um objeto global em Solidity que fornece informações sobre o bloco atual na blockchain
        block.difficulty;

        // msg -  é um objeto global que contém informações sobre a mensagem que está sendo processada.
        msg.value;

        //tx -  é um objeto global que fornece informações sobre a transação atual. 
        tx.origin;
    }
}