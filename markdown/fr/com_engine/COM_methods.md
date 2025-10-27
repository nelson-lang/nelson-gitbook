# COM_methods

Retourne les noms des méthodes d'un objet COM.

## 📝 Syntaxe

- l = COM_methods(h)
- l = methods(h)

## 📥 Argument d'entrée

- h - un objet COM.

## 📤 Argument de sortie

- l - une cellule de chaînes.

## 📄 Description

<b>methods</b> retourne une cellule de chaînes avec les noms des méthodes.

## 💡 Exemple

```matlab
e = actxserver('Excel.Application');
methods(e)
delete(e)
clear e
```

## 🔗 Voir aussi

[COM_set](../com_engine/COM_set.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
