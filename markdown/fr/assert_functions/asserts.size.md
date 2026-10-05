# asserts.size

Verifie qu'une valeur a les dimensions attendues.

## 📝 Syntaxe

- asserts.size(value, expectedSize)
- [res, msg] = asserts.size(value, expectedSize)

## 📥 Argument d'entrée

- value - Valeur a tester.
- expectedSize - Vecteur numerique de longueurs de dimensions entieres non negatives.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - message d'echec de l'assertion, vide en cas de succes.

## 📄 Description


L'assertion reussit lorsque size(value) correspond exactement a expectedSize. 

Le vecteur de taille attendu doit avoir le meme nombre de dimensions que value.

## 💡 Exemples

Expected size

```matlab
asserts.size(ones(2, 3), [2 3]);
```
Capture a size failure

```matlab
[res, msg] = asserts.size(ones(2, 3), [3 2]);
```


## 🔗 Voir aussi

[asserts.rows](../assert_functions/asserts.rows.md), [asserts.columns](../assert_functions/asserts.columns.md), [asserts.ndims](../assert_functions/asserts.ndims.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
