// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {OperatorFilterRegistry, OperatorFilterRegistryErrorsAndEvents} from "../src/OperatorFilterRegistry.sol";

contract BaseRegistryTest is Test, OperatorFilterRegistryErrorsAndEvents {
    OperatorFilterRegistry constant registry = OperatorFilterRegistry(0xD76f01aF5F73563C103A11AB2f52099833D0252C);

    function setUp() public virtual {
        address deployedRegistry = address(new OperatorFilterRegistry());
        vm.etch(address(registry), deployedRegistry.code);
    }
}
