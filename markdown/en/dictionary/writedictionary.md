# writedictionary

Write dictionary to file.

## 📝 Syntax

- writedictionary(d, filename)
- writedictionary(d, filename, Name, Value)

## 📥 Input argument

- d - scalar: configured dictionary object.
- filename - text scalar: destination file name.

## 📄 Description


<b>writedictionary(d, filename)</b> writes the configured dictionary <b>d</b> to a JSON file. 

Dictionary keys are written as JSON object member names. Keys must be text, numeric, or logical scalar values. Values can be scalar values, arrays, cell arrays, structures, or structure arrays when they can be represented as JSON values. 

<b>writedictionary(d, filename, Name, Value)</b> customizes the write operation. Supported options are: 

- <b>FileType:</b> file type. Supported values are <code>'auto'</code> and <code>'json'</code>. Only JSON dictionary files are currently supported. 
- <b>PrettyPrint:</b> logical scalar. When true, writes indented JSON text. Default is <code>true</code>. 
- <b>PreserveInfAndNaN:</b> logical scalar. When true, writes <code>NaN</code>, <code>Infinity</code>, and <code>-Infinity</code> tokens for non-finite numeric values. Default is <code>true</code>. 

MAT and NH5 persistence for dictionary variables is handled by <b>savemat</b>/<b>loadmat</b> and <b>savenh5</b>/<b>loadnh5</b>.

## 💡 Examples

Write and read a dictionary stored as JSON.

```matlab
filename = [tempdir(), 'products.json'];
d = dictionary(["apple", "banana"], [1.2, 2.3]);
writedictionary(d, filename);
r = readdictionary(filename)
```
Write heterogeneous dictionary values.

```matlab
filename = [tempdir(), 'mixed_dictionary.json'];
d = dictionary(["vector", "data"], {[1 NaN Inf], struct('name', "Nelson")});
writedictionary(d, filename, 'PrettyPrint', false);
r = readdictionary(filename)
```


## 🔗 See also

[readdictionary](../dictionary/readdictionary.md), [dictionary](../dictionary/dictionary.md), [savenh5](../hdf5/savenh5.md), [savemat](../matio/savemat.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
