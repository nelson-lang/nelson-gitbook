# SEEK\_END

Origin value for fseek: the end of the file.

## 📝 Syntax

- id = SEEK\_END()

## 📤 Output argument

- id - the value <b>1</b>.

## 📄 Description


<b>id = SEEK\_END()</b> returns the numeric origin value to pass to <b>fseek</b> to position the file relative to the end of the file.

## 💡 Example



```matlab
id = SEEK_END()
```


## 🔗 See also

[fseek](../stream_manager/fseek.md), [ftell](../stream_manager/ftell.md), [SEEK_SET](../stream_manager/SEEK_SET.md), [SEEK_CUR](../stream_manager/SEEK_CUR.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
