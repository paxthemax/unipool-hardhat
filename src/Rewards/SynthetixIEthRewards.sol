// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

import "../GenericRewards.sol";

address constant SYNTHETIX_IETH_TOKEN_CONTRACT = 0xA9859874e1743A32409f75bB11549892138BBA1E;
address constant SYNTHETIX_TOKEN_CONTRACT = 0xC011a73ee8576Fb46F5E1c5751cA3B9Fe0af2a6F;

// solhint-disable no-empty-blocks
contract SynthetixIEthRewards is GenericRewards(SYNTHETIX_IETH_TOKEN_CONTRACT, SYNTHETIX_TOKEN_CONTRACT) {

}
