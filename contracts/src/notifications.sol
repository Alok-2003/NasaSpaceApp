// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import ./user_auth.sol;

contract notifications {
 
  event message(uint user_ID, string msg);
  function notifyUser(uint userID, string message) {
    emit message(userID, message);   
  }
}
