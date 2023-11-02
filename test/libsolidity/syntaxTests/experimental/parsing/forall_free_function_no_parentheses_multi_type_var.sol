pragma experimental solidity;

forall A, B
function f(a: A) {}
// ====
// EVMVersion: >=constantinople
// ----
// ParserError 5709: (39-40): Expected a function definition.
