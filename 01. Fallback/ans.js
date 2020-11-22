await contract.contribute({ value: toWei("0.0005") });
await contract.sendTransaction({ value: toWei("0.0001") });
await contract.withdraw();
