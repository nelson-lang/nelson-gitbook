

# COM_delete

Removes COM control or server.

## Syntax

- COM_delete(h)
- delete(h)

## Input argument

 - h - a handle: a COM object.

## Description


  <p><b>delete(h)</b> releases all the interfaces derived from the specified COM server or control, and then deletes the server or control itself.</p>
  <p> This is different from releasing an interface, which releases and invalidates only the particular interface.</p>
  <p>Do not forget to clear h afterward.</p>


## Example

```matlab
pTextToSpeech = actxserver('Sapi.SpVoice')
delete(pTextToSpeech)
clear pTextToSpeech
```

## See also

[actxserver](actxserver.html).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



