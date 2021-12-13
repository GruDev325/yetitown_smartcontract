// SPDX-License-Identifier: MIT LICENSE 

pragma solidity ^0.8.0;

interface IPalace {
  function addManyToPalaceAndPack(address account, uint16[] calldata tokenIds) external;
  function randomEternalOwner(uint256 seed) external view returns (address);
}