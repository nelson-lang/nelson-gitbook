



format


format

Display format and number printing.

## Syntax

- fmt = format()
- format()
- format(new_style)
- fmt = format('get')

## Input argument

 - new_style - a string

## Output argument

 - fmt - a string: current format used

## Description


  <p><b>format(new_style)</b> changes the display format and number printing of the current session.</p>
  <p><b>format()</b> without output and input arguments will reset to default format (short).</p>
  <p>Current styles supported:</p>
  <p>
    <b>short</b>
  </p>
  <p>
    <b>long</b>
  </p>
  <p>
    <b>shortE</b>
  </p>
  <p>
    <b>longE</b>
  </p>
  <p>
    <b>hex</b>
  </p>


## Example

an example
```Nelson
current_style = format()
current_style = format('get')
pi
format('short')
pi
format('long')
pi
format('shortE')
pi
format('longE')
pi
format('hex')
pi
format(current_style)
```

## See also

disp.md disp.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



