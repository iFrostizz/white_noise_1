// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

interface IChallenge {
    
}

interface ISolve {
    
}

contract ChallengeTest is Test {
    IChallenge challenge;
    ISolve solve;

    function setUp() public {
        challenge = IChallenge(HuffDeployer.deploy("Challenge"));
        console.log("challenge deployed at %s !", address(challenge));
    }

    function testSolve() public {
        solve = ISolve(HuffDeployer.deploy("Solution"));
        console.log("solution deployed at %s !", address(solve));
   }
}
