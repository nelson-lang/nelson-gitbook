# remove

Supprimer des entrees d'un objet.

## 📝 Syntaxe

- remove(obj, ...)
- obj = remove(obj, ...)

## 📥 Argument d'entrée

- obj - objet qui implemente la suppression par cle.
- key - cle ou cles a supprimer.

## 📤 Argument de sortie

- obj - objet mis a jour lorsque l'implementation concrete en renvoie un.

## 📄 Description

remove delegue la suppression au type de l'objet passe en premier argument.

Si le premier argument n'implemente pas la suppression, Nelson signale que la fonction n'est pas implementee pour ce type.

## Fonction(s) utilisée(s)

    dictionary

## 💡 Exemple

Supprimer une entree d'un dictionnaire via la fonction generique.

```matlab
d = dictionary(["one" "two"], [1 2]);
d = remove(d, "one")
```

## 🔗 Voir aussi

[dictionary](../dictionary/dictionary.md), [lookup](../handle/lookup.md), [isKey](../handle/isKey.md), [insert](../handle/insert.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
