import "./ERC721.sol";
import "./Counters.sol";


// File contracts/UnivirsalClones.sol

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract UnivirsalClones is ERC721 {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("UnivirsalClones", "UNI-CLONE") {}

    mapping(uint => string) tokenURIs;

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
      return tokenURIs[tokenId];
    }
}
