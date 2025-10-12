# i

Nombre imaginaire pur.

## Syntaxe

- i
- 0i
- 3\*i

## Description

<p>
            i, ou j retourne un nombre imaginaire pur équivalent à sqrt(-1).</p>

<p>Attention, i et j peuvent être redéfinis et utilisés comme variables ordinaires, dans ce cas, vous devez utiliser clear pour restaurer le comportement par défaut.</p>

## Exemples

```matlab
A = 3i
```

```matlab
A = single(3i)
```

```matlab
i = 33;
disp(i);
clear('i');
disp(i);
```

## Voir aussi

[complex](../elementary_functions/complex.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
