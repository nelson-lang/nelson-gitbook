# actxserver

Creates COM server.

## Syntax

- h = actxserver(progid)
- h = actxserver(progid, 'machine', machineName)

## Input argument

- progid - a string: the name of a COM server.
- machineName - a string: the name of the machine on which to start the server.

## Output argument

- h - a COM object.

## Description

<p>
            h = actxserver(progid) creates a COM server using the progid identifier.</p>

## Examples

```matlab
h = actxserver('Excel.application')
```

```matlab
pTextToSpeech = actxserver('Sapi.SpVoice')
for i = 0:5
  invoke(pTextToSpeech, 'Speak', int2str(5 - i));
end
invoke(pTextToSpeech, 'Speak', _('Welcome to COM Interface for Nelson !'));
delete(pTextToSpeech)
clear pTextToSpeech
```

## See also

[actxGetRunningSrv](../com_engine/actxGetRunningSrv.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
