// contracts/SimpleDAO.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleDAO {
    struct Proposal { string desc; uint256 yes; uint256 no; }
    Proposal[] public props;

    function create(string calldata d) external { props.push(Proposal(d,0,0)); }

    function vote(uint256 id, bool y) external {
        Proposal storage p = props[id];
        if (y) p.yes++; else p.no++;
    }
}
