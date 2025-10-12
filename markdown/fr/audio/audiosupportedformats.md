# audiosupportedformats

Obtient les formats de fichiers audio supportés.

## Syntaxe

- formats = audiosupportedformats()

## Argument de sortie

- formats - tableau de structures avec les noms de champs 'Name', 'Extension', 'Subformats'.

## Description

<p>
            audiosupportedformats retourne une structure avec les formats de fichiers audio supportés.</p>

## Exemple

```matlab
formats = audiosupportedformats();
for k = [1: length(formats)]
  formats(k).Name
  formats(k).Extension
  formats(k).Subformats
end
```

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
