# lookup

Look up values in an object.

## 📝 Syntax

- value = lookup(obj, ...)
- [value, found] = lookup(obj, ...)

## 📥 Input argument

- obj - object that implements keyed value lookup.
- key - key to look up.

## 📤 Output argument

- value - value associated with the key.
- found - logical value indicating whether the lookup succeeded, when returned by the object implementation.

## 📄 Description


lookup dispatches value lookup to the object type passed as first argument. 

If the first argument does not implement lookup, Nelson reports that the function is not implemented for that type.

## Used function(s)


    dictionary
  

## 💡 Example

Look up a value in a dictionary through the generic function.

```matlab
d = dictionary(["one" "two"], [1 2]);
value = lookup(d, "two")
```


## 🔗 See also

[dictionary](../dictionary/dictionary.md), [isKey](../handle/isKey.md), [insert](../handle/insert.md), [remove](../handle/remove.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
