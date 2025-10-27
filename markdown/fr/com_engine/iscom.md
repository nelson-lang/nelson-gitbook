# iscom

Détermine si l'entrée est un objet COM ou ActiveX.

## 📝 Syntaxe

- r = iscom(h)

## 📥 Argument d'entrée

- h - une variable nelson.

## 📤 Argument de sortie

- r - un booléen : vrai ou faux.

## 📄 Description

<b>r = iscom(h)</b> retourne vrai si le handle h est un objet COM ou Microsoft® ActiveX®. Sinon, il retourne faux.

## 💡 Exemple

```matlab
pWord = actxserver('Word.Application')
iscom(pWord)
delete pWord
iscom(pWord)
clear pWord
```

## 🔗 Voir aussi

[actxserver](../com_engine/actxserver.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
