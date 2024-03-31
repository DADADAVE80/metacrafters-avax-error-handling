// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

error LOWER_THAN_FIVE();

contract ErrorHandling {
    function inputLuckyNumber(uint8 _num)
        external
        pure
        returns (string memory)
    {
        require(_num == 7, "This is not the lucky number");
        return "You got got the lucky number";
    }

    function checkIfGreaterThanFive(uint8 x)
        external
        pure
        returns (string memory)
    {
        assert(x > 5);
        return "It's greater than Five";
    }

    function checkIfLessThanFive(uint8 x)
        external
        pure
        returns (string memory)
    {
        if (x > 5) {
            revert LOWER_THAN_FIVE();
        }
        return "It's less than Five";
    }
}
