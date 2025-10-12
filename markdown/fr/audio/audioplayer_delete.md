# audioplayer_delete

Supprime l'objet audioplayer.

## Syntaxe

- audioplayer_delete(h)
- delete(h)

## Argument d'entrée

- h - un handle : un objet audioplayer.

## Description

<p>
            delete(h) libère l'objet audioplayer.</p>

<p>N'oubliez pas de vider h ensuite.</p>

## Exemple

```matlab
audioplayer_used(),delete(audioplayer_used())
```

## Voir aussi

[audioplayer](../audio/audioplayer.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
