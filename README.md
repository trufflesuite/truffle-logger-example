# Prototype logging for Solidity inside Truffle projects

This is a prototype of a convenient way (read: dirty hack) to do `console.log` in your Solidity Truffle project.

## Running this example project

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

4. Note the output with respect to what is logged in the [smart contract](./contracts/MyDapp.sol). Also note that there is no need to catch the events in your [test](./test/LogTest.js), it is automatically logged to the console.


## Running inside an existing project

This is what you need to do to use the logger inside your existing Truffle projects:

1. Install `truffle@truffleLogger`:

    ```shell
    npm i truffle@truffleLogger
    ```

2. Import and inherit from `truffle/TruffleLogger.sol`:

    ```solidity
    import "truffle/TruffleLogger.sol";

    contract MyDapp is TruffleLogger {
      ...
    }
    ```

3. Call the logging function from TruffleLogger:

    ```solidity
    TruffleLogger.log(myVariable);
    ```

Take a look at the following two files:

- [`contracts/MyDapp.sol`](./contracts/MyDapp.sol)
- [`test/LogTest.js`](./test/LogTest.js)
