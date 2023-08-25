// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Faucet {
    address[] public funders;

    // this is a special function
    // it's called when you make a tx that doesn't specify
    // funciton name to call
    // External function are part of the contract interface
    // which means they can be called via contracts and other tx
    receive() external payable {}

    function addFunds() external payable {
        funders.push(msg.sender);
    }

    function getAllFunders() public view returns (address[] memory) {
        return funders;
    }

    function getFunderAtIndex(uint8 index) external view returns (address) {
        address[] memory _funders = getAllFunders();
        return _funders[index];
    }

    // pure, view - read-only call, no gas fee
    // view - It indicates that the function will not alter the storage state in any way
    // pure - Even more strict, indicating that it won't even read the storage state

    // Transaction can generate state changes and require gas fee

    // To talk to the node on the network you can make JSON-RPC http calls
}

// Block info
// Nonce - a hash that when combined with the minHash proofs that
// the block has gone through proof of work (POW)
// 8 bytes => 64 bits
