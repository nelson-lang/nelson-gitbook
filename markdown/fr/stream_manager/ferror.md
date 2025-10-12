# ferror

Test des erreurs d'E/S lecture/écriture.

## Syntaxe

- msg = ferror(fid)
- [msg, code] = ferror(fid)
- ferror(fid, 'clear')

## Argument d'entrée

- fid - un descripteur de fichier

## Argument de sortie

- code - une valeur entière : 0 s'il n'y a pas d'erreur. valeur négative si une erreur est détectée.
- msg - un vecteur de caractères : message d'erreur correspondant au code.

## Description

<p>
            ferror interroge le statut d'erreur d'un fichier.</p>

<p>
                ferror(fid, 'clear') efface l'indicateur d'erreur pour le fichier spécifié.</p>

<p>Pour plus d'informations sur le message retourné, consultez le manuel de la bibliothèque d'exécution C.</p>

## Exemple

```matlab
filename = [tempdir(), 'test_ferror.csv'];
fid = fopen(filename, 'w');
res = fgets(fid);
[msg, code] = ferror(fid)

```

## Voir aussi

[fopen](../stream_manager/fopen.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
