# system

Exécution de commandes shell.

## Syntaxe

- status = system(command)
- status = system(command, timeout)
- status = dos(command)
- status = unix(command)
- status = unix(commands)
- [status, output, duration] = system(command)
- [status, output, duration] = dos(command)
- [status, output, duration] = unix(command)
- [status, output, duration] = system(command, '-echo')
- [status, output, duration] = dos(command, '-echo')
- [status, output, duration] = unix(command, '-echo')
- [s, outputs, duration] = unix(commands)
- [s, outputs, duration] = unix(commands, timeouts)

## Argument d'entrée

- command - une chaîne : commande à exécuter dans le shell.
- commands - une cellule de chaînes ou un tableau de chaînes : commandes à exécuter en parallèle dans le shell.
- timeout - un entier (scalaire) : arrêter le processus après le timeout en secondes.
- timeouts - un entier (scalaire : appliqué à toutes les commandes) ou un vecteur : timeout par commande en secondes.

## Argument de sortie

- status - un entier : code de sortie de la commande.
- output - une chaîne : sortie de la commande.
- duration - entier : durée (millisecondes).
- s - une matrice d'entiers : codes de sortie des commandes (mêmes dimensions que commands).
- output - un tableau de chaînes : sortie des commandes.
- duration - une matrice d'entiers : durée de chaque exécution (millisecondes).

## Description

<p>system envoie une chaîne au système d'exploitation pour exécution. La sortie standard et les erreurs standard de la commande shell sont écrites dans le shell appelant.</p>

<p>[status, output] = system(command, '-echo') force l'affichage de la sortie dans la fenêtre de commande, même si elle est également assignée à une variable.</p>

<p>Les fonctions de rappel (callbacks) ne peuvent pas être appelées tant que la commande system n'est pas terminée.</p>

<p>Nelson convertira les caractères vers l'encodage accepté par votre shell système (ANSI sur Windows par défaut, UTF-8 sur les autres systèmes).</p>

<p>La commande peut être interrompue avec la touche CTRL-C. Dans ce cas, le code de retour sera 258 (WAIT_TIMEOUT) sous Windows et 134 sur les autres plateformes (128 + SIGABRT) et la output contiendra 'ABORTED'.</p>

<p>Si la valeur timeout est 0, le timeout est désactivé.</p>

## Exemples

```matlab
[s,w] = system('dir');
[s,w] = system('dir','-echo');
```

```matlab
[s,w] = system(["echo hello", "dir", "echo world"])
```

```matlab
tic();[s, w, d] = system(["PING -n 5 127.0.0.1>nul", "PING -n 7 127.0.0.1>nul", "PING -n 10 127.0.0.1>nul"]), toc()
```

```matlab
tic();[s, w, d] = system(["PING -n 5 127.0.0.1>nul", "PING -n 7 127.0.0.1>nul", "PING -n 10 127.0.0.1>nul"], [1, 5, 3]), toc()
```

To detach an system command, include the trailing character, &, in the command argument.

```matlab
[s,w] = system('notepad &');
```

## Voir aussi

[winopen](../os_functions/winopen.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
