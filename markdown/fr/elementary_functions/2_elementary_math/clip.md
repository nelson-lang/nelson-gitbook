# clip

Limiter des valeurs a un intervalle.

## 📝 Syntaxe

- Y = clip(X, lowerBound, upperBound)

## 📥 Argument d'entrée

- X - un tableau numerique ou logique.
- lowerBound - un scalaire numerique : borne inferieure de l'intervalle.
- upperBound - un scalaire numerique : borne superieure de l'intervalle.

## 📤 Argument de sortie

- Y - le tableau limite, de meme taille que X.

## 📄 Description

<b>clip</b> limite les valeurs de <b>X</b> a l'intervalle <b>[lowerBound, upperBound]</b>.

Les valeurs inferieures a <b>lowerBound</b> sont fixees a <b>lowerBound</b> et les valeurs superieures a <b>upperBound</b> sont fixees a <b>upperBound</b>.

Les valeurs <b>NaN</b> d'une entree en virgule flottante sont preservees.

## 💡 Exemple

```matlab
Y = clip([-2 0 5 10], 0, 8)
```

## 🔗 Voir aussi

[min](../../elementary_functions/min.md), [max](../../elementary_functions/max.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 1.13.0  | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
