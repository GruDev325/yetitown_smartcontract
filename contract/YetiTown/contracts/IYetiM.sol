// SPDX-License-Identifier: MIT LICENSE

pragma solidity ^0.8.0;

interface IYetiM {

  // struct to store each token's traits
  struct Yeti {
    bool isEternal;
    bool isNoble;
    bool isDeviant;
    uint8 Background;
    uint8 Back;
    uint8 Fur;
    uint8 Outfit;
    uint8 Ears;
    uint8 Mouth;
    uint8 Hats;
    uint8 Eyes;
    uint8 gradIndex;
  }


  function getPaidTokens() external view returns (uint256);
  function getTokenTraits(uint256 tokenId) external view returns (Yeti memory);
}