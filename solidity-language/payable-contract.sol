// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.27;

contract payableContract {
    
    // Só é permitido acessar  o msg.value quando utilizamos o modificador payable.
    function deposit() external payable returns(bool) {
        require(msg.value >= 1 ether, "No acceptable");
        return true;
    }

    function balance() external view returns(uint256) {
        return address(this).balance;
    }

    function withdraw(uint256 _amount) external returns(bool) {
        // Transformar um endereço em payable para efetuar conseguir manipular msg.value;
        return payable(msg.sender).send(_amount);
    }

    function transfer(uint256 _amount, address payable _address) external {
        _address.transfer(_amount);
    }
}