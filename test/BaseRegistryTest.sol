// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {OperatorFilterRegistry, OperatorFilterRegistryErrorsAndEvents} from "../src/OperatorFilterRegistry.sol";

contract BaseRegistryTest is Test, OperatorFilterRegistryErrorsAndEvents {
    OperatorFilterRegistry constant registry = OperatorFilterRegistry(0x044Ae8A69a6d009b7B74a4d85273b4373C0CAaE0);

    function setUp() public virtual {
        address deployedRegistry = address(new OperatorFilterRegistry());
        vm.etch(address(registry), deployedRegistry.code);
    }
}
