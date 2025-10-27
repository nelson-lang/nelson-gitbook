# isKey

Check if dictionary contains key

## 📝 Syntax

- tf = isKey(d)

## 📥 Input argument

- d - scalar: dictionary object.

## 📤 Output argument

- tf - scalar logical: true if key, false if not.

## 📄 Description

<b>tf = isKey(d, key)</b> returns a logical true if the specified key exists in the configured dictionary, and a logical false if it does not.

If <b>d</b> is an unconfigured dictionary, <b>isKey</b> throws an error.

If <b>key</b> is an array of multiple keys, then tf is a logical array of the same size.

## 💡 Example

```matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
tf = isKey(d, "John")
tf = isKey(d, ["biil" , "Yannis")
```

## 🔗 See also

[dictionary](../dictionary/dictionary.md), [configureDictionary](../dictionary/configureDictionary.md), [keys](../dictionary/keys.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.5.0   | initial version |

## 👤 Author

Allan CORNET
