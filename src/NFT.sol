// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "./Blocklist.sol";

contract NFT is ERC721, Blocklist{

    constructor() ERC721("name","symbol"){}


}