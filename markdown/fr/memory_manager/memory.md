# memory

Obtenir des informations sur la mémoire.

## 📝 Syntaxe

- memory
- usermem = memory()
- [usermem, systemmem] = memory()

## 📤 Argument de sortie

- usermem - Informations sur la mémoire utilisateur (une structure).
- systemmem - Informations sur la mémoire système (une structure).

## 📄 Description


<b>memory</b> fournit des informations sur la mémoire. 

<b>Mémoire utilisateur</b> : renvoie Maximum Possible Array (MaxPossibleArrayBytes), Memory Available for All Arrays (MemAvailableAllArrays), Memory Used By Nelson (MemUsedNelson). 

<b>Mémoire système</b> : 

VirtualAddressSpace.Available : espace d'échange disponible 

VirtualAddressSpace.Total : espace d'échange total 

SystemMemory.Available : mémoire système disponible 

PhysicalMemory.Available : mémoire physique disponible 

PhysicalMemory.Total : mémoire physique totale

## 💡 Exemples



```matlab
memory()
A = ones(1000);
memory()
```


```matlab
clear('A');
[u1, s1] = memory();
A = ones(1000);
[u2, s2] = memory();
disp(u2.MemUsedNelson - u1.MemUsedNelson);
clear('A');
[u3, s3] = memory();
disp(u3.MemUsedNelson - u2.MemUsedNelson);
```


```matlab
[u1, s1] = memory()
```


## 🔗 Voir aussi

[clear](../memory_manager/clear.md), [who](../memory_manager/who.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
