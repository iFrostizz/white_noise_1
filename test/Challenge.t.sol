// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.13;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract ChallengeTest is Test {
    address challenge;

    function setUp() public {
        challenge = HuffDeployer.deploy("Challenge");
        console.log(challenge);
        console.logBytes(address(challenge).code);
    }

    function testSetAndGetValue(uint256 value) public {
   }
}
