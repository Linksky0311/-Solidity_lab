// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Faucet {
    // 누구나 이 컨트랙트로 이더를 보낼 수 있게 함
    receive() external payable {}

    function withdraw(uint amount) public {
        // 출금 제한 설정 (예: 0.1 ETH 이하)
        require(amount <= 100, "Amount too large");
        payable(msg.sender).transfer(amount);
    }
}