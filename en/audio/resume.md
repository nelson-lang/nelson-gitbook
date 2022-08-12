# resume

Resumes an audioplayer object.

## Syntax

- resume(playObj)

## Input argument

- playObj - an audioplayer object.

## Description

<b>resume</b> resumes an audioplayer object.

## Example

```matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
play(playObj)
pause(playObj)
stop(playObj)
resume(playObj)
playObj
```

## See also

[audioplayer_pause](audioplayer_pause.md), [play](play.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
