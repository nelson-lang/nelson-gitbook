# HDF5

The HDF5 module provides support for working with Hierarchical Data Format (HDF5) files in Nelson.

It allows users to create datasets, read and write data and attributes, and explore file contents.

In addition to standard HDF5 support, it includes utilities for Nelson's native .nh5 format, enabling users to save, load, and inspect workspace variables efficiently.

This module is essential for managing large, structured, and portable scientific data.

## Functions

- [h5create](h5create.md) - Creates a data set.
- [h5dump](h5dump.md) - dump the content of hdf5 file as text.
- [h5ls](h5ls.md) - List the content of an HDF5 file.
- [h5read](h5read.md) - Read HDF5 data set.
- [h5readatt](h5readatt.md) - Read HDF5 attribute.
- [h5write](h5write.md) - Writes HDF5 data set.
- [h5writeatt](h5writeatt.md) - Writes HDF5 attribute.
- [isnh5file](isnh5file.md) - Checks if filename a valid .nh5 file
- [loadnh5](loadnh5.md) - load data from .nh5 file into Nelson's workspace.
- [savenh5](savenh5.md) - save workspace variables to .nh5 file
- [whonh5](whonh5.md) - List variables in an valid .nh5 file.
- [whosnh5](whosnh5.md) - List variables in an valid .nh5 file with sizes and types.
