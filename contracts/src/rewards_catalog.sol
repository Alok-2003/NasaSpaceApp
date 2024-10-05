// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract rewardsCatalog {
  event addedRewardItem(uint ID, uint p_req);

  function addRewardItem(uint itemID, string description, uint pointsRequired) public {
     contructor addItem {
       uint item_ID = itemID;
       string desc = description;
       uint points_Required = pointsRequired;
    }
    emit addedRewardItem(item_ID, points_Required);
  }

  // function listRewardItems() public view {
    
  // }
}
