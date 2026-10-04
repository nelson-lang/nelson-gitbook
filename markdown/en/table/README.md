# Tables

The Tables module provides tools for creating, accessing, and manipulating tabular data in Nelson.

Tables are array-like structures with named variables (columns), each capable of holding different data types.

Table metadata is available through T.Properties, and helper functions are provided for adding, moving, renaming, removing and summarizing variables.

Timetables store tabular variables together with row times and provide time-based sorting, retiming, synchronization, and range queries.

## Create and Convert Tables

Functions for creating tables and timetables and converting between tabular and other data forms.

### Functions

- [array2table](1_create_convert_tables/array2table.md) - Convert homogeneous array to table.
- [array2timetable](1_create_convert_tables/array2timetable.md) - Convert homogeneous array to timetable.
- [cell2table](1_create_convert_tables/cell2table.md) - Convert cell array to table.
- [convertvars](1_create_convert_tables/convertvars.md) - Convert table variables.
- [struct2table](1_create_convert_tables/struct2table.md) - Convert a structure array into a tabular format.
- [table](1_create_convert_tables/table.md) - A table-like array with named variables, capable of holding different data types
- [table2array](1_create_convert_tables/table2array.md) - Convert table to homogeneous array.
- [table2cell](1_create_convert_tables/table2cell.md) - Convert table to cell array
- [table2struct](1_create_convert_tables/table2struct.md) - Convert table to structure array
- [table2timetable](1_create_convert_tables/table2timetable.md) - Convert table to timetable.
- [timeseries2timetable](1_create_convert_tables/timeseries2timetable.md) - Convert time series data to timetable.
- [timetable](1_create_convert_tables/timetable.md) - Create timetable from variables and row times.
- [timetable2table](1_create_convert_tables/timetable2table.md) - Convert timetable to table.
- [vartype](1_create_convert_tables/vartype.md) - Select table variables by type.

## Read and Write Tables

Pages for reading and writing table data.

### Functions

- [Read/Write table to files](2_read_write_tables/3_read_write_table.md) -

## Summary Information

Functions for table size, type checks, and quick previews.

### Functions

- [head](3_summary_information/head.md) - Get top rows of table or array.
- [height](3_summary_information/height.md) - Number of table rows
- [istable](3_summary_information/istable.md) - Determine if input is table.
- [istabular](3_summary_information/istabular.md) - Determine if input is a tabular object.
- [istimetable](3_summary_information/istimetable.md) - Determine if input is a timetable.
- [tail](3_summary_information/tail.md) - Get bottom rows of table or array.
- [width](3_summary_information/width.md) - Number of table variables

## Sort, Filter, and Rearrange

Functions and topics for accessing, sorting, rearranging, and customizing table contents.

### Functions

- [Accessing and Manipulating Tables in Nelson](4_sort_filter_rearrange/1_accessing_manipulating_table.md) -
- [addprop](4_sort_filter_rearrange/addprop.md) - Add custom table property.
- [addvars](4_sort_filter_rearrange/addvars.md) - Add variables to a table or timetable.
- [mergevars](4_sort_filter_rearrange/mergevars.md) - Merge table variables.
- [movevars](4_sort_filter_rearrange/movevars.md) - Move variables in a table.
- [removevars](4_sort_filter_rearrange/removevars.md) - Delete variables from table.
- [renamevars](4_sort_filter_rearrange/renamevars.md) - Rename variables in table.
- [rmprop](4_sort_filter_rearrange/rmprop.md) - Remove custom table property.
- [rows2vars](4_sort_filter_rearrange/rows2vars.md) - Reorient table rows into variables.
- [sortrows](4_sort_filter_rearrange/sortrows.md) - Sort rows of a table or timetable.
- [splitvars](4_sort_filter_rearrange/splitvars.md) - Split multicolumn table variables.
- [stack](4_sort_filter_rearrange/stack.md) - Stack table variables into rows.
- [topkrows](4_sort_filter_rearrange/topkrows.md) - Return top rows of a table or timetable.
- [unstack](4_sort_filter_rearrange/unstack.md) - Unstack rows into table variables.

## Join and Set Operations

Functions for combining tables with joins and related operations.

### Functions

- [innerjoin](5_join_set_operations/innerjoin.md) - Inner join of two tables.
- [join](5_join_set_operations/join.md) - Join tables by key variables.
- [outerjoin](5_join_set_operations/outerjoin.md) - Outer join of two tables.

## Apply Functions to Table Contents

Functions and topics for direct calculations and applying functions to table rows or variables.

### Functions

- [Direct computation with Table](7_apply_functions/2_direct_computation_with_table.md) -
- [rowfun](7_apply_functions/rowfun.md) - Apply a function to table rows.
- [varfun](7_apply_functions/varfun.md) - Apply a function to table variables.

## Timetables and Events

Functions for timetable ranges, events, synchronization, and retiming.

### Functions

- [containsrange](8_timetables_events/containsrange.md) - Determine if timetable row times contain a time range.
- [eventtable](8_timetables_events/eventtable.md) - Create an event table for a timetable.
- [extractevents](8_timetables_events/extractevents.md) - Extract an event table from rows of a timetable.
- [isregular](8_timetables_events/isregular.md) - Determine if timetable row times are regularly spaced.
- [issortedrows](8_timetables_events/issortedrows.md) - Determine if timetable rows are sorted.
- [lag](8_timetables_events/lag.md) - Shift timetable data by rows.
- [overlapsrange](8_timetables_events/overlapsrange.md) - Determine if timetable row times overlap a time range.
- [retime](8_timetables_events/retime.md) - Adjust timetable data to new row times.
- [syncevents](8_timetables_events/syncevents.md) - Add and synchronize the variables of the attached event table to a timetable.
- [synchronize](8_timetables_events/synchronize.md) - Synchronize timetables to common row times.
- [timerange](8_timetables_events/timerange.md) - Time range for timetable row subscripting.
- [withinrange](8_timetables_events/withinrange.md) - Find timetable rows within a time range.
- [withtol](8_timetables_events/withtol.md) - Time tolerance for timetable row subscripting.
