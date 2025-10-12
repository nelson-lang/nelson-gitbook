# whosnh5

Liste les variables d'un fichier .nh5 valide avec tailles et types.

## Syntaxe

- whosnh5(filename)
- st = whosnh5(filename)
- whosnh5(filename, var1, ..., varN)
- st = whosnh5(filename, var1, ..., varN)

## Argument d'entrée

- filename - une chaîne : nom de fichier .nh5.
- var1, ..., varN - chaînes : noms des variables à inspecter.

## Argument de sortie

- st - contient des informations sur les variables dans le tableau de structures st.

## Description

<p>whosnh5 liste les variables d'un fichier .nh5 valide.</p>

## Exemple

```matlab
A = ones(3, 4);
B = 'Nelson';
C = sparse(true);
D = sparse(3i);
savenh5([tempdir(), 'example_whosnh5.nh5'], 'A', 'B', 'C', 'D')
whosnh5([tempdir(), 'example_whosnh5.nh5'])
st = whosnh5([tempdir(), 'example_whosnh5.nh5'])
```

## Voir aussi

[whosmat](../matio/whosmat.md), [whos](../memory_manager/whos.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
