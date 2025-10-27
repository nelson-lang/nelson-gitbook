# MATIO

Le module MATIO fournit un support pour la lecture et l'écriture de fichiers MAT, un format largement utilisé pour stocker des données numériques dans MATLAB© et des environnements compatibles.

Il permet à Nelson de vérifier la validité d'un fichier MAT, de charger et sauvegarder des variables d'espace de travail, et d'inspecter le contenu des fichiers.

Grâce à ce module, les utilisateurs peuvent échanger des données entre Nelson et MATLAB©, ce qui en fait un composant clé pour l'interopérabilité dans les flux de travail scientifiques et d'ingénierie.

## Functions

- [ismatfile](ismatfile.md) - Vérifie si le nom de fichier est un fichier .mat valide
- [loadmat](loadmat.md) - charge des données depuis un fichier .mat dans l'espace de travail de Nelson.
- [savemat](savemat.md) - enregistre les variables de l'espace de travail dans un fichier .mat
- [whomat](whomat.md) - Liste les variables d'un fichier .mat valide.
- [whosmat](whosmat.md) - Liste les variables d'un fichier .mat valide avec tailles et types.
