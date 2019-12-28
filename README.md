# `Console.log` for Solidity with Truffle

This is an experimental feature for Truffle that allows for a `console.log`-equivalent in your Solidity Truffle project.

## Running this example project

Clone this project, and then run the following steps:

1. Install `truffle@truffleLogger`:

    ```shell
    npm i truffle@truffleLogger
    ```

2. Spawn a Truffle develop console with the version of Truffle you just installed:

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

1. Install `truffle@truffleLogger`:

    ```shell
    npm i truffle@truffleLogger
    ```

2. Import and inherit from `truffle/Console.sol`:

    ```solidity
    import "truffle/Console.sol";
    ```

3. Call the logging function from TruffleLogger:

    ```solidity
    Console.log(myVariable);
    ```

For reference, take a look at the following two files:

- [`contracts/MyDapp.sol`](./contracts/MyDapp.sol)
- [`test/LogTest.js`](./test/LogTest.js)
