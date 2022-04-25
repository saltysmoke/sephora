//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Demo {
    //Array
    string[5] public strings;
    uint256[] public items;
    uint256 public len;

    function demo() public {
        items.push(4);
        items.push(5);
        len = items.length;
    }

    function sampleMemory() public view returns (uint256[] memory) {
        uint256[] memory tempArray = new uint256[](10);
        tempArray[0] = 1;
        return tempArray;
    }

    //Enum
    enum Status {
        Paid,
        Delivered,
        Received
    }
    Status public currentStatus;

    function pay() public {
        currentStatus = Status.Paid;
    }

    function delivered() public {
        currentStatus = Status.Delivered;
    }
}
