# SEEK\_CUR

Origin value for fseek: the current position.

## 📝 Syntax

- id = SEEK\_CUR()

## 📤 Output argument

- id - the value <b>0</b>.

## 📄 Description


<b>id = SEEK\_CUR()</b> returns the numeric origin value to pass to <b>fseek</b> to position the file relative to the current position.

## 💡 Example



```matlab
id = SEEK_CUR()
```


## 🔗 See also

[fseek](../stream_manager/fseek.md), [ftell](../stream_manager/ftell.md), [SEEK_SET](../stream_manager/SEEK_SET.md), [SEEK_END](../stream_manager/SEEK_END.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
