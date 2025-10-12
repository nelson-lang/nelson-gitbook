# getpid

Obtenir l'identifiant de processus Nelson.

## Syntaxe

- p = getpid()
- v = getpid('available')

## Argument d'entrée

- 'available' - une chaîne.

## Argument de sortie

- p - un double : identifiant de processus courant.
- v - un vecteur de double : liste des identifiants des processus Nelson (même architecture) en cours d'exécution pour l'utilisateur courant.

## Description

<p>
            p = getpid() renvoie l'identifiant du processus Nelson courant en cours d'exécution sur l'ordinateur.</p>

<p>
                v = getpid('available') renvoie la liste des identifiants des processus Nelson (même architecture) en cours d'exécution pour l'utilisateur courant.</p>

<p>win64 et win32 sont deux architectures différentes mais elles peuvent s'exécuter en même temps.</p>

## Exemple

```matlab
p = getpid()
getpid('available')
unix('nelson-gui &')
sleep(5) % detached process need to wait to see available
getpid('available')
unix('nelson-gui &')
sleep(5) % detached process need to wait to see available
getpid('available')
unix('nelson-gui &')
sleep(5) % detached process need to wait to see available
getpid('available')
```

## Voir aussi

[unix](../os_functions/unix.md), [ipc](../ipc/ipc.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
