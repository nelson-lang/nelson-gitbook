#import "../nelson_help.typ": *

= timeseries.getqualitydesc <time:8_timeseries.timeseries.getqualitydesc>

Return quality descriptions for quality codes.

== Syntax

- #raw("desc = getqualitydesc(ts, codes)");

== Input argument

/ ts: Input timeseries object.
/ codes: Quality codes to describe.

== Output argument

/ desc: Quality code descriptions.

== Description

#strong[getqualitydesc]; Looks up quality code descriptions from ts.QualityInfo.


== Example

``````matlab
ts = timeseries([1; 2], [1; 2]);
ts.QualityInfo = tsdata.qualmetadata('Code', [0 1], 'Description', {'ok', 'bad'});
getqualitydesc(ts, [0 1])

``````


== See also

#nlink(<time:8_timeseries.timeseries>)[timeseries];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
