//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Demo {
    mapping(address => uint256) public payments; //storage
    address public myAddr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    string public myStr = "test"; //storage

    function receiveFunds() public payable {
        payments[msg.sender] = msg.value;
    }

    function transferTo(address payable targetAddr, uint256 amount) public {
        targetAddr.transfer(amount);
    }

    function getBalance(address targetAddr) public view returns (uint256) {
        return targetAddr.balance;
    }

    function demo(string memory newValueStr) public {
        string memory MyTempStr = "temp";
        myStr = newValueStr;
    }
}
