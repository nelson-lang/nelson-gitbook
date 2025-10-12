# evalc

Évalue une expression et capture la sortie.

## Syntaxe

- t = evalc(str)
- t = evalc(str)
- [t, r1, ... rn] = evalc(str)

## Argument d'entrée

- str - chaîne : expression à évaluer

## Argument de sortie

- T - texte de sortie capturé dans la variable t
- [r1, ... rn] - résultats : variables de sortie

## Description

<p>Évalue une expression et renvoie la sortie standard générée par l'exécution sous forme de chaîne de caractères.</p>

## Exemples

```matlab
evalc('B=4')
```

```matlab

      >t = evalc('dir')
```

## Voir aussi

[eval](../core/eval.md), [evalin](../core/evalin.md), [execstr](../core/execstr.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
