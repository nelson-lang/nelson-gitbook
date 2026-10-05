# standaloneApplicationCompiler

Ouvrir l'éditeur de projet d'application autonome.

## 📝 Syntaxe

- standaloneApplicationCompiler

## 📄 Description


Charge le module optionnel compiler et ouvre son éditeur de projet dans une session graphique Nelson. Un nouvel appel réutilise la fenêtre existante et conserve son projet. La commande n'accepte aucun argument d'entrée ni de sortie. 

Les paramètres de l'application et de l'installateur, les ressources, l'analyse des dépendances, la construction, les projets et l'export de script utilisent les services programmatiques du compilateur. Les options non prises en charge ne sont pas activées silencieusement. Les sorties précédentes vérifiées peuvent être reconstruites ; les fichiers sans rapport ou modifiés ne sont pas écrasés. 

Les commandes deploytool et standaloneApplicationCompiler ouvrent le même éditeur. Les anciens arguments -build et -package ne sont pas pris en charge ; utilisez les fonctions compiler.build et compiler.package. 

Les projets .ncproj enregistrés utilisent des chemins relatifs pour les fichiers internes au dossier du projet, qui peut être déplacé avec ses sources. Les fichiers externes conservent leurs chemins absolus. Consultez compiler\_project\_tutorial pour la gestion des chemins et des anciens projets. 

Enregistrez après la construction pour conserver sa référence. La réouverture restaure les sorties vérifiées pour créer un installateur sans reconstruire. Si le rapport ou les sorties ont changé, le projet reste accessible mais sa construction enregistrée est indisponible. Une construction restaurée est l'application précédente, pas une reconstruction des sources modifiées. 

Les empreintes des sources distinguent les entrées inchangées des modifications confirmées, qui désactivent Installer jusqu'à reconstruction. Les sources manquantes ou impossibles à analyser rendent la vérification indisponible ; les anciennes constructions peuvent avoir un état des sources inconnu. Leurs sorties vérifiées restent distribuables comme instantané enregistré, sans être présentées comme à jour. Analyze actualise cet état ; Installer le revérifie. Consultez compiler\_project\_tutorial pour le périmètre et les limites.

## 💡 Exemple



```matlab
standaloneApplicationCompiler
```


## 🔗 Voir aussi

[deploytool](../modules_manager/deploytool.md), [compiler_project_tutorial](../compiler/compiler_project_tutorial.md), [ncc](../modules_manager/ncc.md).
<!--
## 👤 Auteur

Allan CORNET
-->
