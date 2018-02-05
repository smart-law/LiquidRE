// This is the Smart Token

pragma solidity ^0.4.16;
import './bancor/SmartToken.sol';

contract LRET is SmartToken, Dividends {
  struct Account {
    uint balance;
    uint lastDividendPoints;
  }
  mapping(address => Account) accounts;
  uint totalSupply;
  function LRET()
    SmartToken()
    public
  {

  }
  function addAccount(addr) {

  }
}
