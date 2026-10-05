#import "nelson_help.typ": *

= HDF5

The HDF5 module provides support for working with Hierarchical Data Format (HDF5) files in Nelson.

 It creates datasets, reads and writes data and attributes, and inspects file contents.

 In addition to standard HDF5 support, it includes utilities for Nelson's native .nh5 format, enabling users to save, load, and inspect workspace variables efficiently.

 This module is essential for managing large, structured, and portable scientific data.

== Functions

- #nlink(<hdf5:h5create>)[h5create]: Creates a data set.
- #nlink(<hdf5:h5dump>)[h5dump]: dump the content of hdf5 file as text.
- #nlink(<hdf5:h5ls>)[h5ls]: List the content of an HDF5 file.
- #nlink(<hdf5:h5read>)[h5read]: Read HDF5 data set.
- #nlink(<hdf5:h5readatt>)[h5readatt]: Read HDF5 attribute.
- #nlink(<hdf5:h5write>)[h5write]: Writes HDF5 data set.
- #nlink(<hdf5:h5writeatt>)[h5writeatt]: Writes HDF5 attribute.
- #nlink(<hdf5:isnh5file>)[isnh5file]: Checks if filename a valid .nh5 file
- #nlink(<hdf5:loadnh5>)[loadnh5]: load data from .nh5 file into Nelson's workspace.
- #nlink(<hdf5:savenh5>)[savenh5]: save workspace variables to .nh5 file
- #nlink(<hdf5:whonh5>)[whonh5]: List variables in an valid .nh5 file.
- #nlink(<hdf5:whosnh5>)[whosnh5]: List variables in an valid .nh5 file with sizes and types.


#nested[
#pagebreak(weak: true)
#include "h5create.typ"
#pagebreak(weak: true)
#include "h5dump.typ"
#pagebreak(weak: true)
#include "h5ls.typ"
#pagebreak(weak: true)
#include "h5read.typ"
#pagebreak(weak: true)
#include "h5readatt.typ"
#pagebreak(weak: true)
#include "h5write.typ"
#pagebreak(weak: true)
#include "h5writeatt.typ"
#pagebreak(weak: true)
#include "isnh5file.typ"
#pagebreak(weak: true)
#include "loadnh5.typ"
#pagebreak(weak: true)
#include "savenh5.typ"
#pagebreak(weak: true)
#include "whonh5.typ"
#pagebreak(weak: true)
#include "whosnh5.typ"
]
