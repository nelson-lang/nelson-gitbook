# optimconstr

Create an optimization constraint placeholder.

## 📝 Syntax

- c = optimconstr()
- c = optimconstr(lhs, relation, rhs)

## 📥 Input argument

- lhs, rhs - left and right expressions.
- relation - constraint relation: <=, == or >=.

## 📤 Output argument

- c - optimization constraint object.

## 📄 Description

<b>optimconstr</b> creates constraints used by optimization problems. Relational operators on expressions also create constraints.

## Used function(s)

    optimproblem
    optimexpr

## 📚 Bibliography

P. E. Gill, W. Murray and M. H. Wright, Practical Optimization, Academic Press, 1981.

## 💡 Example

```matlab
x = optimvar('x');
c = optimconstr(x, '<=', 5)

```

## 🔗 See also

[optimproblem](../optimization/optimproblem.md), [prob2struct](../optimization/prob2struct.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
