//SPDX-License-Identifier: Unlicense
pragma solidity ^0.7.3;

import "./Two.sol";

contract One {
  uint public x = 0;
  Two two;

  constructor(address _addr) {
    two = Two(_addr);
  }

  function modifyX(uint _x) external {
    address(two).delegatecall(msg.data);
  }
}
