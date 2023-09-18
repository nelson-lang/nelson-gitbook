# overloading

Customizing Operators and Functions

## Description

  <p>In various scenarios, you may find it necessary to modify the behavior of Nelson's operators and functions when they operate on objects or basic types.</p>
  <p>This customization can be achieved by overloading the relevant functions, allowing them to handle diverse types and quantities of input arguments and execute the appropriate operation for the highest-priority object.</p>
  <p/>
  <p>Overloading Operators:</p>
  <p/>
  <p>Each built-in operator corresponds to a specific function name (e.g., the <b>-</b> operator is associated with the minus.m function).</p>
  <p>You can overload any operator by creating an M-file with the appropriate name within the class directory.</p>
  <p>For instance, if either <b>A</b> or <b>B</b> is an object of type <b>classname</b>, the expression <b>A - B</b> triggers a call to a function <b>@classname/minus.m</b>, provided it exists.</p>
  <p>When <b>A</b> and <b>B</b> belong to different classes, Nelson employs precedence rules to determine which method to apply.</p>
  <p/>
  <p>The table below provides a list of function names associated with most of the Nelson operators:</p>
  <p/>
  <table style="width:100%">
    <tr>
      <th>Description</th>
      <th>Operator</th>
      <th>Function</th>
    </tr>
    <tr>
      <td>Binary addition</td>
      <td>a + b</td>
      <td>plus(a, b)</td>
    </tr>
    <tr>
      <td>Binary subtraction</td>
      <td>a - b</td>
      <td>minus(a, b)</td>
    </tr>
    <tr>
      <td>Unary minus</td>
      <td>-a</td>
      <td>uminus(a)</td>
    </tr>
    <tr>
      <td>Unary plus</td>
      <td>+a</td>
      <td>uplus(a)</td>
    </tr>
    <tr>
      <td>Element-wise multiplication</td>
      <td>a .* b</td>
      <td>times(a, b)</td>
    </tr>
    <tr>
      <td>Matrix multiplication</td>
      <td>a * b</td>
      <td>mtimes(a, b)</td>
    </tr>
    <tr>
      <td>Right element-wise division</td>
      <td>a ./ b</td>
      <td>rdivide(a, b)</td>
    </tr>
    <tr>
      <td>Left element-wise division</td>
      <td>a .\ b</td>
      <td>ldivide(a, b)</td>
    </tr>
    <tr>
      <td>Matrix right division</td>
      <td>a / b</td>
      <td>mrdivide(a, b)</td>
    </tr>
    <tr>
      <td>Matrix left division</td>
      <td>a \ b</td>
      <td>mldivide(a, b)</td>
    </tr>
    <tr>
      <td>Element-wise power</td>
      <td>a .^ b</td>
      <td>power(a, b)</td>
    </tr>
    <tr>
      <td>Matrix power</td>
      <td>a ^ b</td>
      <td>mpower(a, b)</td>
    </tr>
    <tr>
      <td>Less than</td>
      <td>a &lt; b</td>
      <td>lt(a, b)</td>
    </tr>
    <tr>
      <td>Greater than</td>
      <td>a &gt; b</td>
      <td>gt(a, b)</td>
    </tr>
    <tr>
      <td>Less than or equal to</td>
      <td>a &lt;= b</td>
      <td>le(a, b)</td>
    </tr>
    <tr>
      <td>Greater than or equal to</td>
      <td>a &gt;= b</td>
      <td>ge(a, b)</td>
    </tr>
    <tr>
      <td>Not equal to</td>
      <td>a ~= b</td>
      <td>ne(a, b)</td>
    </tr>
    <tr>
      <td>Equality</td>
      <td>a == b</td>
      <td>eq(a, b)</td>
    </tr>
    <tr>
      <td>Logical AND</td>
      <td>a &amp; b</td>
      <td>and(a, b)</td>
    </tr>
    <tr>
      <td>Logical OR</td>
      <td>a | b</td>
      <td>or(a, b)</td>
    </tr>
    <tr>
      <td>Logical NOT</td>
      <td>~a</td>
      <td>not(a)</td>
    </tr>
    <tr>
      <td>Colon operator</td>
      <td>a:d:b</td>
      <td>colon(a, d, b)</td>
    </tr>
    <tr>
      <td>Complex conjugate transpose</td>
      <td>a'</td>
      <td>ctranspose(a)</td>
    </tr>
    <tr>
      <td>Matrix transpose</td>
      <td>a.'</td>
      <td>transpose(a)</td>
    </tr>
    <tr>
      <td>Display method</td>
      <td>command window output</td>
      <td>display(a)</td>
    </tr>
    <tr>
      <td>Horizontal concatenation</td>
      <td>[a, b]</td>
      <td>horzcat(a, b, ...)</td>
    </tr>
    <tr>
      <td>Vertical concatenation</td>
      <td>[a; b]</td>
      <td>vertcat(a, b, ...)</td>
    </tr>
    <tr>
      <td>Subscripted reference</td>
      <td>a(s1, s2, ... , sn)</td>
      <td>subsref(a, s)</td>
    </tr>
    <tr>
      <td>Subscripted assignment</td>
      <td>a(s1, ... , sn) = b</td>
      <td>subsasgn(a, s, b)</td>
    </tr>
    <tr>
      <td>Subscript index</td>
      <td>b(a)</td>
      <td>subsindex(a)</td>
    </tr>
  </table>

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

[plus](../operators/plus.md), [minus](../operators/minus.md), [uminus](../operators/uminus.md), [uplus](../operators/uplus.md), [times](../operators/times.md), [mtimes](../operators/mtimes.md), [rdivide](../operators/rdivide.md), [ldivide](../operators/ldivide.md), [mrdivide](../operators/mrdivide.md), [mldivide](../operators/mldivide.md), [power](../operators/power.md), [mpower](../operators/mpower.md), [lt](../operators/lt.md), [gt](../operators/gt.md), [le](../operators/le.md), [ge](../operators/ge.md), [ne](../operators/ne.md), [eq](../operators/eq.md), [and](../operators/and.md), [or](../operators/or.md), [not](../operators/not.md), [colon](../operators/colon.md), [ctranspose](../operators/ctranspose.md), [transpose](../operators/transpose.md), [display](../display_format/display.md), [horzcat](../operators/horzcat.md), [vertcat](../operators/vertcat.md), [subsref](subsref.html), [subsasgn](subsasgn.html), [subsindex](../operators/subsindex.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
