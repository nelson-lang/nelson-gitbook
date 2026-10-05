# ctfroot

Racine de l'archive applicative extraite.

## 📝 Syntaxe

- directory = ctfroot()

## 📤 Argument de sortie

- directory - Chemin absolu, vecteur de caracteres.

## 📄 Description


<b>ctfroot</b> retourne le dossier temporaire prive dans lequel le lanceur a extrait l'archive applicative. Le resultat reste disponible dans les callbacks graphiques et ne depend pas d'une variable d'environnement modifiable. 

La fonction produit une erreur hors deploiement. Utiliser <b>isdeployed</b> pour choisir entre les chemins de developpement et ceux de l'application. Le module compiler n'est pas requis a l'execution. 

Le format actuel conserve les fichiers applicatifs sous <b>roots/N</b>, suivant les racines de recherche du manifeste. Aucun dossier base sur le nom de l'executable n'est ajoute. Pour une ressource situee a cote d'une fonction, preferer <b>fullfile(fileparts(mfilename('fullpath')), 'data.txt')</b>. Inclure explicitement les ressources calculees avec <b>-a</b>. 

Ce dossier est supprime apres l'arret normal de l'application. Ne pas l'utiliser pour des resultats persistants.

## Fonction(s) utilisée(s)

isdeployed

## 💡 Exemple



```matlab
if isdeployed()
  directory = ctfroot()
end
```

<!--
## 👤 Auteur

Allan CORNET
-->
