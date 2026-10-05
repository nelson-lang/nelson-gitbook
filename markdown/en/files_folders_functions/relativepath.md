# relativepath

Returns the relative path from an actual path to the target path.

## 📝 Syntax

- r = relativepath(path\_1, path\_2)

## 📥 Input argument

- path\_1 - a string: file or directory.
- path\_2 - a string: file or directory.

## 📤 Output argument

- r - a string: relative path.

## 📄 Description


Returns the relative path from an actual path to the target path.

## 💡 Example



```matlab
relativepath(nelsonroot(), [nelsonroot(), '/lgpl-3.0.md'])
relativepath(nelsonroot(), [nelsonroot(), '/etc/finish.m'])
relativepath([nelsonroot(),'/bin'], [nelsonroot(), '/lgpl-3.0.md'])
relativepath('.', '.')
relativepath('.', '..')
relativepath('..', '.')
```


## 🔗 See also

[cd](../files_folders_functions/cd.md), [dir](../files_folders_functions/dir.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
