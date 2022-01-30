

# echo

Controls the echoing during their execution.

## Syntax

- state = echo()
- echo()
- echo('on')
- echo('off')

## Input argument

 - 'on' - enable echo mode (default)
 - 'off' - disable echo mode

## Output argument

 - state - a string: 'on' or 'off'

## Description


  <p><b>echo('off')</b> disable echo mode.</p>
  <p>Without input and output arguments, <b>echo</b> toggles the current echo state.</p>


## Example

an example
```matlab
R = echo
echo('on')
A = 1+1
echo('off')
A = A+1
echo(R)
A
```

## See also

[disp](disp.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



