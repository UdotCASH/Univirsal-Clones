// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ERC721.sol";
import "./utils/Counters.sol";

contract UnivirsalClones is ERC721 {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("UnivirsalClones", "UNI-CLONE") {}

    mapping(uint => string) tokenURIs;

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
      return tokenURIs[tokenId];
    }

    function create(uint tokenID, address hodler) public{
      require(ERC721(originalNFT).ownerOf(tokenID)==msg.sender,"must own original NFT");
      _mint(msg.sender, tokenID);
      _hodlers[tokenID]=hodler;
    }


}
