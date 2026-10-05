#import "nelson_help.typ": *

= Tables

The Tables module provides tools for creating, accessing, and manipulating tabular data in Nelson.

 Tables are array-like structures with named variables (columns), each capable of holding different data types.

 Table metadata is available through T.Properties, and helper functions are provided for adding, moving, renaming, removing and summarizing variables.

 Timetables store tabular variables together with row times and provide time-based sorting, retiming, synchronization, and range queries.

== Create and Convert Tables

Functions for creating tables and timetables and converting between tabular and other data forms.

=== Functions

- #nlink(<table:1_create_convert_tables.array2table>)[array2table]: Convert homogeneous array to table.
- #nlink(<table:1_create_convert_tables.array2timetable>)[array2timetable]: Convert homogeneous array to timetable.
- #nlink(<table:1_create_convert_tables.cell2table>)[cell2table]: Convert cell array to table.
- #nlink(<table:1_create_convert_tables.convertvars>)[convertvars]: Convert table variables.
- #nlink(<table:1_create_convert_tables.struct2table>)[struct2table]: Convert a structure array into a tabular format.
- #nlink(<table:1_create_convert_tables.table>)[table]: A table-like array with named variables, capable of holding different data types
- #nlink(<table:1_create_convert_tables.table2array>)[table2array]: Convert table to homogeneous array.
- #nlink(<table:1_create_convert_tables.table2cell>)[table2cell]: Convert table to cell array
- #nlink(<table:1_create_convert_tables.table2struct>)[table2struct]: Convert table to structure array
- #nlink(<table:1_create_convert_tables.table2timetable>)[table2timetable]: Convert table to timetable.
- #nlink(<table:1_create_convert_tables.timeseries2timetable>)[timeseries2timetable]: Convert time series data to timetable.
- #nlink(<table:1_create_convert_tables.timetable>)[timetable]: Create timetable from variables and row times.
- #nlink(<table:1_create_convert_tables.timetable2table>)[timetable2table]: Convert timetable to table.
- #nlink(<table:1_create_convert_tables.vartype>)[vartype]: Select table variables by type.

== Read and Write Tables

Pages for reading and writing table data.

=== Functions

- #nlink(<table:2_read_write_tables.3_read_write_table>)[Read\/Write table to files]: 

== Summary Information

Functions for table size, type checks, and quick previews.

=== Functions

- #nlink(<table:3_summary_information.head>)[head]: Get top rows of table or array.
- #nlink(<table:3_summary_information.height>)[height]: Number of table rows
- #nlink(<table:3_summary_information.istable>)[istable]: Determine if input is table.
- #nlink(<table:3_summary_information.istabular>)[istabular]: Determine if input is a tabular object.
- #nlink(<table:3_summary_information.istimetable>)[istimetable]: Determine if input is a timetable.
- #nlink(<table:3_summary_information.tail>)[tail]: Get bottom rows of table or array.
- #nlink(<table:3_summary_information.width>)[width]: Number of table variables

== Sort, Filter, and Rearrange

Functions and topics for accessing, sorting, rearranging, and customizing table contents.

=== Functions

- #nlink(<table:4_sort_filter_rearrange.1_accessing_manipulating_table>)[Accessing and Manipulating Tables in Nelson]: 
- #nlink(<table:4_sort_filter_rearrange.addprop>)[addprop]: Add custom table property.
- #nlink(<table:4_sort_filter_rearrange.addvars>)[addvars]: Add variables to a table or timetable.
- #nlink(<table:4_sort_filter_rearrange.mergevars>)[mergevars]: Merge table variables.
- #nlink(<table:4_sort_filter_rearrange.movevars>)[movevars]: Move variables in a table.
- #nlink(<table:4_sort_filter_rearrange.removevars>)[removevars]: Delete variables from table.
- #nlink(<table:4_sort_filter_rearrange.renamevars>)[renamevars]: Rename variables in table.
- #nlink(<table:4_sort_filter_rearrange.rmprop>)[rmprop]: Remove custom table property.
- #nlink(<table:4_sort_filter_rearrange.rows2vars>)[rows2vars]: Reorient table rows into variables.
- #nlink(<table:4_sort_filter_rearrange.sortrows>)[sortrows]: Sort rows of a table or timetable.
- #nlink(<table:4_sort_filter_rearrange.splitvars>)[splitvars]: Split multicolumn table variables.
- #nlink(<table:4_sort_filter_rearrange.stack>)[stack]: Stack table variables into rows.
- #nlink(<table:4_sort_filter_rearrange.topkrows>)[topkrows]: Return top rows of a table or timetable.
- #nlink(<table:4_sort_filter_rearrange.unstack>)[unstack]: Unstack rows into table variables.

== Join and Set Operations

Functions for combining tables with joins and related operations.

=== Functions

- #nlink(<table:5_join_set_operations.innerjoin>)[innerjoin]: Inner join of two tables.
- #nlink(<table:5_join_set_operations.join>)[join]: Join tables by key variables.
- #nlink(<table:5_join_set_operations.outerjoin>)[outerjoin]: Outer join of two tables.

== Apply Functions to Table Contents

Functions and topics for direct calculations and applying functions to table rows or variables.

=== Functions

- #nlink(<table:7_apply_functions.2_direct_computation_with_table>)[Direct computation with Table]: 
- #nlink(<table:7_apply_functions.rowfun>)[rowfun]: Apply a function to table rows.
- #nlink(<table:7_apply_functions.varfun>)[varfun]: Apply a function to table variables.

== Timetables and Events

Functions for timetable ranges, events, synchronization, and retiming.

=== Functions

- #nlink(<table:8_timetables_events.containsrange>)[containsrange]: Determine if timetable row times contain a time range.
- #nlink(<table:8_timetables_events.eventtable>)[eventtable]: Create an event table for a timetable.
- #nlink(<table:8_timetables_events.extractevents>)[extractevents]: Extract an event table from rows of a timetable.
- #nlink(<table:8_timetables_events.isregular>)[isregular]: Determine if timetable row times are regularly spaced.
- #nlink(<table:8_timetables_events.issortedrows>)[issortedrows]: Determine if timetable rows are sorted.
- #nlink(<table:8_timetables_events.lag>)[lag]: Shift timetable data by rows.
- #nlink(<table:8_timetables_events.overlapsrange>)[overlapsrange]: Determine if timetable row times overlap a time range.
- #nlink(<table:8_timetables_events.retime>)[retime]: Adjust timetable data to new row times.
- #nlink(<table:8_timetables_events.syncevents>)[syncevents]: Add and synchronize the variables of the attached event table to a timetable.
- #nlink(<table:8_timetables_events.synchronize>)[synchronize]: Synchronize timetables to common row times.
- #nlink(<table:8_timetables_events.timerange>)[timerange]: Time range for timetable row subscripting.
- #nlink(<table:8_timetables_events.withinrange>)[withinrange]: Find timetable rows within a time range.
- #nlink(<table:8_timetables_events.withtol>)[withtol]: Time tolerance for timetable row subscripting.


#nested[
#pagebreak(weak: true)
#include "1_create_convert_tables/array2table.typ"
#pagebreak(weak: true)
#include "1_create_convert_tables/array2timetable.typ"
#pagebreak(weak: true)
#include "1_create_convert_tables/cell2table.typ"
#pagebreak(weak: true)
#include "1_create_convert_tables/convertvars.typ"
#pagebreak(weak: true)
#include "1_create_convert_tables/struct2table.typ"
#pagebreak(weak: true)
#include "1_create_convert_tables/table.typ"
#pagebreak(weak: true)
#include "1_create_convert_tables/table2array.typ"
#pagebreak(weak: true)
#include "1_create_convert_tables/table2cell.typ"
#pagebreak(weak: true)
#include "1_create_convert_tables/table2struct.typ"
#pagebreak(weak: true)
#include "1_create_convert_tables/table2timetable.typ"
#pagebreak(weak: true)
#include "1_create_convert_tables/timeseries2timetable.typ"
#pagebreak(weak: true)
#include "1_create_convert_tables/timetable.typ"
#pagebreak(weak: true)
#include "1_create_convert_tables/timetable2table.typ"
#pagebreak(weak: true)
#include "1_create_convert_tables/vartype.typ"
#pagebreak(weak: true)
#include "2_read_write_tables/3_read_write_table.typ"
#pagebreak(weak: true)
#include "3_summary_information/head.typ"
#pagebreak(weak: true)
#include "3_summary_information/height.typ"
#pagebreak(weak: true)
#include "3_summary_information/istable.typ"
#pagebreak(weak: true)
#include "3_summary_information/istabular.typ"
#pagebreak(weak: true)
#include "3_summary_information/istimetable.typ"
#pagebreak(weak: true)
#include "3_summary_information/tail.typ"
#pagebreak(weak: true)
#include "3_summary_information/width.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/1_accessing_manipulating_table.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/addprop.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/addvars.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/mergevars.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/movevars.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/removevars.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/renamevars.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/rmprop.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/rows2vars.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/sortrows.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/splitvars.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/stack.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/topkrows.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/unstack.typ"
#pagebreak(weak: true)
#include "5_join_set_operations/innerjoin.typ"
#pagebreak(weak: true)
#include "5_join_set_operations/join.typ"
#pagebreak(weak: true)
#include "5_join_set_operations/outerjoin.typ"
#pagebreak(weak: true)
#include "7_apply_functions/2_direct_computation_with_table.typ"
#pagebreak(weak: true)
#include "7_apply_functions/rowfun.typ"
#pagebreak(weak: true)
#include "7_apply_functions/varfun.typ"
#pagebreak(weak: true)
#include "8_timetables_events/containsrange.typ"
#pagebreak(weak: true)
#include "8_timetables_events/eventtable.typ"
#pagebreak(weak: true)
#include "8_timetables_events/extractevents.typ"
#pagebreak(weak: true)
#include "8_timetables_events/isregular.typ"
#pagebreak(weak: true)
#include "8_timetables_events/issortedrows.typ"
#pagebreak(weak: true)
#include "8_timetables_events/lag.typ"
#pagebreak(weak: true)
#include "8_timetables_events/overlapsrange.typ"
#pagebreak(weak: true)
#include "8_timetables_events/retime.typ"
#pagebreak(weak: true)
#include "8_timetables_events/syncevents.typ"
#pagebreak(weak: true)
#include "8_timetables_events/synchronize.typ"
#pagebreak(weak: true)
#include "8_timetables_events/timerange.typ"
#pagebreak(weak: true)
#include "8_timetables_events/withinrange.typ"
#pagebreak(weak: true)
#include "8_timetables_events/withtol.typ"
]
