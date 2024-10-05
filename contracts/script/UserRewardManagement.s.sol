// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "forge-std/Script.sol";
import "../src/reward_points.sol";
import "../src/rewards_catalog.sol"; 
import "../src/user_auth.sol"; 

contract UserRewardManagementScript is Script {
    UserRewardManagement rewards;
    RewardsCatalog catalog;
    UserAuth auth;
    
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

       catalog = new RewardsCatalog();
        auth = new UserAuth();
        rewards = new UserRewardManagement(address(catalog), address(auth));
       
        console.log("UserRewards contract deployed at:", address(rewards));

        // Award points to a user
        rewards.awardPoints(msg.sender, 100);
        console.log("Awarded 100 points to user:", msg.sender);

        // Deduct points from the user
        rewards.deductPoints(msg.sender, 50);
        console.log("Deducted 50 points from user:", msg.sender);

        // Claim a reward
        uint rewardId = 0; // Assuming the user is claiming the first reward
        rewards.claimReward(rewardId);
        console.log("User claimed reward ID:", rewardId);

        vm.stopBroadcast();
    }
}
