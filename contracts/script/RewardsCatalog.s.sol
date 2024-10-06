// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "forge-std/Script.sol";
import "../src/rewards_catalog.sol";

contract RewardsCatalogScript is Script {
    RewardsCatalog catalog;

    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        // Deploy the Rewards Catalog contract
        catalog = new RewardsCatalog();
        console.log("RewardsCatalog contract deployed at:", address(catalog));

        // Add rewards
        catalog.addReward("Gold Membership", 100);
        console.log("Reward added: Gold Membership, Points Required: 100");

        catalog.addReward("Silver Membership", 50);
        console.log("Reward added: Silver Membership, Points Required: 50");

        vm.stopBroadcast();
    }
}
