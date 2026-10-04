# nelson.indexing.IndexingOperationType

Type d'une opération d'indexation.

## 📝 Syntaxe

- t = nelson.indexing.IndexingOperationType.Paren

## 📥 Argument d'entrée

- t - valeur d'enumeration de type d'operation d'indexation.

## 📤 Argument de sortie

- t - valeur d'enumeration de type d'operation d'indexation.

## 📄 Description

<b>nelson.indexing.IndexingOperationType</b> est une énumération nommant le type d'une opération d'indexation. Membres : <b>Paren</b>, <b>Brace</b>, <b>Dot</b>, <b>ParenDelete</b>, <b>BraceDelete</b>. C'est la propriété <b>Type</b> d'un <b>nelson.indexing.IndexingOperation</b>.

## 💡 Exemple

Un membre d'énumération.

```matlab
t = nelson.indexing.IndexingOperationType.Brace;
char(t)
```

## 🔗 Voir aussi

[nelson.indexing.IndexingOperation](../types/nelson.indexing.IndexingOperation.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
