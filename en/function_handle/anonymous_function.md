# Anonymous Functions

Anonymous Functions.

## Description

  <p>Anonymous functions provide a convenient way to swiftly create straightforward functions without the need to generate separate M-files on every occasion.</p>
  <p>These anonymous functions can be built either directly at the command line or within any M-file function or script.</p>
  <p>To create an anonymous function from an expression, use the following syntax:</p>
  <p>function_handle = @(argument_list) expression</p>
  <p/>
  <p>Breaking down this syntax, <b>expression</b> represents the body of the function, which contains the code that performs the primary task of your function.</p>
  <p>This part consists of a valid expression. Next, there's <b>argument_list</b>, which is a comma-separated list of input arguments to be passed to the function.</p>
  <p>These components are similar to the body and argument list of any regular function.</p>
  <p/>
  <p>At the beginning of this syntax statement, you'll notice the <b>@</b> sign.</p>
  <p>This <b>@</b> sign is the operator that constructs a function handle.</p>
  <p>Creating a function handle for an anonymous function allows you to invoke the function and is useful when passing your anonymous function as an argument to another function.</p>
  <p>The <b>@</b> sign is a necessary part of the anonymous function definition.</p>
  <p/>
  <p>It's worth noting that function handles not only apply to anonymous functions but also to any function.</p>
  <p>The syntax for creating a function handle to a regular function is different and looks like this:</p>
  <p>function_handle = @function_name</p>
  <p>For example: <b>f = @cos</b></p>
  <p>You have the option to store function handles along with their associated values in a MAT-file.</p>
  <p>Later, in a different session, you can retrieve and utilize them using the save and load functions.</p>
  <p>for example <b>a = 1;b = 2; f = @(x) a + b + x; save('test.nH5', f);</b></p>
  <p>Only .nh5 files allows to save and load function_handle type as expected.</p>
  <p>You can create an anonymous function that takes multiple input arguments, x and y.</p>
  <p>Assuming that variables A and B are already defined, you can define the function as follows:</p>
  <p>
    <b>A = 10; B = 100; r = @(x, y) (A*y + B*x);</b>
  </p>

## Examples

```matlab
A = 10;
f1 = @() sqr(A);
clear A
f1
f1()
```

```matlab
f2 = @cos;
f2
f2(0.6)
```

```matlab
f3 = @(x)cos(x) + 1;
f2
f3(0.6)
```

Multiple input arguments

```matlab
A = 10;
B = 100;
f4 = @(x, y) (A*y + B*x);
f4
f4(0.6, 0.2)
```

Save/Load function handle

```matlab
a = 1;
b = 2;
f5 = @(x) a + b + x;
save([tempdir(), 'test.nh5'], 'f5');
clear all
load([tempdir(), 'test.nh5'])
f5
f5(10)
```

Multiple output arguments

```matlab
P = pi * 3;
mymeshgrid = @(X, Y) meshgrid((-X:X/P:X),(-Y:Y/P:Y));
[x, y] = mymeshgrid(pi, 2 * pi);
z = cos(x) + sin(y);
mesh(x, y, z)
```

## See also

[func2str](func2str.md), [str2func](str2func.md), [isfunction_handle](isfunction_handle.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
