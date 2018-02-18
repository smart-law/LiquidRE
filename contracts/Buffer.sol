pragma solidity ^0.4.16;

contract Buffer {

  uint bufferBalance;
  uint blocksInPeriod = 170000;
  uint startingBlock;

  function Buffer(){

  }

  function Deposit(uint amount, address lret) payable{
    transferFrom(address msg.sender, address lret, uint amount);
    startingBlock = block.number;
  }


  function getAvailableAmount() public returns(uint){
    //return amount of buffer available to CRR
    blocksSinceDeposit = block.number - startingBlock;

    uint availableAmount = (blocksSinceDeposit / blocksInPeriod) * bufferBalance;

    return availableAmount;

  }


  function getUnavailableAmount(){
    return bufferBalance - getAvailableAmount();
  }



}
