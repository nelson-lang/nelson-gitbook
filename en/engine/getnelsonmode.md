

# getnelsonmode

Returns current Nelson mode.

## Syntax

- m = getnelsonmode()

## Output argument

 - m - a string.

## Description


  <p><b>getnelsonmode()</b> returns current Nelson mode used.</p>
  <p>There are <b>5</b> modes: </p>
  <p><b>BASIC_ENGINE</b>: Nelson used as engine without any graphics.</p>
  <p><b>ADVANCED_ENGINE</b>: Nelson used as engine with graphics.</p>
  <p><b>BASIC_TERMINAL</b>: Nelson launched as terminal without graphics.</p>
  <p><b>ADVANCED_TERMINAL</b>: Nelson launched as terminal with graphics.</p>
  <p><b>GUI</b>: Nelson launched as a graphical application (default).</p>


## Example

```matlab
getnelsonmode()
```

## See also

[executable](executable.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



