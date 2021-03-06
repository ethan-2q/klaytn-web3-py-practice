// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";

contract MyNFT is ERC721, ERC721Burnable {
    constructor(string memory name, string memory symbol) ERC721(name, symbol) {
    }

    /**
     * @dev get NFT id
     * @param nftContent NFT 내용
     */
    function getTokenIdFromContent(string memory nftContent) public pure returns (uint256) {
        return uint256(keccak256(abi.encodePacked(nftContent)));
    }

    /**
     * @dev NFT 발행
     * @param account 발행자 주소
     * @param nftContent NFT 내용
     */
    function mintFromContent(address account, string memory nftContent) public {
        uint256 nftId = getTokenIdFromContent(nftContent);
        _safeMint(account, nftId);
    }

    /**
     * @dev NFT 소각
     * @param nftContent NFT 내용
     */
    function burnFromContent(string memory nftContent) public {
        uint256 nftId = getTokenIdFromContent(nftContent);
        burn(nftId);
    }
}
