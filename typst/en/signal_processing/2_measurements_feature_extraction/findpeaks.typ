#import "../nelson_help.typ": *

= findpeaks <signal_processing:2_measurements_feature_extraction.findpeaks>

Locate local maxima (peaks) in a 1-D signal.

== Syntax

- #raw("[pks, locs, widths, prominences] = findpeaks(Y)");
- #raw("[pks, locs, widths, prominences] = findpeaks(Y, Fs, ...)");
- #raw("[pks, locs, widths, prominences] = findpeaks(Y, X, ...)");

== Input argument

/ Y: vector: input signal (row or column)
/ Fs: scalar: sampling frequency (optional). If provided, peak locations are returned in time units.
/ X: vector: x-values corresponding to Y (optional). Must have same length as Y.
/ Name\/Value pairs: name\/value options:

- #strong[MinPeakHeight];: numeric scalar, default -Inf
- #strong[MinPeakProminence];: numeric scalar \>\= 0, default 0
- #strong[Threshold];: numeric scalar \>\= 0 (min vertical distance from neighbor baseline), default 0
- #strong[MinPeakWidth];: numeric scalar \>\= 0, default 0
- #strong[MaxPeakWidth];: numeric scalar \>\= 0, default Inf
- #strong[MinPeakDistance];: numeric scalar \>\= 0 (in same units as X), default 0
- #strong[WidthReference];: 'halfprom' (default) or 'halfheight'
- #strong[SortStr];: 'none' (default), 'ascend' or 'descend'
- #strong[NPeaks];: positive integer, maximum number of peaks to return (default Inf)
- #strong[Annotate];: 'peaks' (default) or 'extents' (controls plotting annotation)

== Output argument

/ pks: peak amplitudes
/ locs: peak locations (x-values or indices)
/ widths: peak widths measured at the specified WidthReference
/ prominences: prominence of each peak

== Description

#strong[findpeaks]; locates local maxima (peaks) in a one-dimensional signal Y.

 The algorithm detects candidate peaks, filters them by height and threshold, computes prominence and widths, enforces minimum separation, and returns the requested outputs.

 When no outputs are requested, the function plots the signal and marks detected peaks.


== Examples

Find peaks in a simple signal

``````matlab

t = 0:0.01:2*pi;
y = sin(5*t) + 0.2*randn(size(t));
[pks, locs] = findpeaks(y, t, 'MinPeakProminence', 0.3);

``````

Return widths and prominences

``````matlab

[pks, locs, widths, proms] = findpeaks(y, 'MinPeakHeight', 0);

``````


== See also

#nlink(<data_analysis:max>)[max];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [initial version],
  [2.0.0], [CLI-runnable documentation examples],
)

// Author: Allan CORNET
