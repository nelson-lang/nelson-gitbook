# memoize

Ajoute la mémoïsation à une fonction

## 📝 Syntaxe

- mf = memoize(fh)

## 📥 Argument d'entrée

- fh - handle de fonction à mémoïser.

## 📤 Argument de sortie

- mf - objet MemoizedFunction qui met en cache les résultats de fh.

## 📄 Description


<b>memoize</b> retourne un objet MemoizedFunction qui met en cache les sorties du handle de fonction fh. Appeler l'objet retourné avec un jeu d'entrées évalue fh une seule fois pour ces entrées et retourne le résultat en cache lors des appels suivants avec les mêmes entrées. Mettez la propriété Enabled à false pour contourner le cache, et utilisez clearCache pour le vider.

## 💡 Exemple



```matlab
mf = memoize(@(x) x .^ 2);
y = mf(4)
```


## 🔗 Voir aussi

[str2func](../function_handle/str2func.md), [func2str](../function_handle/func2str.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
