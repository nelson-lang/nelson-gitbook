# findpeaks

Locate local maxima (peaks) in a 1-D signal.

## 📝 Syntax

- [pks, locs, widths, prominences] = findpeaks(Y)
- [pks, locs, widths, prominences] = findpeaks(Y, Fs, ...)
- [pks, locs, widths, prominences] = findpeaks(Y, X, ...)

## 📥 Input argument

- Y - vector: input signal (row or column)
- Fs - scalar: sampling frequency (optional). If provided, peak locations are returned in time units.
- X - vector: x-values corresponding to Y (optional). Must have same length as Y.
- Name/Value pairs - name/value options:

- <b>MinPeakHeight</b>: numeric scalar, default -Inf
- <b>MinPeakProminence</b>: numeric scalar >= 0, default 0
- <b>Threshold</b>: numeric scalar >= 0 (min vertical distance from neighbor baseline), default 0
- <b>MinPeakWidth</b>: numeric scalar >= 0, default 0
- <b>MaxPeakWidth</b>: numeric scalar >= 0, default Inf
- <b>MinPeakDistance</b>: numeric scalar >= 0 (in same units as X), default 0
- <b>WidthReference</b>: 'halfprom' (default) or 'halfheight'
- <b>SortStr</b>: 'none' (default), 'ascend' or 'descend'
- <b>NPeaks</b>: positive integer, maximum number of peaks to return (default Inf)
- <b>Annotate</b>: 'peaks' (default) or 'extents' (controls plotting annotation)

## 📤 Output argument

- pks - peak amplitudes
- locs - peak locations (x-values or indices)
- widths - peak widths measured at the specified WidthReference
- prominences - prominence of each peak

## 📄 Description

<b>findpeaks</b> locates local maxima (peaks) in a one-dimensional signal Y.

The algorithm detects candidate peaks, filters them by height and threshold, computes prominence and widths, enforces minimum separation, and returns the requested outputs.

When no outputs are requested, the function plots the signal and marks detected peaks.

## 💡 Examples

Find peaks in a simple signal

```matlab

t = 0:0.01:2*pi;
y = sin(5*t) + 0.2*randn(size(t));
findpeaks(y, t, 'MinPeakProminence', 0.3);

```

Return widths and prominences

```matlab

[pks, locs, widths, proms] = findpeaks(y, 'MinPeakHeight', 0);

```

## 🔗 See also

[max](../data_analysis/max.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.15.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
