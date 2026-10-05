# fgetl

Read string from a file without newline.

## 📝 Syntax

- res = fgetl(f)

## 📥 Input argument

- f - a file descriptor

## 📤 Output argument

- res - a string or -1

## 📄 Description


Read string from a file, stopping after a newline or EOF have been read. 

If there is no more character to read, fgets will return -1. 

newline character removed of the string returned 

characters encoding uses <b>fopen</b> parameter.

## 💡 Example



```matlab
fid = fopen([nelsonroot(), '/etc/startup.m']);

tline = fgetl(fid);
while ischar(tline)
    disp(tline)
    tline = fgetl(fid);
end

fclose(fid);
```


## 🔗 See also

[fclose](../stream_manager/fclose.md), [fopen](../stream_manager/fopen.md), [fgets](../stream_manager/fgets.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
