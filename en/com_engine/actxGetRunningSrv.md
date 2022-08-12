# actxGetRunningSrv

Handle to running instance of Automation server.

## Syntax

- h = actxGetRunningSrv(progid)

## Input argument

- progid - a string: the name of a COM server.

## Output argument

- h - a COM object.

## Description

  <p><b>h = actxGetRunningSrv(progid)</b> gets a reference to a running instance of the OLE/COM Automation server.</p>
  <p><b>progid</b> is the programmatic identifier of the Automation server object and <b>h</b> is the handle to the default interface of the server object.</p>
  <p>The function returns an error if the server specified by progid is not currently running or if the server object is not registered.</p>
  <p>When multiple instances of the Automation server are running, the operating system controls the behavior of this function.</p>

## Example

```matlab
h = actxGetRunningServer('Excel.application')
```

## See also

[actxserver](actxserver.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
