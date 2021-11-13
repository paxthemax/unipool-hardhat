// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

import "../GenericRewards.sol";

address constant UNISWAP_V1_TOKEN_CONTRACT = 0xe9Cf7887b93150D4F2Da7dFc6D502B216438F244;
address constant SYNTHETIX_STETH_TOKEN_CONTRACT = 0xA9859874e1743A32409f75bB11549892138BBA1E;

// solhint-disable no-empty-blocks
contract UnipoolRewards is GenericRewards(UNISWAP_V1_TOKEN_CONTRACT, SYNTHETIX_STETH_TOKEN_CONTRACT) {

}
