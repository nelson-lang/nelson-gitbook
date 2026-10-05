#import "nelson_help.typ": *

= FFTW

The FFTW module provides tools for computing fast Fourier transforms in Nelson.

 It supports one-dimensional, two-dimensional, and multidimensional transforms, as well as inverse transforms and frequency-domain manipulations.

 The module enables efficient spectral analysis and signal processing, leveraging high-performance algorithms for both real and complex data.

== Functions

- #nlink(<fftw:About_FFTW_license>)[FFTW License]: About FFTW license.
- #nlink(<fftw:FFTWwrapper>)[FFTWwrapper]: load\/free FFTW library dynamically.
- #nlink(<fftw:fft>)[fft]: Fast Fourier transform.
- #nlink(<fftw:fft2>)[fft2]: 2-D fast Fourier transform.
- #nlink(<fftw:fftn>)[fftn]: N-Dimensions fast Fourier transform.
- #nlink(<fftw:fftshift>)[fftshift]: Shift the zero-frequency component to the center of the spectrum.
- #nlink(<fftw:fftw>)[fftw]: function for determining FFT algorithm.
- #nlink(<fftw:ifft>)[ifft]: Inverse Fast Fourier transform.
- #nlink(<fftw:ifft2>)[ifft2]: 2-D inverse fast Fourier transform.
- #nlink(<fftw:ifftn>)[ifftn]: Inverse multidimensional fast Fourier transform.
- #nlink(<fftw:ifftshift>)[ifftshift]: inverse of fftshift


#nested[
#pagebreak(weak: true)
#include "About_FFTW_license.typ"
#pagebreak(weak: true)
#include "FFTWwrapper.typ"
#pagebreak(weak: true)
#include "fft.typ"
#pagebreak(weak: true)
#include "fft2.typ"
#pagebreak(weak: true)
#include "fftn.typ"
#pagebreak(weak: true)
#include "fftshift.typ"
#pagebreak(weak: true)
#include "fftw.typ"
#pagebreak(weak: true)
#include "ifft.typ"
#pagebreak(weak: true)
#include "ifft2.typ"
#pagebreak(weak: true)
#include "ifftn.typ"
#pagebreak(weak: true)
#include "ifftshift.typ"
]
