// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.27;

/**
    Eventos são como a blockchain se comunica com o mundo.
 */
contract events {
    event Transfer(address _from, address _to, uint256 _amount);

    function transfer(address _to, uint256 _amount) public {
        emit Transfer(msg.sender, _to, _amount);
    }
}