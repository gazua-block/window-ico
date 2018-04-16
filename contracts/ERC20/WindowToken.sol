pragma solidity ^0.4.17;

import "./MintableToken.sol";

// ----------------------------------------------------------------------------
// 'Windows' ERC20 token contract
//
// Symbol      : WINDO
// Name        : Windows Token
// Total supply: 100000000
// Decimals    : 18
// ----------------------------------------------------------------------------
contract WindowToken is MintableToken {
  string public symbol;
  string public  name;
  uint8 public decimals;
  uint public _totalSupply;

  mapping(address => uint) balances;
  mapping(address => mapping(address => uint)) allowed;


  // ------------------------------------------------------------------------
  // Constructor
  // ------------------------------------------------------------------------
  function WindowToken() public {
    symbol = "WINDO";
    name = "Windows Token";
    decimals = 18;
    _totalSupply = 100000000000000000000000000;

    balances[msg.sender] = _totalSupply;
    emit Transfer(address(0), msg.sender, _totalSupply);
  }


  // ------------------------------------------------------------------------
  // Don't accept ETH
  // ------------------------------------------------------------------------
  function () public payable {
    revert();
  }
}
