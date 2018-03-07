



sleep


sleep

Suspend code execution.

## Syntax

- sleep(sec)

## Input argument

 - n - a double: duration of the sleep in seconds (decimal number).

## Description


  <p><b>sleep</b> stops Nelson processing any instruction for a speficied number of seconds.</p>
  <p> CTRL-C interruption stops <b>sleep</b>.</p>


## Example

```Nelson
tic();sleep(1);toc()
tic();sleep(0.1);toc()
tic();sleep(0.01);toc()
```

## See also

tic.md tic, toc.md toc.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



