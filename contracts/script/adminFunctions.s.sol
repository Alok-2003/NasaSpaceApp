// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "forge-std/Script.sol";
import "../src/admin_functions.sol";

contract AdminFunctionsScript is Script {
    adminFunctions af;

    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        // Deploy the contract
        af = new adminFunctions();
        console.log("adminFunctions contract deployed at:", address(af));

        // Add an admin
        address adminAddress = address(0x123);
        uint adminID = 1;
        af.addAdmin(adminAddress, adminID);
        console.log("Admin added:", adminAddress, "ID:", adminID);

        // Remove the admin
        af.removeAdmin(adminAddress);
        console.log("Admin removed:", adminAddress);

        vm.stopBroadcast();
    }
}
