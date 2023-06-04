// SPDX-License-Identifier: MIT
pragma solidity  0.8.19;

//import { ERC20 } from "./ERC20.sol";


import { IERC20 } from "./IERC20.sol";

contract MyContract {
    function payMe(IERC20 token, uint256 value) external {
        bool success = token.transferFrom(
            msg.sender,
            address(this),
            value
        );
        require(success);
    }
} 
