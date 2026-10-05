# optimget

Read an optimization option value.

## 📝 Syntax

- value = optimget(options, name)
- value = optimget(options, name, default)

## 📥 Input argument

- options - structure or solver options object.
- name - option name.
- default - fallback value.

## 📤 Output argument

- value - option value or default.

## 📄 Description


<b>optimget</b> retrieves a named option, using a default when the option is absent or empty.

## Used function(s)


    optimset
  

## 📚 Bibliography

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

## 💡 Example



```matlab
opts = optimset('MaxIter', 200);
maxiter = optimget(opts, 'MaxIter', 100)

```


## 🔗 See also

[optimset](../optimization/optimset.md), [optimoptions](../optimization/optimoptions.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
