# dlsym_delete

Supprime l'objet dlsym

## 📝 Syntaxe

- dlsym_delete(h)
- delete(h)

## 📥 Argument d'entrée

- h - un handle : un objet dlsym.

## 📄 Description

<b>delete(h)</b> libère l'objet dlsym.

N'oubliez pas de nettoyer la variable h ensuite.

## 💡 Exemple

```matlab
dlsym_used(),delete(dlsym_used())
```

## 🔗 Voir aussi

[dlsym](../dynamic_link/dlsym.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
