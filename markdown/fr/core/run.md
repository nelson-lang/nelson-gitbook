# run

Exécute un script ou un fichier.

## Syntaxe

- run(script_file)
- run(script_file, 'nocatch')
- bsuccess = run(script_file, 'errcatch')

## Argument d'entrée

- script_file - chaîne : chemin vers le script
- 'nocatch' - chaîne : option par défaut (pas de capture d'erreurs)
- 'errcatch' - chaîne : option pour capturer les erreurs

## Argument de sortie

- bsuccess - un logique : vrai si aucune erreur détectée pendant l'exécution du script

## Description

<p>Exécute un script ou un fichier spécifié dans l'environnement Nelson.</p>

## Exemples

Creates two .m in temp directory to use as example:

```matlab
fd = fopen([tempdir(), 'example_run_ok.m'], 'wt');
fprintf(fd, ['A = 1;', char(10)]);
fprintf(fd, ['B = 2;', char(10)]);
fprintf(fd, ['C = A + B', char(10)]);
fclose(fd);

fd = fopen([tempdir(), 'example_run_not_ok.m'], 'wt');
fprintf(fd, ['AA = 1;', char(10)]);
fprintf(fd, ['CC = AA + BB', char(10)]);
fclose(fd);

```

run a script without error.

```matlab
run([tempdir(), 'example_run_ok.m']);
```

run a script and catch error (no error).

```matlab
bsuccess = run([tempdir(), 'example_run_ok.m'], 'errcatch')
```

run a script and catch error (with error).

```matlab
bsuccess = run([tempdir(), 'example_run_not_ok.m'], 'errcatch')
```

run a script and no catch error.

```matlab
run([tempdir(), 'example_run_not_ok.m'], 'nocatch');
```

## Voir aussi

[execstr](../core/execstr.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
