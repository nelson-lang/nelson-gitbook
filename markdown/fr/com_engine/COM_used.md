# COM_used

Retourne la liste des handles COM actuellement utilisés.

## 📝 Syntaxe

- r = COM_used()

## 📤 Argument de sortie

- h - un vecteur de handles COM.

## 📄 Description

Retourne la liste des handles COM actuellement utilisés.

## 💡 Exemple

```matlab
delete(COM_used())
e = actxserver('Excel.Application');
used = COM_used()
delete(used)
used = COM_used()
```

## 🔗 Voir aussi

[COM_set (set)](../com_engine/COM_set.md), [COM_get (get)](../com_engine/COM_get.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
