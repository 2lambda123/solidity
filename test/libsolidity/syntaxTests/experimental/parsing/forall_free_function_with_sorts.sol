pragma experimental solidity;

class Self: Class1 {}
class Self: Class2 {}

forall (A: (Class1, Class2), B: Class1)
function f(a: A: Class1, b: B: Class1) {}

forall A: Class1
function g(a: A) {}
// ====
// EVMVersion: >=constantinople
// compileViaYul: true
// ----
// Warning 2264: (0-29): Experimental features are turned on. Do not use experimental features on live deployments.
// TypeError 2217: (88-94): Attempt to type identifier referring to unexpected node.
