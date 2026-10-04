# today

Renvoie le numero de date serie du jour courant.

## 📝 Syntaxe

- t = today()

## 📥 Argument d'entrée

- inputs - Aucun argument d entree.

## 📤 Argument de sortie

- output - Un numero de date serie scalaire sans fraction horaire.

## 📄 Description

Renvoie le numero de date serie du jour courant.

today est equivalent a floor(now()) au moment de l appel.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
t = today()
t == floor(t)

```

## 🔗 Voir aussi

[datetime](../../time/datetime.md), [duration](../../time/duration.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
