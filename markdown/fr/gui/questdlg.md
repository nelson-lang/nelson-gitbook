# questdlg

Crée une boîte de dialogue de question.

## 📝 Syntaxe

- buttonname = questdlg(question)
- buttonname = questdlg(question, title)
- buttonname = questdlg(question, title, default)
- buttonname = questdlg(question, title, text1, default)
- buttonname = questdlg(question, title, text1, text2, default)
- buttonname = questdlg(question, title, text1, text2, text3, default)

## 📥 Argument d'entrée

- question - a string or a cell of string: the question.
- title - a string: the title of the dialog box.
- text1 - a string: text of button 1.
- text2 - a string: text of button 2.
- text3 - a string: text of button 3.
- default - a string: text of selected button by default.

## 📤 Argument de sortie

- buttonname - a string: text of the clicked button or ''.

## 📄 Description

<b>questdlg</b> affiche une question dans une boîte de dialogue et renvoie le texte du bouton activé.

La boîte de dialogue possède trois boutons par défaut : 'Yes', 'No', 'Cancel', avec 'Yes' comme valeur par défaut.

## 💡 Exemples

```matlab
res = questdlg('What is the answer to the ultimate question of life, the universe and everything ?', 'A question for geeks', '41', '42', '43', '42')
```

```matlab
res = questdlg ('Easy ?', 'Jeff', 'No', 'Okay', 'Okay')
```

```matlab
res = questdlg('How are you ?', 'Health', 'Fine', 'Good', 'sick', 'Fine')
```

```matlab
res = questdlg({'Is', 'this', 'a', 'multi line', 'test ?'}, 'Test :)')
```

## 🔗 Voir aussi

[warndlg](../gui/warndlg.md), [errordlg](../gui/errordlg.md), [helpdlg](../gui/helpdlg.md), [msgbox](../gui/msgbox.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
