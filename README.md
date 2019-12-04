# Prototype logging for Solidity dev inside Truffle

This is a prototype of a convenient way (read: dirty hack) to do `console.log` in your Solidity Truffle project.

## Running this example project

1. Install `truffle@truffleLogger`:

    ```shell
    npm i truffle@truffleLogger
    ```

2. Execute `npx truffle develop` to spawn a Truffle develop console. This will run the version of Truffle you just installed.

3. Type `test` at the prompt and note the output with respect to what is logged in the [smart contract](./contracts/MyDapp.sol). Also note that there is no need to catch the events in your [test](./test/LogTest.js), it is automatically logged to the console.


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

3. Emit the event from TruffleLogger:

    ```solidity
    emit TruffleLogger.__Log(myVariable);
    ```

Take a look at the following two files:

- [`contracts/MyDapp.sol`](./contracts/MyDapp.sol)
- [`test/LogTest.js`](./test/LogTest.js)
