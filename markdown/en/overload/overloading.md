# overloading

Customizing Operators and Functions

## Description

<p>In various scenarios, you may find it necessary to modify the behavior of Nelson's operators and functions when they operate on objects or basic types.</p>

<p>This customization can be achieved by overloading the relevant functions, allowing them to handle diverse types and quantities of input arguments and execute the appropriate operation for the highest-priority object.</p>

<p></p>

<p>Overloading Operators:</p>

<p></p>

<p>Each built-in operator corresponds to a specific function name (e.g., the - operator is associated with the minus.m function).</p>

<p>You can overload any operator by creating an M-file with the appropriate name within the class directory.</p>

<p>For instance, if either A or B is an object of type classname, the expression A - B triggers a call to a function @classname/minus.m, provided it exists.</p>

<p>When A and B belong to different classes, Nelson employs precedence rules to determine which method to apply.</p>

<p></p>

<p>The table below provides a list of function names associated with most of the Nelson operators:</p>

<p></p>

| Description                 | Operator              | Function           |
| --------------------------- | --------------------- | ------------------ | -------- |
| Binary addition             | a + b                 | plus(a, b)         |
| Binary subtraction          | a - b                 | minus(a, b)        |
| Unary minus                 | -a                    | uminus(a)          |
| Unary plus                  | +a                    | uplus(a)           |
| Element-wise multiplication | a .\* b               | times(a, b)        |
| Matrix multiplication       | a \* b                | mtimes(a, b)       |
| Right element-wise division | a ./ b                | rdivide(a, b)      |
| Left element-wise division  | a .\ b                | ldivide(a, b)      |
| Matrix right division       | a / b                 | mrdivide(a, b)     |
| Matrix left division        | a \ b                 | mldivide(a, b)     |
| Element-wise power          | a .^ b                | power(a, b)        |
| Matrix power                | a ^ b                 | mpower(a, b)       |
| Less than                   | a < b                 | lt(a, b)           |
| Greater than                | a > b                 | gt(a, b)           |
| Less than or equal to       | a <= b                | le(a, b)           |
| Greater than or equal to    | a >= b                | ge(a, b)           |
| Not equal to                | a ~= b                | ne(a, b)           |
| Equality                    | a == b                | eq(a, b)           |
| Logical AND                 | a & b                 | and(a, b)          |
| Logical OR                  | a                     | b                  | or(a, b) |
| Logical NOT                 | ~a                    | not(a)             |
| Colon operator              | a:d:b                 | colon(a, d, b)     |
| Complex conjugate transpose | a'                    | ctranspose(a)      |
| Matrix transpose            | a.'                   | transpose(a)       |
| Display method              | command window output | display(a)         |
| Horizontal concatenation    | [a, b]                | horzcat(a, b, ...) |
| Vertical concatenation      | [a; b]                | vertcat(a, b, ...) |
| Subscripted reference       | a(s1, s2, ... , sn)   | subsref(a, s)      |
| Subscripted assignment      | a(s1, ... , sn) = b   | subsasgn(a, s, b)  |
| Subscript index             | b(a)                  | subsindex(a)       |

## Example

Overload minus operator with double

```matlab
% save in @double directory, as minus.m
function r = minus(A, B)
  disp('minus was called')
  % to call minus builtin
  r = builtin('minus', A, B)
end

```

## See also

[plus](../operators/plus.md), [minus](../operators/minus.md), [uminus](../operators/uminus.md), [uplus](../operators/uplus.md), [times](../operators/times.md), [mtimes](../operators/mtimes.md), [rdivide](../operators/rdivide.md), [ldivide](../operators/ldivide.md), [mrdivide](../operators/mrdivide.md), [mldivide](../operators/mldivide.md), [power](../operators/power.md), [mpower](../operators/mpower.md), [lt](../operators/lt.md), [gt](../operators/gt.md), [le](../operators/le.md), [ge](../operators/ge.md), [ne](../operators/ne.md), [eq](../operators/eq.md), [and](../operators/and.md), [or](../operators/or.md), [not](../operators/not.md), [colon](../operators/colon.md), [ctranspose](../operators/ctranspose.md), [transpose](../operators/transpose.md), [display](../display_format/display.md), [horzcat](../operators/horzcat.md), [vertcat](../operators/vertcat.md), [subsref](../operators/subsref.md), [subsasgn](../operators/subsasgn.md), [subsindex](../operators/subsindex.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
