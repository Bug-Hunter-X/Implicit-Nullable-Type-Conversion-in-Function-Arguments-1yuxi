function foo(x: ?int): int {
  if (x === null) {
    return 0;
  } else {
    return x + 1;
  }
}

function bar(): void {
  $x = null;
  echo foo($x);
}

//Solution: Explicitly handle the nullable type
function foo2(x: ?int): int {
  return $x ?? 0 +1; //Null coalescing operator. If x is null, it uses 0, otherwise it uses x.
}

function bar2(): void {
  $x = null;
  echo foo2($x);
}
//This will work correctly because of the null coalescing operator.