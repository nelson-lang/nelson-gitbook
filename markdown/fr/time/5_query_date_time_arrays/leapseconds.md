# leapseconds

Renvoie les donnees de secondes intercalaires disponibles pour le module time.

## 📝 Syntaxe

- L = leapseconds()

## 📥 Argument d'entrée

- inputs - Aucun argument d entree.

## 📤 Argument de sortie

- output - Un tableau contenant les donnees de secondes intercalaires; actuellement vide lorsqu aucune table n est embarquee.

## 📄 Description

Renvoie les donnees de secondes intercalaires disponibles pour le module time.

La fonction est presente pour completer l API date et heure. Le sous-ensemble timezone embarque actuel ne contient pas d enregistrements de secondes intercalaires.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
L = leapseconds()
size(L)

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
