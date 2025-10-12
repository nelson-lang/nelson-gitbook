# HDF5

Le module HDF5 fournit un support pour travailler avec des fichiers au format Hierarchical Data Format (HDF5) dans Nelson.

Il permet de créer des jeux de données, de lire et d'écrire des données et attributs, et d'explorer le contenu des fichiers.

En plus du support HDF5 standard, il inclut des utilitaires pour le format natif de Nelson .nh5, permettant d'enregistrer, charger et inspecter efficacement les variables de l'espace de travail.

Ce module est essentiel pour gérer des données scientifiques volumineuses, structurées et portables.

## Functions

- [h5create](h5create.md) - Créé un jeu de données.
- [h5dump](h5dump.md) - vide le contenu d'un fichier HDF5 au format texte.
- [h5ls](h5ls.md) - Liste le contenu d'un fichier HDF5.
- [h5read](h5read.md) - Lit un jeu de données HDF5.
- [h5readatt](h5readatt.md) - Lit un attribut HDF5.
- [h5write](h5write.md) - Écrit un jeu de données HDF5.
- [h5writeatt](h5writeatt.md) - Écrit un attribut HDF5.
- [isnh5file](isnh5file.md) - Vérifie si le nom de fichier est un fichier .nh5 valide
- [loadnh5](loadnh5.md) - charge des données depuis un fichier .nh5 dans l'espace de travail de Nelson.
- [savenh5](savenh5.md) - enregistre des variables de l'espace de travail dans un fichier .nh5
- [whonh5](whonh5.md) - Liste les variables d'un fichier .nh5 valide.
- [whosnh5](whosnh5.md) - Liste les variables d'un fichier .nh5 valide avec tailles et types.
