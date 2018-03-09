

# tic

Starts a stopwatch timer.

## Syntax

- tic()
- t = tic()

## Output argument

 - t - a unsigned integer 64 bit: value of internal timer of the tic function.

## Description


  <p>The sequence of commands <b>tic(); commands ; t = toc() </b>returns the number of seconds required for the commands.</p>
  <p>Consecutive <b>tic</b> commands overwrite the tic timer.</p>


## Example

```Nelson
tic()
sleep(10)
toc()

tic()
sleep(10)
t = toc()
```

## See also

[toc](toc.md), [sleep](sleep.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



