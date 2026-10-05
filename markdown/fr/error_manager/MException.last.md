# MException.last

Renvoie ou efface la derniere MException non interceptee.

## 📝 Syntaxe

- exception = MException.last
- MException.last('reset')

## 📤 Argument de sortie

- exception - un objet MException.

## 📄 Description


<b>MException.last</b> renvoie la derniere exception non interceptee enregistree par l'evaluateur. Les exceptions traitees par un bloc catch ne la modifient pas. 

<b>MException.last('reset')</b> efface l'exception enregistree.

## 💡 Exemple



```matlab
MException.last('reset');
exception = MException.last
```


## 🔗 Voir aussi

[MException](../error_manager/MException.md), [lasterror](../error_manager/lasterror.md), [getLastReport](../error_manager/getLastReport.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
