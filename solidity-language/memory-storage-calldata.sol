// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.27;

/**
    memory - Variável que só existe em tempo de execução
    storage - Será realmente persistido dentro da blockchain
    calldata - Funciona como o memory porém não é possível reatribuir valor para variável calldata.
 */
contract memoryStorageCalldata {
    // Por padrão propriedades de um contrato são guardadas na blockchain.
    string anyText;

    function readText() external view returns(string memory) {
        return anyText;
    }

    function saveNumber(string memory _text) public returns(string memory) {
        anyText = _text;
        _text = "Another text"; // Memory permite isso.
        return _text;
    }

     function saveNumberWithCalldata(string calldata _text) public returns(string memory) {
        anyText = _text;
        // _text = "Another text"; // Calldata não permite isso.
        return _text;
    }
}