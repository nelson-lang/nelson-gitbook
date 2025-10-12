# whonh5

Liste les variables d'un fichier .nh5 valide.

## Syntaxe

- whonh5(filename)
- ce = whonh5(filename)
- whonh5(filename, var1, ..., varN)
- ce = whonh5(filename, var1, ..., varN)

## Argument d'entrée

- filename - une chaîne : nom de fichier .nh5.
- var1, ..., varN - chaînes : noms des variables à inspecter.

## Argument de sortie

- ce - un tableau (cell) de chaînes contenant les noms des variables.

## Description

<p>whonh5 liste les variables d'un fichier .nh5 valide.</p>

## Exemple

```matlab
A = ones(3, 4);
B = 'Nelson';
C = sparse(true);
D = sparse(3i);
savenh5([tempdir(), 'example_whonh5.nh5'], 'A', 'B', 'C', 'D')
whonh5([tempdir(), 'example_whonh5.nh5'])
ce = whonh5([tempdir(), 'example_whonh5.nh5'])
```

## Voir aussi

[whomat](../matio/whomat.md), [who](../memory_manager/who.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
