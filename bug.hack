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

// This will result in a runtime error in HHVM because
// `$x` is implicitly treated as a nullable int
// when used as an argument to `foo`
// but `null` isn't a valid value for an int.
// The compiler should catch this!