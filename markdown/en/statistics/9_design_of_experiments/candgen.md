# candgen

Generate a candidate set for designs.

## 📝 Syntax

- dC = candgen(nfactors)
- [dC, C] = candgen(nfactors, modelspec)

## 📄 Description

<b>candgen</b> generates a full factorial candidate set from factor bounds and its model matrix.

## Used function(s)

    x2fx
    candexch
    rowexch
    cordexch

## 💡 Examples

Generate a full factorial candidate set and its linear model matrix.

```matlab
F = candgen(2)
[F, C] = candgen(2, 'linear')
```

Use explicit factor bounds.

```matlab
bounds = [0 1 2; -1 1 1];
[F, C] = candgen(2, 'linear', 'Bounds', bounds);
size(F)
size(C)
```
