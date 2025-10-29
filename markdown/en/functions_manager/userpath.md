# userpath

Displays or modify default user functions directory.

## 📝 Syntax

- p = userpath()
- userpath(dirname)
- userpath('reset')
- userpath('clear')

## 📥 Input argument

- dirname - an existing directory name
- 'clear' - removes the first directory for current and next sessions of Nelson.
- 'reset' - resets the first directory to the default for your platform.

## 📤 Output argument

- p - string: the specified user path

## 📄 Description

<b>userpath</b> modifies or displays user’s load path.

By default, <b>userpath</b> directory is platform-dependant:

Windows platforms: %USERPROFILE%/Documents/Nelson

Others platforms: $home/Documents/Nelson

It is possible to force userpath by define an environment variable: NELSON_USERPATH with an existing path.

## 💡 Example

```matlab
path
userpath

```

## 🔗 See also

[path](../functions_manager/path.md), [addpath](../functions_manager/addpath.md), [rehash](../functions_manager/rehash.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
