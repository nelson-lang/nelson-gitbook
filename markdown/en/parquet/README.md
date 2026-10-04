# Parquet

The Parquet module provides local file support for Apache Parquet data sets.

It reads and writes column-oriented tables, exposes file metadata, and provides datastore and row-filter helpers for workflows that process one or more Parquet files.

Supported table variables include logical values, integer types, single and double precision floating point values, text, datetime values, duration values, nested tables stored as struct columns, and homogeneous primitive cell vectors stored as list columns.

## Functions

- [nelson.io.datastore.ParquetDatastore](class_ParquetDatastore.md) - Datastore object for Parquet files.
- [nelson.io.parquet.ParquetInfo](class_ParquetInfo.md) - Metadata object returned by parquetinfo.
- [nelson.io.RowFilter](class_RowFilter.md) - Object that stores a row filter expression.
- [parquetDatastore](parquetDatastore.md) - Create a datastore for one or more Parquet files.
- [parquetinfo](parquetinfo.md) - Return metadata for a Parquet file.
- [parquetread](parquetread.md) - Read table data from a Parquet file.
- [parquetwrite](parquetwrite.md) - Write a table to a Parquet file.
- [rowfilter](rowfilter.md) - Create a row filter expression.
