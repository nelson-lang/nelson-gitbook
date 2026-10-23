# bodeoptions

Options for a Bode plot.

## 📝 Syntax

- opt = bodeoptions()

## 📤 Output argument

- opt - a structure holding the Bode plot options.

## 📄 Description


<b>opt = bodeoptions()</b> returns a structure holding the Bode plot options with their default values. 

The returned structure can be passed to <b>bodeplot</b> to customize the rendering. The honored fields are: 

<b>PhaseUnits</b>: <b>'deg'</b> (default) or <b>'rad'</b>. 

<b>Grid</b>: <b>'off'</b> (default) or <b>'on'</b>. 

Additional fields (<b>FreqUnits</b>, <b>MagUnits</b>, <b>Title</b>, <b>XLabel</b>, <b>YLabel</b>) are provided with default values so that assignment does not error.

## 💡 Example



```matlab
opt = bodeoptions();
opt.PhaseUnits = 'rad';
opt.Grid = 'on'

```


## 🔗 See also

[bodeplot](../../control_system/3_linear_analysis/bodeplot.md), [bode](../../control_system/3_linear_analysis/bode.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
