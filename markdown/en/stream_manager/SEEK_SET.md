# SEEK\_SET

Origin value for fseek: the beginning of the file.

## 📝 Syntax

- id = SEEK\_SET()

## 📤 Output argument

- id - the value <b>-1</b>.

## 📄 Description


<b>id = SEEK\_SET()</b> returns the numeric origin value to pass to <b>fseek</b> to position the file relative to the beginning of the file.

## 💡 Example



```matlab
id = SEEK_SET()
```


## 🔗 See also

[fseek](../stream_manager/fseek.md), [ftell](../stream_manager/ftell.md), [SEEK_CUR](../stream_manager/SEEK_CUR.md), [SEEK_END](../stream_manager/SEEK_END.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
