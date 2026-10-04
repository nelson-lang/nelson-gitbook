# realpow

Puissance element par element avec resultat reel.

## 📝 Syntaxe

- Z = realpow(X, Y)

## 📥 Argument d'entrée

- X - Valeurs reelles de base.
- Y - Valeurs reelles d'exposant.

## 📤 Argument de sortie

- Z - resultat de X .^ Y lorsque toutes les valeurs sont reelles.

## 📄 Description

<b>realpow</b> calcule les puissances element par element et retourne une erreur si une entree ou le resultat est complexe.

<b>X</b> et <b>Y</b> doivent avoir des tailles compatibles pour la puissance element par element.

## 💡 Exemple

```matlab
X = -2 * ones(3, 3);
Y = pascal(3);
Z = realpow(X, Y)
```

## 🔗 Voir aussi

[power](../../operators/power.md), [sqrt](../../elementary_functions/sqrt.md), [log](../../elementary_functions/log.md), [nthroot](../../elementary_functions/nthroot.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
