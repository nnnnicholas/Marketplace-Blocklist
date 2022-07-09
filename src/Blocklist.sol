// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

// import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/utils/access/Ownable.sol";

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract Blocklist  {

    mapping(address => bool) blocklist;

    modifier applyBlocklist(address addr){
        require(!blocklist[addr], "Blocked address.")
        _;
    }

    setBlocklist(address addr, bool state) onlyOwner virtual{
        blocklist[addr] = state
    }

    function getBlocklist(address addr) public view virtual {
        return blocklist[addr];
    }

}