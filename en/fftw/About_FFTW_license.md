# FFTW License

About FFTW license.

## Description

  <p>The FFTW library is no longer distributed as part of Nelson.</p>
  <p>Note that FFTW is licensed under GPLv2 or higher (see http://www.fftw.org/doc/License-and-Copyright.html), but the bindings
to the library in this nelson's module, is licensed under LGPL v3.0.</p>
  <p>This means that code using the FFTW library via FFTW bindings is subject to FFTW's licensing terms.</p>
  <p>Code using alternative implementations of the FFTW API, such as
MKL's FFTW3 interface (https://software.intel.com/en-us/mkl-developer-reference-c-fftw3-interface-to-intel-math-kernel-library)
are instead subject to the alternative's license.</p>
  <p>If you distribute a derived or combined work, i.e. a program that links to and is distributed
with the FFTW library, then that distribution falls under the terms of the GPL.</p>
  <p>On Windows platforms, MKL FFTW implementation is used and distributed with Nelson.</p>
  <p>On others plaforms, if FFTW library is available, and user chooses to use it, distribution falls under the terms of the GPL.</p>

## See also

[fft](fft.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
