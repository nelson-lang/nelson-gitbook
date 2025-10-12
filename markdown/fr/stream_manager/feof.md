# feof

Teste la fin de fichier.

## Syntaxe

- status = feof(fid)

## Argument d'entrée

- fid - un descripteur de fichier

## Argument de sortie

- status - une valeur entière : 1 si la fin de fichier est atteinte, 0 sinon.

## Description

<p>
            feof vérifie si la fin du fichier a été atteinte.</p>

## Exemple

```matlab
fid = fopen([nelsonroot(), '/etc/startup.m'], 'rt');
feof(fid)
while ~feof(fid)
  tline = fgetl(fid);
  disp(tline);
end
feof(fid)
fclose(fid);
```

## Voir aussi

[fopen](../stream_manager/fopen.md), [fgetl](../stream_manager/fgetl.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
