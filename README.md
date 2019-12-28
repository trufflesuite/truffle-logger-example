# `Console.log` for Solidity with Truffle

This is an experimental feature for Truffle that allows for a `console.log`-equivalent in your Solidity Truffle project.

Please leave your feedback in this issue: https://github.com/trufflesuite/truffle-logger-example/issues/3

## Running this example project

Clone this project, and then run the following steps:

1. Install the version of Truffle published under the `truffleLogger` tag:

    ```shell
    npm i truffle@truffleLogger
    ```

2. Spawn a Truffle develop console:

    ```shell
    npx truffle develop
    ```

3. Run tests at the prompt:

    ```
    truffle(develop)> test
    ```

4. Note the output with respect to what is logged in the [smart contract](./contracts/MyDapp.sol).


## Running inside an existing project

This is what you need to do to use the logger inside your existing Truffle projects:

1. Install the version of Truffle published under the `truffleLogger` tag:

    ```shell
    npm i truffle@truffleLogger
    ```

2. Import and inherit from `truffle/Console.sol`:

    ```solidity
    import "truffle/Console.sol";
    ```

3. Call the logging function:

    ```solidity
    Console.log(myVariable);
    ```

For reference, take a look at the following two files:

- [`contracts/MyDapp.sol`](./contracts/MyDapp.sol)
- [`test/LogTest.js`](./test/LogTest.js)
- [`test/TestMyDapp.sol`](./test/TestMyDapp.sol)
