# cast

Convertit une variable vers un autre type de données

## 📝 Syntaxe

- R = cast(V, type_destination)
- R = cast(V, 'like', W)

## 📥 Argument d'entrée

- V - une variable
- type_destination - une chaîne : nom du type de destination.
- W - une variable

## 📤 Argument de sortie

- R - une variable avec le nouveau type de données.

## 📄 Description

<b>cast</b> convertit une variable vers un autre type de données.

<b>R = cast(V, 'like', W)</b> convertit la variable V pour qu'elle ait la même sparsité et le même type de données que W.

## 💡 Exemple

```matlab
r = cast([3.6 1.2 -2.4], 'like', int64(3))
r = cast([3.6 1.2 -2.4], 'int64')
```

## 🔗 Voir aussi

[class](../types/class.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
