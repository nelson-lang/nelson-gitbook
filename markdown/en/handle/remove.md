# remove

Remove entries from an object.

## 📝 Syntax

- remove(obj, ...)
- obj = remove(obj, ...)

## 📥 Input argument

- obj - object that implements keyed removal.
- key - key or keys to remove.

## 📤 Output argument

- obj - updated object when the concrete implementation returns one.

## 📄 Description


remove dispatches removal to the object type passed as first argument. 

If the first argument does not implement removal, Nelson reports that the function is not implemented for that type.

## Used function(s)


    dictionary
  

## 💡 Example

Remove an entry from a dictionary through the generic function.

```matlab
d = dictionary(["one" "two"], [1 2]);
d = remove(d, "one")
```


## 🔗 See also

[dictionary](../dictionary/dictionary.md), [lookup](../handle/lookup.md), [isKey](../handle/isKey.md), [insert](../handle/insert.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
