// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.21;

interface IErrorHandling {
    function inputLuckyNumber(uint _num) external pure returns (string memory);
    function checkIfTrue() external pure;
    function testRevert(uint _num) external pure returns (string memory);
}