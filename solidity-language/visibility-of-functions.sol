// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.27;

contract visibilityOfFunction {

    string name = "Gabriel";

    // public - É acessível externamente e internamente
    function getName1() public view returns(string memory) {
        return name;
    }

    // external - É uma função que só será vista de fora.
    function getName2() external view returns(string memory) {
        return name;
    }

    // internal - É somente dentro do contrato e contrato filhos (Herança)
    function getName3() internal view returns(string memory) {
        return name;
    }

    // private - É somente acessível no contrato.
    function getName4() private view returns(string memory) {
        return name;
    }
}

contract B is visibilityOfFunction {
    function something() external view returns(string memory) {
        return super.getName3();
    }
}