# convhulln

Enveloppe convexe en N dimensions

## 📝 Syntaxe

- K = convhulln(P)
- [K, V] = convhulln(P)
- K = convhulln(P, options)

## 📄 Description

<b>convhulln</b> calcule les facettes de l'enveloppe convexe de la matrice de points <b>P</b>.

Les lignes de <b>K</b> contiennent des indices de points a partir de un.

## 💡 Exemple

Enveloppe convexe d'un carre.

```matlab
P = [0 0; 1 0; 1 1; 0 1];
[K, A] = convhulln(P)
```

## 🔗 Voir aussi

[convhull](../geometry/convhull.md), [delaunayn](../geometry/delaunayn.md).

## 🕔 Historique

| Version | 📄 Description    |
| ------- | ----------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
