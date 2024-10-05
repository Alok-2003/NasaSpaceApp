// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.27;

contract user_auth {
    
  event userRegistered(uint userID);
  event userAuthenticated();

  modifier isRegistered {
     require(registerUser(), "Please Register User")
   }

   constructor registerUser() public {
    uint public userID;
    uint private points;
    owner = msg.sender;
    bool user_auth = false;
    emit userRegistered(userID);

   }

   function authenticateUser() public isRegistered {
    user_auth = true;
   }
}
