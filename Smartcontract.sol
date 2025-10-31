// SPDX-License-Identifier: MIT
pragma version 0.8.30;

contract Smartcontract {
  uint public depositedAmt;

  function deposit() public payable {
    depositAmt += msg.value;
  }

  function getBalance() public view returns(uint) {
    return address(this).balance;
  }

  function withdrawAll() public {
    address payable to = payable(msg.sender);
    to.transfer(getBalance());
  }

  function withdrawToAct( address payable to) public {
    to.transfer(getBalance());
  }
}
