# py

Proxy d'espace de noms Python.

## 📝 Syntaxe

- p = py()
- p.module.function(...)

## 📤 Argument de sortie

- p - objet proxy d'espace de noms Python.
- pyValue - objet Python renvoye par la fonction appelee.

## 📄 Description

py renvoie un objet proxy utilise pour acceder aux fonctions integrees et aux modules Python depuis Nelson.

Utilisez l'acces par attribut sur l'objet renvoye pour importer des modules ou appeler des fonctions Python.

## Fonction(s) utilisée(s)

    pyenv

## 💡 Exemple

Appeler une fonction integree Python via le proxy d'espace de noms.

```matlab
p = py();
pyValue = p.int(42)
```

## 🔗 Voir aussi

[pyenv](../python_engine/pyenv.md), [pyrun](../python_engine/pyrun.md), [pyrunfile](../python_engine/pyrunfile.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
