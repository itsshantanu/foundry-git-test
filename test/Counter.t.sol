// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "ds-test/test.sol";
import "../src/Counter.sol";
import "forge-std/console.sol";

contract CounterTest is DSTest {
    Counter counter;

    function setUp() public {
        counter = new Counter();
    }

    function testInitialCount() public {
        console.log("Starting testInitialCount");
        assertEq(counter.count(), 0);
        console.log("Finished testInitialCount"); 
    }

    function testIncrement() public {
        console.log("Starting testIncrement");
        counter.increment();
        assertEq(counter.count(), 1);
        console.log("Finished testIncrement"); 
    }
}
