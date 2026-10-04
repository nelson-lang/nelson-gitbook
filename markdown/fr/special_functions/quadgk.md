# quadgk

Evalue numeriquement une integrale par quadrature Gauss-Kronrod.

## 📝 Syntaxe

- q = quadgk(fun, a, b)
- [q, errbnd] = quadgk(fun, a, b)
- [...] = quadgk(fun, a, b, name, value)

## 📥 Argument d'entrée

- fun - Integrande : handle de fonction.
- a, b - Bornes d'integration. Les bornes complexes finies sont integrees sur des segments droits.
- name, value - Options : 'RelTol', 'AbsTol', 'Waypoints' et 'MaxIntervalCount'.

## 📤 Argument de sortie

- q - Integrale calculee.
- errbnd - Borne approximative de l'erreur absolue.

## 📄 Description

<b>quadgk</b> integre une integrande scalaire vectorisee avec une quadrature Gauss-Kronrod adaptive.

<b>Waypoints</b> decoupe l'integrale en sous-intervalles. Des points complexes definissent un contour polygonal.

## 💡 Exemple

```matlab
[q, errbnd] = quadgk(@(x) exp(-x.^2), 0, Inf)
```

## 🔗 Voir aussi

[integral](../special_functions/integral.md), [integral2](../special_functions/integral2.md), [integral3](../special_functions/integral3.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
