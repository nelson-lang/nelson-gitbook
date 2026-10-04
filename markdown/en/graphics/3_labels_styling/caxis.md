# caxis

Query or set axes color limits.

## 📝 Syntax

- limits = caxis()
- caxis([cmin cmax])
- mode = caxis('mode')
- caxis('auto')
- caxis('manual')

## 📥 Input argument

- limits - Two-element increasing numeric vector.

## 📤 Output argument

- limits - Current color limits.

## 📄 Description

<b>caxis</b> is a compatibility interface for axes color limits.

## 💡 Example

```matlab
imagesc([1 2; 3 4]); caxis([0 5]); limits = caxis()
```

## 🔗 See also

[clim](../../graphics/clim.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
