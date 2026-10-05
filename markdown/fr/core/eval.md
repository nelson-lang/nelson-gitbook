# eval

Évalue une expression.

## 📝 Syntaxe

- eval(str)
- eval(str, catch\_str)
- [r1, ... rn] = eval(str)
- [r1, ... rn] = eval(str, catch\_str)

## 📥 Argument d'entrée

- str - chaîne : expression à évaluer

## 📤 Argument de sortie

- [r1, ... rn] - résultats : variables de sortie

## 📄 Description


Évalue une expression ou une commande au sein de l'environnement Nelson et retourne le résultat de l'évaluation.

## 💡 Exemples



```matlab
eval('B=4')
```
Cet exemple échouera et renverra un message d'erreur.

```matlab
C = eval('B=4')
```


```matlab
D = eval(4)
```
Cet exemple n'échouera pas et renverra faux.

```matlab
eval('error(''blabla'')', 'l = lasterror(); disp([''lasterror message: '', l.message])')
```


## 🔗 Voir aussi

[execstr](../core/execstr.md), [evalc](../core/evalc.md), [evalin](../core/evalin.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
