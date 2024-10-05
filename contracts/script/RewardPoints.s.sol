// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "forge-std/Script.sol";
import "../src/reward_points.sol";  // Adjust the import path if needed

contract RewardPointsScript is Script {
    reward_points rp;

    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        // Deploy the contract
        rp = new reward_points();
        console.log("reward_points contract deployed at:", address(rp));

        // Award points
        uint userID = 1;
        uint pointsAwarded = 100;
        rp.awardPoints(userID, pointsAwarded);
        console.log("Awarded points to user ID:", userID, "Points:", pointsAwarded);

        // Deduct points
        uint pointsDeducted = 50;
        rp.deductPoints(userID, pointsDeducted);
        console.log("Deducted points from user ID:", userID, "Points:", pointsDeducted);

        vm.stopBroadcast();
    }
}
