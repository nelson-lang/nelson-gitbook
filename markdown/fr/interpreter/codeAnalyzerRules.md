# codeAnalyzerRules

Identifiants des diagnostics de l'analyseur de code.

## 📄 Description


Cette page liste les identifiants de diagnostics signales par <b>checkcode</b>, <b>codeIssues</b> et <b>nelson-lint</b>. 

Chaque identifiant est stable et peut etre utilise dans les fichiers de configuration ou dans les suppressions locales comme <b>%#ok<NLS0004></b>. 

| ID | Niveau par defaut | Categorie | Description | 
| --- | --- | --- | --- | 
| NLS0001 | error | Syntax | Erreur de syntaxe, lexique, entree ou lecture. Le fichier source ne peut pas etre analyse ou ne peut pas etre lu. | 
| NLS0002 | warning | Naming | Le nom de la fonction principale ou de la classe differe du nom du fichier source. | 
| NLS0003 | warning | Flow | Du code place apres **return**, **break** ou **continue** est inaccessible dans le bloc courant. | 
| NLS0004 | info | Dataflow | Une variable locale est assignee mais n'est jamais reutilisee ensuite. L'analyseur ignore le texte dans les commentaires et les chaines de caracteres, ne compte pas la partie gauche d'une affectation comme une utilisation, et ignore cette regle lorsque des affectations dynamiques rendent le flux local ambigu. | 
| NLS0005 | warning | Dataflow | Une variable locale est utilisee avant sa premiere affectation locale dans un cas simple et conservateur. | 
| NLS0006 | warning | Dataflow | Un argument de sortie declare n'est pas assigne par le corps de la fonction. | 
| NLS0007 | info | Dataflow | Un argument d'entree n'est jamais utilise par le corps de la fonction. | 
| NLS0008 | warning | Flow | Un bloc vide semble probablement involontaire. | 
| NLS0009 | warning | Flow | Une condition est une valeur constante triviale comme **true**, **false**, **1** ou **0**. | 
| NLS0010 | warning | Style | Une ligne se termine par des espaces inutiles. Ce diagnostic est corrigeable trivialement. | 
| NLS0011 | warning | Style | Le fichier ne se termine pas par une nouvelle ligne. Ce diagnostic est corrigeable trivialement. | 
| NLS0012 | warning | Style | Une ligne depasse la longueur maximale configuree. | 
| NLS0013 | error | Repository | Un terme interdit par les regles du depot apparait dans le code source ou l'aide. | 
| NLS0014 | warning ou error | Metrics | La complexite cyclomatique depasse le seuil configure. | 
| NLS0015 | warning ou error | Metrics | La complexite cyclomatique modifiee depasse le seuil configure. | 
| NLS0016 | error | Security | La ligne source contient un caractere de formatage directionnel invisible. | 
| NLS0017 | info | Readability | Un appel d'affichage encapsule **sprintf**. Preferer une sortie formatee directe pour un code plus clair. | 
| NLS0018 | info | Readability | Un appel de diagnostic encapsule **sprintf**. Preferer le passage direct des arguments formates. | 
| NLS0019 | error | Config | Le fichier de configuration de l'analyseur de code est invalide. | 
| NLS0020 | warning | Metrics | Un fichier depasse le nombre maximal de lignes configure. | 
| NLS0021 | warning | Metrics | Une fonction depasse le nombre maximal de lignes configure. | 
| NLS0022 | warning | Security | Un appel dynamique de code ou une mutation de workspace dangereuse est utilise. Les appels **load** simples en forme commande peuvent proposer une suggestion non sure pour capturer les donnees chargees dans une structure. | 
| NLS0023 | info | Dataflow | Une fonction locale n'est jamais appelee dans son fichier. | 
| NLS0024 | warning | Dataflow | Une variable locale masque une fonction locale du meme fichier. | 
| NLS0025 | warning | Numeric | Un litteral flottant est compare avec une egalite exacte. | 
| NLS0026 | warning ou error | Metrics | La complexite cognitive depasse le seuil configure. | 
| NLS0027 | allow par defaut | Documentation | Une fonction publique ou une classe n'a pas de commentaire d'aide. Ce diagnostic peut inserer un squelette de commentaire d'aide. | 
| NLS0028 | warning | Dataflow | Une variable de fonction imbriquee masque un symbole d'une portee parente. | 
| NLS0029 | warning | Dataflow | Une variable locale masque un symbole importe. | 
| NLS0030 | info | Dataflow | Un symbole importe n'est jamais utilise. | 
| NLS0031 | warning | Classdef | Une propriete de classe est declaree plusieurs fois dans la meme classe. | 
| NLS0032 | warning | Classdef | Une methode de classe est declaree plusieurs fois dans la meme classe. | 
| NLS0033 | warning | Classdef | Un evenement de classe est declare plusieurs fois dans la meme classe. | 
| NLS0034 | warning | Dataflow | Une variable locale ou un argument masque un nom de fonction builtin. | 
| NLS0035 | warning | Classdef | Une variable ou un argument de methode masque un nom de propriete de classe. | 
| NLS0036 | info | Dataflow | Une affectation locale masque un nom d'argument d'entree. | 
| NLS0037 | warning | Classdef | Une superclasse est listee plusieurs fois dans la meme classe. | 
| NLS0038 | warning | Classdef | Un attribut de classe est liste plusieurs fois dans la meme classe. | 

 

Les niveaux des regles peuvent etre changes avec l'objet <b>rules</b> de <b>nelson-lint.json</b>. Les fichiers de configuration version 2 doivent declarer <b>"version": 2</b>. Les niveaux acceptes sont <b>allow</b>, <b>info</b>, <b>warning</b> et <b>error</b>.

## Fonction(s) utilisée(s)

checkcode, codeIssues, nelson-lint

## 💡 Exemple

Supprimer un diagnostic de variable locale volontairement inutilisee.

```matlab
%#ok<NLS0004>
temporaryValue = computeExpensiveValue();
```


## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
