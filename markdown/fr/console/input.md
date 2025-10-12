# input

Afficher une invite et attendre l'entrée utilisateur.

## Syntaxe

- r = input(prompt_str)
- r = input(prompt_str, 's')

## Argument d'entrée

- prompt_str - une chaîne : invite temporaire affichée

## Argument de sortie

- r - une chaîne

## Description

<p>Afficher une invite et attendre l'entrée utilisateur. input retourne une chaîne qui est l'expression saisie au clavier.</p>

## Exemple

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

## Voir aussi

[execstr](../core/execstr.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
