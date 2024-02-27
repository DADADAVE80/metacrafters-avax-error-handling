# ErrorHandling Contract and Interaction

## Contract

### Purpose
The ErrorHandling contract is designed to demonstrate various error-handling methods in Solidity. It includes functions that test the use of `require`, `assert`, and `revert` statements for handling errors in different scenarios.

### Functions

1. **inputLuckyNumber**
   - **Description:** Checks if the provided number is equal to 7.
   - **Parameters:** `_num` - Unsigned integer to be checked.
   - **Error Handling:** Uses `require` statement with a custom error message.

2. **checkIfTrue**
   - **Description:** Executes an `assert` statement to check if 5 is greater than 1.
   - **Error Handling:** Relies on the inherent behavior of `assert`, triggering an error if the condition is false.

3. **testRevert**
   - **Description:** Tests the use of `revert` statement with a custom error `LOWER_THAN_ONE()` if the provided number is less than 1.
   - **Parameters:** `_num` - Unsigned integer to be checked.
   - **Error Handling:** Utilizes a custom error defined with `error LOWER_THAN_ONE()`.

## Interface

### Purpose
The IErrorHandling interface defines the external functions provided by the ErrorHandling contract. It serves as a reference for external components interacting with the contract.

### Functions

1. **inputLuckyNumber**
   - **Description:** External function to check if the provided number is equal to 7.

2. **checkIfTrue**
   - **Description:** External function to execute an `assert` statement.

3. **testRevert**
   - **Description:** External function to test the use of `revert` statement.

## Interaction Script

### Purpose
The interaction script demonstrates the deployment of the ErrorHandling contract and interacts with its functions to test error-handling mechanisms. It utilizes the Hardhat framework and ethers.js library for Ethereum development.

### Steps

1. **Deploy Contract:**
   - Deploys the ErrorHandling contract and waits for deployment to complete.

2. **Interact with Functions:**
   - Calls functions on the deployed contract to test different error-handling scenarios:
      - `inputLuckyNumber`: Checks if the provided number is 7.
      - `checkIfTrue`: Executes an `assert` statement.
      - `testRevert`: Tests the use of `revert` statement.

3. **Console Output:**
   - Prints the results of each function call, including transaction details.

### Usage
1. Install dependencies: `npm install`
2. Run the script: `npx hardhat run path/to/interactionScript.js`

### Error Handling
The script handles errors using `async/await` and includes proper error logging. In case of an error, it logs the error message and sets the process exit code to 1.

---

**Note:** Ensure that you have the required dependencies installed and a compatible Ethereum network (e.g., Hardhat network) running before executing the interaction script. Adjust the script and contract parameters as needed for your testing environment.