// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "forge-std/Script.sol";
import "../src/user_auth.sol"; 

contract UserAuthScript is Script {
    UserAuth auth;

    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        // Deploy the User Authentication contract
        auth = new UserAuth();
        console.log("UserAuth contract deployed at:", address(auth));

        // Register a user
        auth.registerUser();
        console.log("User registered:", msg.sender);

        // Remove the user
        auth.removeUser();
        console.log("User removed:", msg.sender);

        vm.stopBroadcast();
    }
}
