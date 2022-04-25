//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract SephoraShop {
    // 0xd9145CCE52D386f254917e481eB44e9943F39138
    uint256 public price = 2 ether;
    address public owner;
    mapping(address => uint256) public payments;

    constructor() {
        owner = msg.sender;
    }

    function payForItem() public payable {
        payments[msg.sender] = msg.value;
    }

    function withdrawAll() public {
        address payable _to = payable(owner);
        address _thisContract = address(this);
        _to.transfer(_thisContract.balance);
    }
}
