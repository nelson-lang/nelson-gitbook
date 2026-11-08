# stdout

File identifier of the standard output stream.

## 📝 Syntax

- fd = stdout()

## 📤 Output argument

- fd - the value <b>1</b>.

## 📄 Description


<b>fd = stdout()</b> returns <b>1</b>, the file identifier of the standard output stream.

## 💡 Example



```matlab
fprintf(stdout(), 'Hello\n');
```


## 🔗 See also

[stdin](../stream_manager/stdin.md), [stderr](../stream_manager/stderr.md), [fprintf](../stream_manager/fprintf.md), [fopen](../stream_manager/fopen.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
