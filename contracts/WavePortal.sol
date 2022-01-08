// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

import "hardhat/console.sol";

contract WavePortal {
    uint totalWaves;
    address[] wavers; 

    constructor() {
        console.log("My first Smart Contract");
    }

    function wave() public {
        totalWaves += 1;
        console.log("%s has waved!", msg.sender);

        wavers.push(msg.sender);
    }

    function getTotalWaves() public view returns(uint) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    function getWaversList() public view returns(address[] memory) {

        return wavers;
    }
}