# evalin

Évalue une expression dans un espace de travail spécifié.

## 📝 Syntaxe

- evalin(scope, str)
- [r1, ... rn] = evalin(scope, str)

## 📥 Argument d'entrée

- workspace - chaîne : 'base' ou 'caller'
- expr - chaîne : expression à évaluer

## 📤 Argument de sortie

- results - résultats : variables de sortie

## 📄 Description


Évalue une expression dans un espace de travail donné (par exemple, l'espace de travail 'base' ou 'caller').

## 💡 Exemple



```matlab
evalin('base', 'B=4')
```


## 🔗 Voir aussi

[eval](../core/eval.md), [acquirevar](../memory_manager/acquirevar.md), [execstr](../core/execstr.md), [evalc](../core/evalc.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
