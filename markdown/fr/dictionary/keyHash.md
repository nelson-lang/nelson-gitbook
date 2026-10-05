# keyHash

Créer un code de hachage pour une clé de dictionnaire.

## 📝 Syntaxe

- H = keyHash(A)

## 📥 Argument d'entrée

- A - tableau

## 📤 Argument de sortie

- H - scalaire : uint64, code de hachage.

## 📄 Description


<b>H = keyHash(A)</b> renvoie un scalaire uint64 représentant le tableau d'entrée, <b>A</b>. 

La fonction keyHash calcule un code de hachage dérivé des caractéristiques de l'entrée. 

Pour les classes personnalisées, keyHash peut nécessiter une surcharge pour garantir une équivalence correcte.

## 💡 Exemple



```matlab
keyHash({'a', 'b', 1})
keyHash({1, 'a', 'b'})
```


## 🔗 Voir aussi

[keyMatch](../dictionary/keyMatch.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.5.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
