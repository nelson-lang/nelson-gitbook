#import "nelson_help.typ": *

= Parquet

The Parquet module provides local file support for Apache Parquet data sets.

 It reads and writes column-oriented tables, exposes file metadata, and provides datastore and row-filter helpers for workflows that process one or more Parquet files.

 Supported table variables include logical values, integer types, single and double precision floating point values, text, datetime values, duration values, nested tables stored as struct columns, and homogeneous primitive cell vectors stored as list columns.

== Functions

- #nlink(<parquet:class_ParquetDatastore>)[nelson.io.datastore.ParquetDatastore]: Datastore object for Parquet files.
- #nlink(<parquet:class_ParquetInfo>)[nelson.io.parquet.ParquetInfo]: Metadata object returned by parquetinfo.
- #nlink(<parquet:class_RowFilter>)[nelson.io.RowFilter]: Object that stores a row filter expression.
- #nlink(<parquet:parquetDatastore>)[parquetDatastore]: Create a datastore for one or more Parquet files.
- #nlink(<parquet:parquetinfo>)[parquetinfo]: Return metadata for a Parquet file.
- #nlink(<parquet:parquetread>)[parquetread]: Read table data from a Parquet file.
- #nlink(<parquet:parquetwrite>)[parquetwrite]: Write a table to a Parquet file.
- #nlink(<parquet:rowfilter>)[rowfilter]: Create a row filter expression.


#nested[
#pagebreak(weak: true)
#include "class_ParquetDatastore.typ"
#pagebreak(weak: true)
#include "class_ParquetInfo.typ"
#pagebreak(weak: true)
#include "class_RowFilter.typ"
#pagebreak(weak: true)
#include "parquetDatastore.typ"
#pagebreak(weak: true)
#include "parquetinfo.typ"
#pagebreak(weak: true)
#include "parquetread.typ"
#pagebreak(weak: true)
#include "parquetwrite.typ"
#pagebreak(weak: true)
#include "rowfilter.typ"
]
