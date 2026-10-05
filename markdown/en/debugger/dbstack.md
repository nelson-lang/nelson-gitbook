# dbstack

call stack.

## 📝 Syntax

- dbstack
- st = dbstack()
- dbstack('-completenames')
- st = dbstack('-completenames')
- dbstack('-completenames', omit)
- st = dbstack('-completenames', omit)

## 📥 Input argument

- omit - an integer value: Number of frames to omit (must be positive).

## 📤 Output argument

- st - a struct

## 📄 Description


<b>dbstack</b> displays the file names and line numbers of the function calls. 

<b>dbstack('-completenames')</b> displays the full file names.

## 💡 Example

Creates a myfun.m and calls it.

```matlab
function myfun(x)
dbstack();
end
```


## 🔗 See also

[which](../functions_manager/which.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
