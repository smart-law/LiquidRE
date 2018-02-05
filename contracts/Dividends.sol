pragma solidity ^0.4.16;
import './TST.sol';
contract Dividends
{

  uint totalDividendPoints;
  uint unclaimedDividends;
  uint constant pointsMultiplier = 10e18;

  function dividendsOwing(address account) internal returns(uint) {
    var newDividendPoints = totalDividendPoints - accounts[account].lastDividendPoints;
    return (accounts[account].balance * newDividendPoints) / pointsMultiplier;
  }
  modifier updateAccount(address account) {
    var owing = dividendsOwing(account);
    if (owing > 0) {
      unclaimedDividends -= owing;
      accounts[account].balance += owing;
      accounts[account].lastDividendPoints = totalDividendPoints;
    }
    _;
  }

  /**
  ** This function will disburse a dividend of TST
  **/
  function disburseDividend(uint amount) public {
    totalDividendPoints += (amount * pointsMultiplier / totalSupply);
    totalSupply += amount;
    unclaimedDividends += amount;
    TST.transfer(,unclaimedDividends);
  }

  /**
  ** This function will accept a deposit of TST
  **/
  function despositDividend(uint amount, address lret) public {

  }


}
