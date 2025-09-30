# userpath

Displays or modify default user functions directory.

## Syntax

- p = userpath()
- userpath(dirname)
- userpath('reset')
- userpath('clear')

## Input argument

- dirname - an existing directory name
- 'clear' - removes the first directory for current and next sessions of Nelson.
- 'reset' - resets the first directory to the default for your platform.

## Output argument

- p - string: the specified user path

## Description

<p>
            <b>userpath</b> modifies or displays user’s load path.</p>
<p>By default, <b>userpath</b> directory is platform-dependant:</p>
<p>Windows platforms: %USERPROFILE%/Documents/Nelson</p>
<p>Others platforms: $home/Documents/Nelson</p>
<p>It is possible to force userpath by define an environment variable: NELSON_USERPATH with an existing path.</p>

## Example

```matlab
path
userpath

```

## See also

[path](../functions_manager/path.md), [addpath](../functions_manager/addpath.md), [rehash](../functions_manager/rehash.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
