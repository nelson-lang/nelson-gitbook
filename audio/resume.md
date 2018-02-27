



resume


resume

Resumes an audioplayer object.

## Syntax

- resume(playObj)

## Input argument

 - playObj - an audioplayer object.

## Description

<b>resume</b> resumes an audioplayer object.

## Example

```Nelson
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
play(playObj)
pause(playObj)
stop(playObj)
resume(playObj)
playObj
```

## See also

audioplayer_pause.md audioplayer_pause, play.md play.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



