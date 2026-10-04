# memoize

Add memoization to a function.

## 📝 Syntax

- mf = memoize(fh)

## 📥 Input argument

- fh - function handle to memoize.

## 📤 Output argument

- mf - MemoizedFunction object that caches the results of fh.

## 📄 Description

<b>memoize</b> returns a MemoizedFunction that caches the outputs of the function handle fh. Calling the returned object with a set of inputs evaluates fh once for those inputs and returns the cached result on later calls with the same inputs. Set the Enabled property to false to bypass the cache, and use clearCache to empty it.

## 💡 Example

```matlab
mf = memoize(@(x) x .^ 2);
y = mf(4)
```

## 🔗 See also

[str2func](../function_handle/str2func.md), [func2str](../function_handle/func2str.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
