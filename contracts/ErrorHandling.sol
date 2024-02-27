// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.21;

error LOWER_THAN_ONE();

contract ErrorHandling {
    function inputLuckyNumber(uint _num) external pure returns (string memory) {
        require(_num == 7, "This is not the lucky number");
        return "You got got the lucky number";
    }

    function checkIfTrue() external pure {
        assert(5 > 1);
    }

    function testRevert(uint _num) external pure returns (string memory) {
        if (_num < 1) {
            revert LOWER_THAN_ONE();
        }
        return "Valid number";
    }
}
