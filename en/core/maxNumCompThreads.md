

# maxNumCompThreads

Set/Get maximum number of computional threads.

## Syntax

- T = maxNumCompThreads()
- PREVIOUS_T = maxNumCompThreads(T)
- PREVIOUS_T = maxNumCompThreads('automatic')

## Input argument

 - T - an integer value: number of threads used by Nelson for computations.

## Output argument

 - T - an integer value: number of threads used by Nelson for computations.
 - PREVIOUS_T - an integer value: previous number of threads used by Nelson for computations.

## Description


  <p><b>maxNumCompThreads</b> returns the number of threads used by Nelson for computations.</p>
  <p><b>maxNumCompThreads(T)</b> sets the maximum number of computational threads. This modification is only available for current session.</p>
  <p>By default, maxNumCompThreads uses OMP_NUM_THREADS environment variable or numbers of detected cores.</p>


## Example

```matlab
maxNumCompThreads
```

## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



