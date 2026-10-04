# optimset

Create or edit optimization option structures.

## 📝 Syntax

- options = optimset()
- options = optimset(name, value)
- options = optimset(oldopts, name, value)

## 📥 Input argument

- name, value - option name and value pairs.
- oldopts - existing option structure.

## 📤 Output argument

- options - option structure.

## 📄 Description

<b>optimset</b> creates a structure accepted by the direct solvers in this module. Option names support unambiguous abbreviations.

## 📚 Bibliography

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

## 💡 Example

```matlab
opts = optimset('TolX', 1e-8, 'Display', 'off')
tol = optimget(opts, 'TolX')

```

## 🔗 See also

[optimget](../optimization/optimget.md), [optimoptions](../optimization/optimoptions.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
