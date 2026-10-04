# optimoptions

Create solver options.

## 📝 Syntax

- options = optimoptions(solver)
- options = optimoptions(solver, name, value)

## 📥 Input argument

- solver - solver name, function handle, or optimization problem.
- name, value - option name and value pairs.

## 📤 Output argument

- options - solver options object.

## 📄 Description

<b>optimoptions</b> validates option names against the selected solver and returns an object convertible to a structure for direct solvers.

## Used function(s)

    optimset

## 📚 Bibliography

P. E. Gill, W. Murray and M. H. Wright, Practical Optimization, Academic Press, 1981.

## 💡 Example

```matlab
opts = optimoptions('fsolve', 'TolFun', 1e-8);
[x, fval] = fsolve(@(x) x - 3, 0, opts)

```

## 🔗 See also

[optimset](../optimization/optimset.md), [optimget](../optimization/optimget.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
