# findobj

Find graphics objects with specific properties.

## 📝 Syntax

- h = findobj()
- h = findobj(prop, value)
- h = findobj(objhandles, prop, value)
- h = findobj(objhandles, 'flat', ...)
- h = findobj(objhandles, '-depth', d, ...)
- h = findobj(..., '-property', prop)
- h = findobj(..., '-regexp', prop, expr)

## 📥 Input argument

- objhandles - graphics object or array of graphics objects to search from.
- prop - property name as a character vector or scalar string.
- value - property value to match.
- d - nonnegative integer search depth, or Inf.
- expr - regular expression used to match a character property value.

## 📤 Output argument

- h - column array of matching graphics objects.

## 📄 Description

<b>findobj</b> searches the graphics object hierarchy from the root object or from the supplied graphics objects. Objects whose <b>HandleVisibility</b> property is <b>
'off'
</b>, and their descendants, are not returned.

Property predicates can be combined with <b>
'-and'
</b>, <b>
'-or'
</b>, <b>
'-xor'
</b>, and <b>
'-not'
</b>. Use cell arrays to group expressions.

## 💡 Examples

```matlab
close all
plot(rand(5))
h = findobj('Type', 'line')
```

```matlab
close all
plot(1:10, 'Tag', 'linear')
h = findobj('-regexp', 'Tag', 'lin')
```

```matlab
close all
plot(1:10, 'Tag', 'linear')
hold on
plot((1:10).^2, 'Tag', 'quadratic')
h = findobj('Type', 'line', '-and', '-not', {'Tag', 'linear'})
```

## 🔗 See also

[groot](../graphics/groot.md), [gcf](../graphics/gcf.md), [gca](../graphics/gca.md), [isgraphics](../graphics/isgraphics.md), [get](../handle/get.md), [set](../handle/set.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.17.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
