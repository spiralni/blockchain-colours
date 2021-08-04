// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract Colour is ERC721Enumerable {
    string[] private _colours;

    constructor() ERC721("Colour", "COLOUR") {
    }

    mapping(string => bool) private _colourExists;

    function getColours() public view returns (string[] memory) {
        return _colours;
    }

    function mint(string memory _colour) public {
        require(!_colourExists[_colour]);

        _colours.push(_colour);

        uint _id = _colours.length - 1;

        _mint(msg.sender, _id);

        _colourExists[_colour] = true;
    }
}