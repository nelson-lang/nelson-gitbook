# ipc

Communicateur inter-processus.

## 📝 Syntaxe

- O = ipc(pid, 'eval', cmd)
- B = ipc(pid, 'isvar', name, scope)
- V = ipc(pid, 'get', name)
- V = ipc(pid, 'get', name, scope)
- TF = ipc(pid, 'minimize')
- ipc(pid, 'post', cmd)
- ipc(pid, 'post', cmd, scope)
- ipc(pid, 'put', var, name)
- ipc(pid, 'put', var, name, scope)
- ipc(pid, 'minimize', tf)

## 📥 Argument d'entrée

- 'post' - une chaîne : poster une commande à évaluer dans un autre processus Nelson dans le scope de base (non bloquant).
- 'eval' - une chaîne : poster une commande à évaluer dans un autre processus Nelson dans le scope de base (bloquant).
- 'isvar' - une chaîne : vérifier si une variable existe dans un autre processus Nelson.
- 'put' - une chaîne : envoyer une variable dans un autre processus Nelson.
- 'get' - une chaîne : récupérer une variable depuis un autre processus Nelson.
- 'minimize' - une chaîne : minimiser la fenêtre principale d'un autre processus Nelson.

## 📤 Argument de sortie

- B - un logique : true si la variable existe.
- V - une variable provenant d'un autre Nelson.
- TF - un logique : true si le processus destination est minimisé.
- O - un tableau de caractères : sortie de l'évaluation d'une chaîne.

## 📄 Description

<b>ipc</b> permet d'exécuter, récupérer et envoyer des variables entre plusieurs processus Nelson.

Tous les types Nelson sérialisables sont pris en charge. Les types non pris en charge seront remplacés par une matrice vide et un avertissement.

LIMITATION :

La limite pour la taille des données transférées est de 5000x5000 double. Sur une architecture 32 bits, 1024x1024 double.

Limitation actuelle afin de limiter l'utilisation mémoire.

## 💡 Exemples

```matlab
master_pid = getpid()
initial_pids = getpid('available')

% Creates 4 nelsons process
N = 4;
for i = 1:N
    cmd = sprintf('nelson-gui -e MASTER_PID=%d &', i);
    unix(cmd);
    sleep(5)
end
current_pids = getpid('available')

% wait clients ready
for p = current_pids
    if p ~= master_pid
        while(~ipc(p, 'isvar', 'MASTER_PID')), sleep(1), end
    end
end

% Creates random matrix in others Nelson
n = 0;
for p = current_pids
    if p ~= master_pid
        cmd = sprintf('rng(%d);M = rand(10, 10); disp(M)', n);
        ipc(p, 'post', cmd);
        n = n + 1;
    end
end

% Creates a matrix with matrix from others Nelson
C = [];
for p = current_pids
    if p ~= master_pid
        R = ipc(p, 'get', 'M');
        C = [C; R]
        n = n + 1;
    end
end

% close all clients
for p = current_pids
    if p ~= master_pid
        ipc(p, 'post', 'exit')
    end
end
```

```matlab
ipc(getpid(), 'eval', 'dir')
```

```matlab
ipc(getpid(), 'minimize', true)
ipc(getpid(), 'minimize')
```

## 🔗 Voir aussi

[getpid](../ipc/getpid.md), [unix](../os_functions/unix.md), [eval](../core/eval.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
