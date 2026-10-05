# types

Types des clés et valeurs du dictionnaire.

## 📝 Syntaxe

- [keyType, valueType] = types(d)
- keyType = types(d)

## 📥 Argument d'entrée

- d - scalaire : objet dictionnaire.

## 📤 Argument de sortie

- keyType - scalaire string : type de données des clés du dictionnaire.
- valueType - scalaire string : type de données des valeurs du dictionnaire.

## 📄 Description


<b>keyType = types(d)</b> renvoie le type de données des clés du dictionnaire. 

<b>[keyType, valueType] = types(d)</b> renvoie les types de données des clés et valeurs du dictionnaire spécifié. Si le dictionnaire d n'est pas configuré, types renvoie un scalaire string indiquant <b>missing</b>.

## 💡 Exemple



```matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
[keyType, valueType] = types(d)

```


## 🔗 Voir aussi

[dictionary](../dictionary/dictionary.md), [keys](../dictionary/keys.md), [values](../dictionary/values.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.5.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
