# axes2ecc

Eccentricity of an ellipse from its semi-axes.

## 📝 Syntax

- eccentricity = axes2ecc(semimajor, semiminor)
- eccentricity = axes2ecc(axesVector)

## 📥 Input argument

- semimajor - the semimajor axis length.
- semiminor - the semiminor axis length.
- axesVector - a single input: a two-element vector [semimajor, semiminor] or a two-column matrix (one ellipse per row).

## 📤 Output argument

- eccentricity - the eccentricity of the ellipse.

## 📄 Description


<b>axes2ecc</b> returns the eccentricity of an ellipse from its semimajor and semiminor axes, as <b>sqrt(1 - (semiminor / semimajor)^2)</b>. A circle (equal axes) has a zero eccentricity. The computation is vectorised over the inputs.

## 💡 Example



```matlab
e = axes2ecc(10, 6)
```


## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
