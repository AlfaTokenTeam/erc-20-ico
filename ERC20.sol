pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract ERC20 is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function ERC20(address _owner)  UpgradeableToken(_owner) {
    name = "ERC20";
    symbol = "ERC20";
    totalSupply = 700000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}