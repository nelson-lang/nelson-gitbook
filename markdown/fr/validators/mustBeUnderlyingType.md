# mustBeUnderlyingType

Valide que la valeur a un type sous-jacent spécifié

## 📝 Syntaxe

- mustBeUnderlyingType(A, typename)

## 📥 Argument d'entrée

- A - valeur à valider.
- typename - chaîne scalaire nommant le type sous-jacent requis.

## 📤 Argument de sortie

- none - cette fonction de validation ne retourne aucune valeur.

## 📄 Description


<b>mustBeUnderlyingType</b> lève une erreur si le type sous-jacent de A (tel que retourné par underlyingType) n'est pas égal à typename. Cette fonction ne retourne pas de valeur.

## 💡 Exemple



```matlab
mustBeUnderlyingType(int32(5), 'int32')
```


## 🔗 Voir aussi

[mustBeA](../validators/mustBeA.md), [underlyingType](../types/underlyingType.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
