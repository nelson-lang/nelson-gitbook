# readdictionary

Read dictionary from file.

## 📝 Syntax

- d = readdictionary(filename)
- d = readdictionary(filename, Name, Value)

## 📥 Input argument

- filename - text scalar: source file name.

## 📤 Output argument

- d - scalar: dictionary object.

## 📄 Description

<b>d = readdictionary(filename)</b> reads a JSON object from <b>filename</b> and returns it as a dictionary.

JSON object member names become string dictionary keys. Values are converted to Nelson values. JSON arrays are decoded as cell column arrays. If the JSON values have mixed types or non-scalar sizes, the dictionary value type is <code>cell</code>.

<b>d = readdictionary(filename, Name, Value)</b> customizes the read operation. Supported options are:

- <b>FileType:</b> file type. Supported values are <code>'auto'</code> and <code>'json'</code>. Only JSON dictionary files are currently supported.
- <b>ValueType:</b> target value type used to convert decoded values.
- <b>AllowTrailingCommas:</b> logical scalar. When true, trailing commas in JSON objects are accepted. Default is <code>true</code>.
- <b>AllowComments:</b> logical scalar. When true, JavaScript-style line and block comments are ignored before parsing. Default is <code>true</code>.
- <b>AllowInfAndNaN:</b> logical scalar. When true, <code>NaN</code>, <code>Infinity</code>, <code>Inf</code>, <code>-Infinity</code>, and <code>-Inf</code> tokens are accepted. Default is <code>true</code>.
- <b>DateLocale:</b> accepted for compatibility.

<b>DictionaryNodeName</b> and <b>DictionarySelector</b> are accepted as option names, but they are not supported for JSON dictionary files.

## 💡 Examples

Read a dictionary written as JSON.

```matlab
filename = [tempdir(), 'products.json'];
d = dictionary(["apple", "banana"], [1.2, 2.3]);
writedictionary(d, filename);
r = readdictionary(filename)
```

Read values with an explicit type.

```matlab
filename = [tempdir(), 'counts.json'];
filewrite(filename, '{"a": 1, "b": 2}');
d = readdictionary(filename, 'ValueType', 'single')
```

## 🔗 See also

[writedictionary](../dictionary/writedictionary.md), [dictionary](../dictionary/dictionary.md), [loadnh5](../hdf5/loadnh5.md), [loadmat](../matio/loadmat.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
