// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

import {ERC1155, ERC1155TokenReceiver} from "../../../tokens/ERC1155.sol";

contract ERC1155User {
    ERC1155 token;

    constructor(ERC1155 _token) {
        token = _token;
    }

    function setApprovalForAll(address operator, bool approved) public virtual {
        token.setApprovalForAll(operator, approved);
    }

    function safeTransferFrom(
        address from,
        address to,
        uint256 id,
        uint256 amount,
        bytes memory data
    ) public virtual {
        token.safeTransferFrom(from, to, id, amount, data);
    }

    function safeBatchTransferFrom(
        address from,
        address to,
        uint256[] memory ids,
        uint256[] memory amounts,
        bytes memory data
    ) public virtual {
        token.safeBatchTransferFrom(from, to, ids, amounts, data);
    }
}
