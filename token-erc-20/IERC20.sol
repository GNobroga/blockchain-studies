// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IERC20 {
    event Transfer(address indexed from_, address indexed to_, uint256 value_);

    function totalSupply() external view returns(uint256);
    function balanceOf(address owner_) external view returns(uint256);
    function transfer(address recipient_, uint256 amount_) external returns(bool);
}