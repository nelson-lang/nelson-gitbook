# COM_delete

Supprime un contrôle ou serveur COM.

## Syntaxe

- COM_delete(h)
- delete(h)

## Argument d'entrée

- h - un handle : un objet COM.

## Description

<p>
            delete(h) libère toutes les interfaces dérivées du serveur ou contrôle COM spécifié, puis supprime le serveur ou contrôle lui-même.</p>

<p> Ceci est différent de la libération d'une interface, qui libère et invalide seulement l'interface particulière.</p>

<p>N'oubliez pas de nettoyer h ensuite.</p>

## Exemple

```matlab
pTextToSpeech = actxserver('Sapi.SpVoice')
delete(pTextToSpeech)
clear pTextToSpeech
```

## Voir aussi

[actxserver](../com_engine/actxserver.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
