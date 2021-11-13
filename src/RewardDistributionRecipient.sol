// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

import "@openzeppelin/contracts/access/Ownable.sol";

abstract contract RewardDistributionRecipient is Ownable {
    address public rewardDistribution;

    event SetRewardDistribution(address account);

    modifier onlyRewardDistribution() {
        require(_msgSender() == rewardDistribution, "Caller is not reward distribution");
        _;
    }

    function notifyRewardAmount(uint256 amount) external virtual;

    function setRewardDistribution(address account) external onlyOwner {
        rewardDistribution = account;

        emit SetRewardDistribution(account);
    }
}
