# input

Afficher une invite et attendre l'entrée utilisateur.

## 📝 Syntaxe

- r = input(prompt\_str)
- r = input(prompt\_str, 's')

## 📥 Argument d'entrée

- prompt\_str - une chaîne : invite temporaire affichée

## 📤 Argument de sortie

- r - une chaîne

## 📄 Description


Afficher une invite et attendre l'entrée utilisateur. input retourne une chaîne qui est l'expression saisie au clavier.

## 💡 Exemple



```matlab
res = input('Please input a value ', 's');
r = execstr(['A = ', res, ';'], 'errcatch');
if (r)
  disp('It was a value.');
  disp(A)
else
 disp('It was NOT a value.');
end
```


## 🔗 Voir aussi

[execstr](../core/execstr.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
