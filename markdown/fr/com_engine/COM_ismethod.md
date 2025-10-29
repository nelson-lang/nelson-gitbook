# COM_ismethod

Détermine si l'entrée est une méthode existante d'un objet COM.

## 📝 Syntaxe

- r = COM_ismethod(h, methodname)
- r = ismethod(h, methodname)

## 📥 Argument d'entrée

- h - un objet COM.
- methodname - une chaîne : nom de méthode testé comme méthode valide pour l'objet COM.

## 📤 Argument de sortie

- r - un booléen.

## 📄 Description

<b>r = ismethod(h, methodname)</b> retourne vrai si le nom spécifié est une méthode de l'objet COM h. Sinon, il retourne faux.

## 💡 Exemple

```matlab
e = actxserver('Excel.Application');
ismethod(e, 'Quit')
delete(e)
clear e
```

## 🔗 Voir aussi

[COM_invoke](../com_engine/COM_invoke.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
