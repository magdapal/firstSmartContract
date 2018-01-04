pragma solidity ^0.4.4;

contract Hello {
  address private creator;
  address private lastCaller;
  string private message;
  uint private totalGas;

  //constructor
  function Hello() {
    creator = tx.origin;
    totalGas = tx.gasprice;
    message = 'hello';
  }

  //Begin: getters
  function getMessage() constant returns(string) {
    return message;
  }

  function getLastCaller() constant returns(address) {
    return lastCaller;
  }

  function getCreator() constant returns(address) {
    return creator;
  }

  function getTotalGas() constant returns(uint) {
    return totalGas;
  }
  //End: getters

  //Being: setters
  function setMessage(string newMessage) {
    message = newMessage;
    lastCaller = tx.origin;
    totalGas += tx.gasprice;
  }
}
