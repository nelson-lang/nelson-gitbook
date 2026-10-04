# isnat

Teste les elements datetime not-a-time.

## 📝 Syntaxe

- tf = isnat(t)

## 📥 Argument d'entrée

- inputs - Un tableau datetime.

## 📤 Argument de sortie

- output - Un tableau logique avec true lorsque les dates serie datetime sont NaN.

## 📄 Description

Teste les elements datetime not-a-time.

isnat rejette les entrees non datetime. C est le test de valeur manquante propre a datetime et il conserve la forme des donnees datetime.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
t = [datetime(2024,1,1), NaT]
isnat(t)

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
