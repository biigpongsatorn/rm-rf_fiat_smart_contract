pragma solidity ^0.4.0;

contract FiatToCoinsProtocol {
    address owner;
    constructor () public payable {
      owner = msg.sender;
    }
    
    function recieveEther () payable public {
    }
    
    function sendEtherToCustomerAddress (address _customerAddr, uint _amount) public {
      require(owner == msg.sender);
      _customerAddr.transfer(_amount);
    }
}