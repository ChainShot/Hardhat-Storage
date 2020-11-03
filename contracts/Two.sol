//SPDX-License-Identifier: Unlicense
pragma solidity ^0.7.3;

contract Two {
  uint public x = 0;

  function modifyX(uint _x) external {
    x = _x;
  }
}
