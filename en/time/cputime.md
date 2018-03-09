

# cputime

Return the CPU time used by your Nelon session.

## Syntax

- t = cputime()

## Output argument

 - t - a double: time in seconds.

## Description


  <p><b>cputime()</b> returns the CPU time used by Nelson session.</p>
  <p>To measure performance, it is better to use tic and toc functions.</p>


## Example

```Nelson
t1 = cputime;
sleep(10);
t2 = cputime;
t2 - t1

// versus tic toc
tic()
sleep(10);
toc()
```

## See also

[tic](tic.md), [toc](toc.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



