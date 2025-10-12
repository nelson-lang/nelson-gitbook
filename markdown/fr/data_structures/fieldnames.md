# fieldnames

Renvoie les noms de champs d'une structure ou d'un handle.

## Syntaxe

- names = fieldnames(st)
- names = fieldnames(h)
- names = fieldnames(h, '-full')

## Argument d'entrée

- st - une structure
- h - un objet handle

## Argument de sortie

- names - un tableau cellulaire de chaînes

## Description

<p>
            names = fieldnames(st) renvoie un tableau cellulaire de chaînes contenant les noms des champs de la structure d'entrée.</p>

<p>
                names = fieldnames(h) renvoie un tableau cellulaire de chaînes contenant les noms des propriétés du handle (sans les propriétés cachées).</p>

<p>
                    names = fieldnames(h, '-full') renvoie un tableau cellulaire de chaînes contenant les noms de toutes les propriétés du handle.</p>

## Exemple

```matlab
fieldnames(dir())
```

## Voir aussi

[getfield](../data_structures/getfield.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
