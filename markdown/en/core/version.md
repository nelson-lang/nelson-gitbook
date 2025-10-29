# version

Return the version of Nelson.

## 📝 Syntax

- ver_str = version
- ver_date = version('-date')
- ver_desc = version('-description')
- ver_comp = version('-compiler')
- ver_hash = version('-commit_hash')
- ver_number = version('-number')
- ver_release = version('-release')
- [ver_str, ver_release] = version()

## 📥 Input argument

- '-date' - a string to get release date
- '-description' - a string to get release description
- '-semantic' - a string to get semantic version
- '-release' - a string to get release number
- '-compiler' - a string to get compiler used to build Nelson
- '-number' - a string to get semantic version
- '-commit_hash' - a string to get commit hash

## 📤 Output argument

- ver_str - a string : version
- ver_date - a string: version date
- ver_desc - a string: version description
- ver_release - a string: release info
- ver_commit - a string: commit hash
- ver_compiler - a cell of string: {compiler used, arch}
- ver_number - a matrix of integer values: [MAJOR, MINOR, MAINTENANCE, BUILD]

## 📄 Description

<b>version</b> the version of Nelson.

## 💡 Examples

```matlab
ver = version
```

```matlab
ver_date = version('-date')
```

```matlab
ver_date = version('-description')
```

```matlab
ver_date = version('-release')
```

```matlab
ver_version_vector] = version('-semantic')
```

```matlab
ver_version_vector = version('-number')
```

```matlab
compiler_info = version('-compiler')
```

```matlab
[ver, release] = version()
```

## 🔗 See also

[computer](../os_functions/computer.md).

## 🕔 History

| Version | 📄 Description            |
| ------- | ------------------------- |
| 1.0.0   | initial version           |
| 1.2.0   | `-semantic` option added. |

<!--
## 👤 Author

Allan CORNET
-->
