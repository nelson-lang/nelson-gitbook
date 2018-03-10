

# fft

Fast Fourier transform.

## Syntax

- Y = fft(X)
- Y = fft(X, n)
- Y = fft(X, n, dim)

## Input argument

 - X - a vector, matrix or N-D array (double, single, integer, logical).
 - n - transform length: a non negative integer scalar or [] (default).
 - dim - dimension: a positive integer scalar.

## Output argument

 - Y - a vector, matrix, N-D array: frequency domain representation.

## Description


  <p><b>fft(X)</b> computes the discrete Fourier transform of X using a Fast Fourier Transform (FFT) algorithm based on FFTW library.</p>


## Example

```matlab
% Sampling frequency
Fs = 150;

% Time vector of 1 second
t = 0:1*inv(Fs):1;

% Creates a sine wave of f Hz.
f = 5; 
x = sin(2 * pi * t * f);

% Length of FFT
nfft = 1024; 
% Take fft, padding with zeros so that length(X) is equal to nfft
X = fft(x, nfft)
% FFT is symmetrix
X = X(1:nfft*inv(2))

% Frequency vector
f = (0:nfft *inv(2) -1)*Fs * inv(nfft);
```

## See also

[ifft](ifft.md), [fftw](fftw.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



