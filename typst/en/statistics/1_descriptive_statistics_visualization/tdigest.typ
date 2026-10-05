#import "../nelson_help.typ": *

= tdigest <statistics:1_descriptive_statistics_visualization.tdigest>

t-digest algorithm data structure for accurate quantile estimation with configurable compression parameters

== Syntax

- #raw("td = tdigest()");
- #raw("td = tdigest(compression)");
- #raw("td = tdigest(X)");
- #raw("td = tdigest(compression, X)");

== Input argument

/ compression: compression factor: positive integer scalar.
/ X: an array of double, single, integers, ...

== Output argument

/ td: t-digest representation of the array elements.

== Description

#strong[td \= tdigest(compression, X)]; returns a t-digest representation of the array elements of X.

 TDigest is a data structure for accurate on-line accumulation of rank-based statistics such as quantiles and cumulative distribution functions. It is particularly effective for large data sets and for estimating extreme quantiles. The algorithm is described in detail in the paper "Computing Extremely Accurate Quantiles Using t-Digests" by Ted Dunning and Otmar Ertl.

 The t-digest is particularly useful for:

 

- Large datasets where you need memory-efficient quantile estimation
- Streaming data where data arrives continuously
- Accurate extreme quantiles (like 99th percentile) even with limited memory
- Online algorithms where you can't store all the data The compression factor (100 in the examples) controls the trade-off between accuracy and memory usage - higher values give more accuracy but use more memory.

 Once you have a t-digest object, you can add new data points to it using the #raw("+"); operator, and compute percentiles or quantiles using the #raw("percentile"); or #raw("quantile"); methods.

 For more details, see the original paper linked in the bibliography.

 Methods available:

 

- #strong[percentile(p)];: Returns the value(s) at the given percentile(s) #raw("p"); (in \[0, 100\]).
- #strong[quantile(q)];: Returns the value(s) at the given quantile(s) #raw("q"); (in \[0, 1\]).
- #strong[+];: Adds new data points to the t-digest object. Properties:

 

- #strong[compression];: The compression factor used to create the t-digest.
- #strong[totalWeight];: The total weight of all the centroids in the t-digest.
== Used function(s)

tdigest algorithm

== Bibliography

https:\/\/www.sciencedirect.com\/science\/article\/pii\/S2665963820300403

== Examples

``````matlab
M = rand(1, 15000);
td = tdigest(100, M);
td = td + [1:15000];
td.percentile([5, 50, 95])
td.quantile([0.05 0.5 0.95])
``````

streaming updates

``````matlab

td = tdigest(100);
while(1)
  td = td + randn();
  td.percentile([5, 50, 95])
end
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [initial version],
)

// Author: Allan CORNET
