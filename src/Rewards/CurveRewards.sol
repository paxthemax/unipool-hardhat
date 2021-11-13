// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

import "../GenericRewards.sol";

address constant SYNTHETIX_TOKEN_CONTRACT = 0xC011a73ee8576Fb46F5E1c5751cA3B9Fe0af2a6F;
address constant CURVE_SUSD_CONTRACT = 0xC25a3A3b969415c80451098fa907EC722572917F;

// solhint-disable no-empty-blocks
contract CurveRewards is GenericRewards(SYNTHETIX_TOKEN_CONTRACT, CURVE_SUSD_CONTRACT) {

}
