# COM_set

Définir la propriété d'un objet ou interface à la valeur spécifiée.

## 📝 Syntaxe

- set(h, propertyname, value)
- COM_set(h, propertyname, value)
- h.propertyname = value

## 📥 Argument d'entrée

- h - un objet COM.
- propertyname - une chaîne : le nom de la propriété de l'objet COM.
- value - une chaîne, un booléen, un double ...

## 📄 Description

La fonction définit la propriété spécifiée dans la chaîne propertyname à la valeur donnée.

## 💡 Exemple

```matlab
pWord = actxserver('Word.Application')
pWord.Visible = true
invoke(pWord, 'Quit')
delete(pWord)
clear pWord
```

## 🔗 Voir aussi

[COM_get](../com_engine/COM_get.md), [COM_invoke](../com_engine/COM_invoke.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
