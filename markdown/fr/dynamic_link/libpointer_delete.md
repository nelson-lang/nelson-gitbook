# libpointer_delete

Supprime l'objet libpointer

## Syntaxe

- libpointer_delete(h)
- delete(h)

## Argument d'entrée

- h - un handle : un objet libpointer.

## Description

<p>
            delete(h) libère l'objet libpointer.</p>

<p>N'oubliez pas de nettoyer la variable h ensuite.</p>

## Exemple

```matlab
libpointer_used(),delete(libpointer_used())
```

## Voir aussi

[libpointer](../dynamic_link/libpointer.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
