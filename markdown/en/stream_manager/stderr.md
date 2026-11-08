# stderr

File identifier of the standard error stream.

## 📝 Syntax

- fd = stderr()

## 📤 Output argument

- fd - the value <b>2</b>.

## 📄 Description


<b>fd = stderr()</b> returns <b>2</b>, the file identifier of the standard error stream.

## 💡 Example



```matlab
fprintf(stderr(), 'Hello\n');
```


## 🔗 See also

[stdin](../stream_manager/stdin.md), [stdout](../stream_manager/stdout.md), [fprintf](../stream_manager/fprintf.md), [fopen](../stream_manager/fopen.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
