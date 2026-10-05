# numEntries

Number of key-value pairs in dictionary.

## 📝 Syntax

- n = numEntries(d)

## 📥 Input argument

- d - scalar: dictionary object.

## 📤 Output argument

- n - scalar: number of entries.

## 📄 Description


<b>n = numEntries(d)</b> retrieves the number of key-value pairs stored in the dictionary. 

If d is an unconfigured dictionary, then numEntries returns 0.

## 💡 Example



```matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
n = numEntries(d)

```


## 🔗 See also

[dictionary](../dictionary/dictionary.md), [entries](../dictionary/entries.md), [keys](../dictionary/keys.md), [values](../dictionary/values.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.5.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
