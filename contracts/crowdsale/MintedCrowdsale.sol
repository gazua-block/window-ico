pragma solidity ^0.4.17;

import "./Crowdsale.sol";
import "../ERC20/MintableToken.sol";


/**
 * @title MintedCrowdsale
 * @dev Extension of Crowdsale contract whose tokens are minted in each purchase.
 * Token ownership should be transferred to MintedCrowdsale for minting.
 */
contract MintedCrowdsale is Crowdsale {

  /**
  * @param _rate Number of token units a buyer gets per wei
  * @param _wallet Address where collected funds will be forwarded to
  * @param _token Address of the token being sold
  */
  function MintedCrowdsale(uint256 _rate, address _wallet, ERC20 _token) public Crowdsale(_rate, _wallet, _token) {
  }

  /**
   * @dev Overrides delivery by minting tokens upon purchase.
   * @param _beneficiary Token purchaser
   * @param _tokenAmount Number of tokens to be minted
   */
  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
    require(MintableToken(token).mint(_beneficiary, _tokenAmount));
  }
}
