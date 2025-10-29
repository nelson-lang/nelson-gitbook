# close

Close one or more figures

## 📝 Syntax

- close()
- close('all')
- close(name)
- close(ID)
- close(GO)
- tf = close(...)

## 📥 Input argument

- ID - a scalar integer value: figure ID.
- GO - a scalar graphics object on an existing figure.
- GO - a scalar graphics object on an existing figure.

## 📤 Output argument

- tf - a scalar logical: true if figure was closed.

## 📄 Description

<b>close</b> closes the current figure.

<b>close(ID)</b> closes the figure specified by figure ID.

<b>close(GO)</b> closes the figure specified by figure graphics object.

<b>close('all')</b> closes all figures.

## 💡 Example

```matlab
f = figure(1)
close();
h = figure(3)
close(h)
f1 = figure()
f2 = figure()
close('all')
```

## 🔗 See also

[gcf](../graphics/gcf.md), [figure](../graphics/figure.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
