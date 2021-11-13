pragma solidity 0.8.10;

// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

import "../Rewards/UnipoolRewards.sol";

contract UnipoolRewardsMock is GenericRewards {
    // solhint-disable no-empty-blocks
    constructor(address tokenContract, address rewardContract) GenericRewards(tokenContract, rewardContract) {}
}
