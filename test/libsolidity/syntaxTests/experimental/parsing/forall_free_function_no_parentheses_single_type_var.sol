pragma experimental solidity;

// The parser currently allows unary parameter lists without parentheses
forall A
function f(a: A) {}

forall (A)
function g a: A {}

forall A
function h a: A {}
// ====
// EVMVersion: >=constantinople
// compileViaYul: true
// ----
// Warning 2264: (0-29): Experimental features are turned on. Do not use experimental features on live deployments.
// Info 4164: (111-112): Inferred type: 's:type
// Info 4164: (111-112): Inferred type: 's:type
// Info 4164: (113-132): Inferred type: 's:type -> ()
// Info 4164: (123-129): Inferred type: 's:type
// Info 4164: (124-128): Inferred type: 's:type
// Info 4164: (127-128): Inferred type: 's:type
// Info 4164: (141-144): Inferred type: 'v:type
// Info 4164: (142-143): Inferred type: 'v:type
// Info 4164: (145-163): Inferred type: 'v:type -> ()
// Info 4164: (156-160): Inferred type: 'v:type
// Info 4164: (156-160): Inferred type: 'v:type
// Info 4164: (159-160): Inferred type: 'v:type
// Info 4164: (172-173): Inferred type: 'y:type
// Info 4164: (172-173): Inferred type: 'y:type
// Info 4164: (174-192): Inferred type: 'y:type -> ()
// Info 4164: (185-189): Inferred type: 'y:type
// Info 4164: (185-189): Inferred type: 'y:type
// Info 4164: (188-189): Inferred type: 'y:type
