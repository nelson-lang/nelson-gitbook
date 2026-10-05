#import "nelson_help.typ": *

= Data analysis

The Data Analysis module provides tools for performing numerical and array-based analyses in Nelson.

 It supports cumulative operations, sorting, aggregation, convolution, and identification of unique or missing values.

 This module supports processing, summarization, and exploration of datasets for computational and analytical tasks.

== Functions

- #nlink(<data_analysis:accumarray>)[accumarray]: Construct array by accumulation.
- #nlink(<data_analysis:allbetween>)[allbetween]: Determine whether all array elements are between lower and upper bounds.
- #nlink(<data_analysis:bounds>)[bounds]: Smallest and largest array elements.
- #nlink(<data_analysis:conv>)[conv]: Convolution and polynomial multiplication.
- #nlink(<data_analysis:conv2>)[conv2]: 2-D convolution.
- #nlink(<data_analysis:cummax>)[cummax]: Cumulative maximum of array elements.
- #nlink(<data_analysis:cummin>)[cummin]: Cumulative minimum of array elements.
- #nlink(<data_analysis:cumprod>)[cumprod]: Cumulative product of array elements.
- #nlink(<data_analysis:cumsum>)[cumsum]: Cumulative sum of array elements.
- #nlink(<data_analysis:detrend>)[detrend]: Remove polynomial trend.
- #nlink(<data_analysis:discretize>)[discretize]: Group numeric data into bins.
- #nlink(<data_analysis:fillmissing>)[fillmissing]: Fill missing values.
- #nlink(<data_analysis:groupcounts>)[groupcounts]: Count groups.
- #nlink(<data_analysis:groupsummary>)[groupsummary]: Compute grouped table summaries.
- #nlink(<data_analysis:intersect>)[intersect]: Set intersection of two arrays.
- #nlink(<data_analysis:isbetween>)[isbetween]: Determine array elements between lower and upper bounds.
- #nlink(<data_analysis:islocalmax>)[islocalmax]: Detect local maxima in data.
- #nlink(<data_analysis:islocalmin>)[islocalmin]: Detect local minima in data.
- #nlink(<data_analysis:ismembertol>)[ismembertol]: Members of a set within a tolerance.
- #nlink(<data_analysis:ismissing>)[ismissing]: Check for missing values.
- #nlink(<data_analysis:issorted>)[issorted]: Determine if array is sorted.
- #nlink(<data_analysis:max>)[max]: Maximum elements of an array.
- #nlink(<data_analysis:min>)[min]: Minimum elements of an array.
- #nlink(<data_analysis:movmad>)[movmad]: Moving median absolute deviation.
- #nlink(<data_analysis:movmax>)[movmax]: Moving maximum.
- #nlink(<data_analysis:movmean>)[movmean]: Moving mean.
- #nlink(<data_analysis:movmedian>)[movmedian]: Moving median.
- #nlink(<data_analysis:movmin>)[movmin]: Moving minimum.
- #nlink(<data_analysis:movprod>)[movprod]: Moving product.
- #nlink(<data_analysis:movstd>)[movstd]: Moving standard deviation.
- #nlink(<data_analysis:movsum>)[movsum]: Moving sum.
- #nlink(<data_analysis:movvar>)[movvar]: Moving variance.
- #nlink(<data_analysis:normalize>)[normalize]: Normalize data.
- #nlink(<data_analysis:prod>)[prod]: Product of array elements.
- #nlink(<data_analysis:rmmissing>)[rmmissing]: Remove missing data.
- #nlink(<data_analysis:setdiff>)[setdiff]: Set difference of two arrays.
- #nlink(<data_analysis:setxor>)[setxor]: Set exclusive OR of two arrays.
- #nlink(<data_analysis:smoothdata>)[smoothdata]: Smooth noisy data.
- #nlink(<data_analysis:sort>)[sort]: Sort array elements by quick sort algorithm.
- #nlink(<data_analysis:standardizeMissing>)[standardizeMissing]: Convert indicator values to standard missing values.
- #nlink(<data_analysis:subspace>)[subspace]: Measure of distance (angle) between two subspaces spanned by columns of matrices.
- #nlink(<data_analysis:sum>)[sum]: Sum of array elements.
- #nlink(<data_analysis:summary>)[summary]: Summarize table variables or categorical values.
- #nlink(<data_analysis:union>)[union]: Set union of two arrays.
- #nlink(<data_analysis:unique>)[unique]: Unique values.
- #nlink(<data_analysis:uniquetol>)[uniquetol]: Unique values within a tolerance.


#nested[
#pagebreak(weak: true)
#include "accumarray.typ"
#pagebreak(weak: true)
#include "allbetween.typ"
#pagebreak(weak: true)
#include "bounds.typ"
#pagebreak(weak: true)
#include "conv.typ"
#pagebreak(weak: true)
#include "conv2.typ"
#pagebreak(weak: true)
#include "cummax.typ"
#pagebreak(weak: true)
#include "cummin.typ"
#pagebreak(weak: true)
#include "cumprod.typ"
#pagebreak(weak: true)
#include "cumsum.typ"
#pagebreak(weak: true)
#include "detrend.typ"
#pagebreak(weak: true)
#include "discretize.typ"
#pagebreak(weak: true)
#include "fillmissing.typ"
#pagebreak(weak: true)
#include "groupcounts.typ"
#pagebreak(weak: true)
#include "groupsummary.typ"
#pagebreak(weak: true)
#include "intersect.typ"
#pagebreak(weak: true)
#include "isbetween.typ"
#pagebreak(weak: true)
#include "islocalmax.typ"
#pagebreak(weak: true)
#include "islocalmin.typ"
#pagebreak(weak: true)
#include "ismembertol.typ"
#pagebreak(weak: true)
#include "ismissing.typ"
#pagebreak(weak: true)
#include "issorted.typ"
#pagebreak(weak: true)
#include "max.typ"
#pagebreak(weak: true)
#include "min.typ"
#pagebreak(weak: true)
#include "movmad.typ"
#pagebreak(weak: true)
#include "movmax.typ"
#pagebreak(weak: true)
#include "movmean.typ"
#pagebreak(weak: true)
#include "movmedian.typ"
#pagebreak(weak: true)
#include "movmin.typ"
#pagebreak(weak: true)
#include "movprod.typ"
#pagebreak(weak: true)
#include "movstd.typ"
#pagebreak(weak: true)
#include "movsum.typ"
#pagebreak(weak: true)
#include "movvar.typ"
#pagebreak(weak: true)
#include "normalize.typ"
#pagebreak(weak: true)
#include "prod.typ"
#pagebreak(weak: true)
#include "rmmissing.typ"
#pagebreak(weak: true)
#include "setdiff.typ"
#pagebreak(weak: true)
#include "setxor.typ"
#pagebreak(weak: true)
#include "smoothdata.typ"
#pagebreak(weak: true)
#include "sort.typ"
#pagebreak(weak: true)
#include "standardizeMissing.typ"
#pagebreak(weak: true)
#include "subspace.typ"
#pagebreak(weak: true)
#include "sum.typ"
#pagebreak(weak: true)
#include "summary.typ"
#pagebreak(weak: true)
#include "union.typ"
#pagebreak(weak: true)
#include "unique.typ"
#pagebreak(weak: true)
#include "uniquetol.typ"
]
