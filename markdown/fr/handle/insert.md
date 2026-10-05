# insert

Inserer des entrees dans un objet prenant en charge l'insertion par cle.

## 📝 Syntaxe

- insert(obj, ...)
- obj = insert(obj, ...)

## 📥 Argument d'entrée

- obj - objet qui implemente l'insertion par cle.
- key - cle ou tableau de cles a inserer.
- value - valeur ou tableau de valeurs associees aux cles.

## 📤 Argument de sortie

- obj - objet mis a jour lorsque l'implementation concrete en renvoie un.

## 📄 Description


insert delegue l'insertion au type de l'objet passe en premier argument. 

Si le premier argument n'implemente pas l'insertion, Nelson signale que la fonction n'est pas implementee pour ce type.

## Fonction(s) utilisée(s)


    dictionary
  

## 💡 Exemple

Inserer une valeur dans un dictionnaire via la fonction generique.

```matlab
d = dictionary(["one" "two"], [1 2]);
d = insert(d, "three", 3)
```


## 🔗 Voir aussi

[dictionary](../dictionary/dictionary.md), [lookup](../handle/lookup.md), [isKey](../handle/isKey.md), [remove](../handle/remove.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
