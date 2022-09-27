// SPDX-License-Identifier: MIT

/// @author Nartey Kodjo-Sarso
pragma solidity 0.8.15;

import "./Proxy.sol";

///@dev Invoice factory
contract InvoiceFactory {

    event InvoiceCreated(address proxy, address indexed owner);
    /// @dev deploy new invoice
    function createNewInvoice(address _mastercopy, bytes memory data) external returns (address) {

        Proxy proxy =  Proxy(_mastercopy);

        if(data.length > 0){
            r(bool success, ) = proxy.call(data);

            require(bool, "failed to initialize proxy");
        }

        emit InvoiceCreated(address(proxy), msg.sender);
    }
}