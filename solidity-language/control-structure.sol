// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.27;


contract controlStructure {
    address[] addresses;

    function saveMessage(address _address) external {
        addresses.push(_address);
    }

    function findMessage(address _address) external view returns(bool) {
        for (uint i = 0; i < addresses.length ; i++) {
            address currAddress = addresses[i];
            if (currAddress == _address) {
                return true;
            }

        }
        return false;
    }

}