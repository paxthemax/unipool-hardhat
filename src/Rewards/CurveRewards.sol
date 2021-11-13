// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

import "../GenericRewards.sol";

address constant CURVE_SUSD_CONTRACT = 0xA9859874e1743A32409f75bB11549892138BBA1E;

contract SynthetixIEthRewards is GenericRewards {
    function getRewardTokenContract() internal pure override returns (address) {
        return CURVE_SUSD_CONTRACT;
    }
}
