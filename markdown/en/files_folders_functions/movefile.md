# movefile

Move a file or folder.

## 📝 Syntax

- movefile(source, destination)
- [status, msg] = movefile(source, destination)
- movefile(source, destination, 'f')

## 📥 Input argument

- source - Source file, folder, or list.
- destination - Destination path.

## 📤 Output argument

- status - Logical success flag.
- msg - Error message when the operation fails.

## 📄 Description


<b>movefile</b> copies the source to the destination and removes the source when the copy succeeds.

## 💡 Example



```matlab
[status, msg] = movefile('source.txt', 'destination.txt')
```


## 🔗 See also

[copyfile](../files_folders_functions/copyfile.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
