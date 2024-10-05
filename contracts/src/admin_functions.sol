// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

event adminAdded(string admin1, uint adminID);

mapping(address => uint) public admins;

contract adminFunctions {
  function addAdmin(address admin, uint admin_ID) {
    admins[admin] = admin_ID;
    emit adminAdded(admin, admin_ID);
  }

  function removeAdmin(admin) {
     delete admin[admin];
  }
}
