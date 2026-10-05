# diff\_file

diff two files or strings.

## 📝 Syntax

- res = diff(filename\_1, filename\_2, with\_eol)

## 📥 Input argument

- filename\_1 - a string: a filename.
- filename\_2 - a string: a filename.
- with\_eol - a logical: with end of line considered or not (true by default).

## 📤 Output argument

- res - a string: ' ' if no diff detected.
- msg - a string: error message

## 📄 Description


<b>diff\_file</b> compares two files and returns diff as unified format. 

if compared files are equals, res is an empty string.

## 💡 Example



```matlab
res = diff_file([nelsonroot(), '/etc/startup.m'], [nelsonroot(), '/etc/startup.m'])
res = diff_file([nelsonroot(), '/etc/startup.m'], [nelsonroot(), '/etc/finish.m'])
```


## 🔗 See also

[isdir](../files_folders_functions/isdir.md), [isfile](../files_folders_functions/isfile.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
