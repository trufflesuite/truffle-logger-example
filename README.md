# `Console.log` for Solidity with Truffle

This is an experimental feature for Truffle that introduces a `console.log`-equivalent in your Solidity smart contracts.

Please leave your feedback in this issue: https://github.com/trufflesuite/truffle-logger-example/issues/3

## Running this example project

Clone this project, and then run the following steps:

1. Spawn a Truffle develop console with the `Console.log`-enhanced version of Truffle:

    ```shell
    npx truffle@truffleLogger develop
    ```

2. Run tests at the prompt:

    ```
    truffle(develop)> test
    ```

3. Note the output with respect to what is logged in the [smart contract](./contracts/MyDapp.sol).

For reference, take a look at the following files:

- [`contracts/MyDapp.sol`](./contracts/MyDapp.sol)
- [`test/LogTest.js`](./test/LogTest.js)
- [`test/TestMyDapp.sol`](./test/TestMyDapp.sol)

## Running inside an existing project

This is what you need to do to use the logger inside your existing Truffle projects:

1. Import the `Console` library in your contracts:

    ```solidity
    import "truffle/Console.sol";
    ```

2. Call the logging function:

    ```solidity
    Console.log(myVariable);
    ```

3. Spawn a Truffle develop console with the `Console.log`-enhanced version of Truffle:

    ```shell
    npx truffle@truffleLogger develop
    ```

2. Run tests at the prompt:

    ```
    truffle(develop)> test
    ```
