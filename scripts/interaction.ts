import { ethers } from "hardhat";

async function main() {
  const errorHandling = await ethers.deployContract("ErrorHandling");
  await errorHandling.waitForDeployment();

  console.log("ErrorHandlingContract deployed to", errorHandling.target);

  const errorHandlingContract = await ethers.getContractAt("IErrorHandling", errorHandling.target);

  const requireTx = await errorHandlingContract.inputLuckyNumber(7);
  console.log("Require Test: ", requireTx);

  const assertTx = await errorHandlingContract.checkIfTrue();
  console.log("Assert Test: ", assertTx);

  const revertTx = await errorHandlingContract.testRevert(7);
  console.log("Revert test: ", revertTx);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
