

# squeeze

Remove dimensions of length 1.

## Syntax

- B = squeeze(A)

## Input argument

 - A - input array: multidimensional array

## Output argument

 - B - output array.

## Description


  <p><b>B = squeeze(A)</b> returns an array with the same elements as the input array A, but with dimensions of length 1 removed.</p>


## Example

```matlab
A = zeros(1, 1, 3);
A(:, :, 1:3) = [1 20 3];
R = squeeze(A)
```

## See also

[reshape](reshape.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



