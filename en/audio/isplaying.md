# isplaying

get info about audio playback is in progress.

## Syntax

- play(playObj)

## Input argument

- play - an audioplayer object.

## Output argument

- play - an logical.

## Description

<b>isplaying</b> get information about audio playback is in progress.

## Example

```matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
play(playObj)
isplaying(playObj)
pause(playObj)
isplaying(playObj)
delete(playObj)
playObj
```

## See also

[audioplayer](audioplayer.md), [playblocking](playblocking.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
