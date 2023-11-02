pragma experimental solidity;

forall
function f() {}
// ====
// EVMVersion: >=constantinople
// ----
// ParserError 2314: (38-46): Expected '(' but got 'function'
