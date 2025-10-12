# entries

Paires clé-valeur du dictionnaire.

## Syntaxe

- E = entries(d)
- E = entries(d, format)

## Argument d'entrée

- d - scalaire : objet dictionnaire.
- format - format : scalaire string ou vecteur de caractères : 'cell', 'struct', 'table' (non encore implémenté).

## Argument de sortie

- E - table, struct ou cell.

## Description

<p>
            E = entries(d) récupère une table contenant les paires clé-valeur du dictionnaire donné, d.</p>

<p>
                E = entries(d) actuellement non implémenté.</p>

<p>
                    E = entries(d, format) spécifie le format de sortie comme une table ou une structure. Par exemple, entries(d, "struct") renvoie une structure contenant les paires clé-valeur de d. Cette option est utile pour les types de données non compatibles avec les tables.</p>

## Exemple

```matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
E = entries(d, 'struct')
E = entries(d, 'cell')

```

## Voir aussi

[dictionary](../dictionary/dictionary.md), [lookup](../dictionary/lookup.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.5.0   | version initiale |

## Auteur

Allan CORNET
