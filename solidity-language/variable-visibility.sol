// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.27;

contract variableVisibility {

    // internal - Só visível dentro do contrato e derivados (Herança)
    string internal nameInternal = "nameInternal";

    // private - Vísivel somente dentro do contrato
    string private namePrivate = "namePrivate";

    // public - Acessível de qualquer jeito
    string public namePublic = "namePublic";

    function getName() external view returns(string memory) {
        return namePrivate;
    }
}