# Prototype logging for Solidity dev inside Truffle

This is a prototype of a convenient way (read: dirty hack) to do `console.log` in your Solidity Truffle project. It requires a couple things:

1. Import and inherit from `TruffleLogger.sol`:

    ```solidity
    import "./TruffleLogger.sol";

    contract MyDapp is TruffleLogger {
      ...
    }
    ```

2. Emit the event from TruffleLogger:

    ```solidity
    emit TruffleLogger.__Log(myVariable);
    ```

Take a look at the following three files:

- `contracts/MyDapp.sol`
- `contracts/TruffleLogger.sol`
- `test/LogTest.js`
