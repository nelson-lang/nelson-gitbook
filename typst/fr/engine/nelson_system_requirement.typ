#import "nelson_help.typ": *

= Exigences système <engine:nelson_system_requirement>

Exigences système par plateforme.

== Description

#strong[Linux]; :

 #strong[Système d'exploitation]; : Ubuntu 24.04 LTS, Ubuntu 22.04 LTS, Ubuntu 20.04 LTS, Fedora, ArchLinux, NixOs

 #strong[Processeur]; : tout processeur Intel ou AMD x86-64.

 #strong[Mémoire (RAM)]; : voir les exigences du système d'exploitation (16 Go recommandés ou plus).

 #strong[Stockage]; : 1 Go pour l'installation de tous les produits ; un SSD\/NVMe est recommandé.

 #strong[Graphisme]; : un GPU avec accélération matérielle et support OpenGL et au moins 1 Go de mémoire est recommandé.

 

 #strong[Windows]; :

 #strong[Système d'exploitation]; : Windows 10, 11 ou Windows Server 2022.

 #strong[Processeur]; : tout processeur Intel ou AMD x86-64 avec jeu d'instructions AVX2 (CPU publié à partir de 2015).

 #strong[Mémoire (RAM)]; : voir les exigences du système d'exploitation (16 Go recommandés ou plus).

 #strong[Stockage]; : 1 Go pour l'installation de tous les produits ; un SSD\/NVMe est recommandé.

 #strong[Graphisme]; : un GPU avec accélération matérielle et support OpenGL et au moins 1 Go de mémoire est recommandé.

 

 #strong[MacOs]; :

 #strong[Système d'exploitation]; : macOS Tahoe, macOS Sequoia, macOS Sonoma, macOS Ventura.

 #strong[Processeur]; : tout processeur Intel supporté par Apple et tout processeur de la série M.

 #strong[Stockage]; : 1 Go pour l'installation de tous les produits ; un SSD\/NVMe est recommandé.

 #strong[Graphisme]; : tout Mac capable d'exécuter macOS Ventura dispose d'un GPU pouvant exécuter Nelson.

 


== Voir aussi

#nlink(<dynamic_link:2_supported_compilers>)[Supported C\/C++ compilers];, #nlink(<engine:executable>)[executable];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.13.0], [version initiale],
)

// Auteur: Allan CORNET
