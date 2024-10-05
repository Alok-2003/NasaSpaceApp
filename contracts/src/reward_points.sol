// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;
import ./user_auth.sol;

event point_Awarded(uint userID, uint points_Awarded);
event point_Deducted(uint userID, uint points_Deducted);

contract reward_points {
  function awardPoints(uint userID, uint pointsAwarded) {
     points += pointsAwarded;
     emit point_Awarded(userID, points_Awarded);
  } 

  function deductPoints(uint userID, uint pointsDeducted) {
    points -= points_Deducted;
    emit point_Deducted(userID, pointsDeducted);
  }
}
