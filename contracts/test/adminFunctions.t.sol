// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "../src/admin_functions.sol"; 

contract adminFunctionsTest is Test {
    adminFunctions af;

    function setUp() public {
        af = new adminFunctions();
    }

    function testAddAdmin() public {
        address adminAddress = address(0x123);
        uint adminID = 1;
        
        af.addAdmin(adminAddress, adminID);
        
        assertEq(af.admins(adminAddress), adminID, "Admin ID should match");
    }

    function testRemoveAdmin() public {
        address adminAddress = address(0x123);
        uint adminID = 1;
        
        af.addAdmin(adminAddress, adminID);
        af.removeAdmin(adminAddress);
        
        assertEq(af.admins(adminAddress), 0, "Admin should be removed");
    }
}
