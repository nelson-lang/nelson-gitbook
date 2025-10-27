# Gestion des flux

Le module Stream Manager fournit des outils pour gérer les flux d'entrée et de sortie dans Nelson.

Il prend en charge la lecture et l'écriture de données texte et binaires dans des fichiers, la gestion des positions dans les fichiers, la détection de la fin de fichier et la gestion des erreurs de fichier.

Le module permet également la journalisation de l'activité de session ainsi que le chargement et la sauvegarde des données de l'espace de travail, facilitant des opérations d'E/S robustes et flexibles dans les scripts et applications.

## Functions

- [diary](diary.md) - Journal d'une session.
- [fclose](fclose.md) - Ferme un fichier ouvert.
- [feof](feof.md) - Teste la fin de fichier.
- [ferror](ferror.md) - Test des erreurs d'E/S lecture/écriture.
- [fgetl](fgetl.md) - Lire une chaîne depuis un fichier sans le caractère de nouvelle ligne.
- [fgets](fgets.md) - Lire une chaîne depuis un fichier, s'arrêtant après un saut de ligne, la fin du fichier ou après n caractères lus.
- [fileread](fileread.md) - Lire le contenu d'un fichier en tant que texte.
- [filewrite](filewrite.md) - Écrire du texte dans un fichier.
- [fopen](fopen.md) - Ouvrir un fichier dans Nelson.
- [fprintf](fprintf.md) - Écrit des données dans un fichier.
- [fread](fread.md) - Lire des données en format binaire depuis le fichier spécifié par le descripteur fid.
- [frewind](frewind.md) - Positionne le flux au début du fichier.
- [fscanf](fscanf.md) - Lit des données depuis un fichier.
- [fseek](fseek.md) - Positionne le pointeur de fichier à un emplacement.
- [fsize](fsize.md) - Retourne la taille d'un fichier ouvert.
- [ftell](ftell.md) - Retourne le décalage de l'octet courant par rapport au début d'un fichier.
- [fwrite](fwrite.md) - Écrire des données en binaire dans le fichier spécifié par le descripteur fid.
- [load](load.md) - charger des données depuis un fichier .nh5 ou .mat dans l'espace de travail de Nelson.
- [save](save.md) - enregistrer des variables de l'espace de travail dans un fichier .nh5 ou .mat
- [sscanf](sscanf.md) - Lire des données formatées depuis des chaînes.
