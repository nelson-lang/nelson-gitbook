#import "nelson_help.typ": *

= FFTW License <fftw:About_FFTW_license>

About FFTW license.

== Description

The FFTW library is no longer distributed as part of Nelson.

 Note that FFTW is licensed under GPLv2 or higher (see#link("https://www.fftw.org/doc/License-and-Copyright.html")[https:\/\/www.fftw.org\/doc\/License-and-Copyright.html];), but the bindings to the library in this nelson's module, is licensed under LGPL v3.0.

 This means that code using the FFTW library via FFTW bindings is subject to FFTW's licensing terms.

 Code using alternative implementations of the FFTW API, such as MKL's FFTW3 interface ( #link("https://software.intel.com/en-us/mkl-developer-reference-c-fftw3-interface-to-intel-math-kernel-library")[https:\/\/software.intel.com\/en-us\/mkl-developer-reference-c-fftw3-interface-to-intel-math-kernel-library]; ) are instead subject to the alternative's license.

 If you distribute a derived or combined work, i.e. a program that links to and is distributed with the FFTW library, then that distribution falls under the terms of the GPL.

 On Windows platforms, MKL FFTW implementation is used and distributed with Nelson.

 On others platforms, if FFTW library is available, and user chooses to use it, distribution falls under the terms of the GPL.


== See also

#nlink(<fftw:fft>)[fft];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
