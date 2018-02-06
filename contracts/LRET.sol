// This is the Smart Token

pragma solidity ^0.4.16;
import './bancor/SmartToken.sol';
import './Dividends.sol';

contract LRET is SmartToken, Dividends {

  function LRET()
    SmartToken("LiquidRE Token","LRET",18)
    public
  {

  }
  /*
  function addAccount(addr) {

  }
  */
}
