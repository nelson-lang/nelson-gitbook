

# getpid

Get nelson(s) Process IDentificator.

## Syntax

- p = getpid()
- v = getpid('running')

## Input argument

 - 'running' - a string.

## Output argument

 - p - a double: current Process Identificator.
 - v - a vector of double: list of nelson Processes Identification (with same arch) currently running for current user.

## Description


  <p><b>p = getpid()</b> returns current nelson process identificator currently running on computer.</p>
  <p><b>v = getpid('running')</b> returns list of nelson processes identificators (with same arch) running for current user.</p>
  <p>win64 and win32 are two differents architecture but they can run in same time.</p>


## Example

```matlab
p = getpid()
getpid('running')
unix('nelson-gui &')
sleep(5) // detached process need to wait to see available
getpid('running')
unix('nelson-gui &')
sleep(5) // detached process need to wait to see available
getpid('running')
unix('nelson-gui &')
sleep(5) // detached process need to wait to see available
getpid('running')
```

## See also

[unix](unix.html).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



