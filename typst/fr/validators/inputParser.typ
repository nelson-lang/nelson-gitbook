#import "nelson_help.typ": *

= inputParser <validators:inputParser>

Analyse et verifie les entrees de fonction.

== Syntaxe

- #raw("p = inputParser()");
- #raw("addRequired(p, name)");
- #raw("addRequired(p, name, validator)");
- #raw("addOptional(p, name, defaultValue)");
- #raw("addOptional(p, name, defaultValue, validator)");
- #raw("addParameter(p, name, defaultValue)");
- #raw("addParameter(p, name, defaultValue, validator)");
- #raw("addParamValue(p, name, defaultValue)");
- #raw("addParamValue(p, name, defaultValue, validator)");
- #raw("parse(p, varargin{:})");

== Argument d'entrée

/ name: identifiant valide utilise comme nom de champ dans les resultats de l'analyseur.
/ defaultValue: valeur utilisee lorsqu'une entree optionnelle ou un parametre est absent.
/ validator: fonction appelee avec la valeur candidate. Elle peut renvoyer un scalaire logique ou emettre une erreur.
/ varargin: entrees a analyser. Les entrees positionnelles sont associees d'abord, puis les entrees nom-valeur.

== Argument de sortie

/ p: objet handle qui stocke le schema d'entrees et le resultat de l'analyse.

== Description

#strong[inputParser]; definit des entrees requises, optionnelles et nom-valeur, puis stocke les valeurs analysees dans #strong[Results];.

 Le schema est defini avec #strong[addRequired];, #strong[addOptional];, #strong[addParameter]; et #strong[addParamValue];. #strong[addParamValue]; est accepte comme alias de compatibilite pour #strong[addParameter];.

 Le schema peut etre construit dans n'importe quel ordre, mais #strong[parse]; consomme d'abord les entrees positionnelles requises, ensuite les entrees positionnelles optionnelles, puis les entrees nom-valeur.

 Une entree requise doit etre presente. Une entree optionnelle est consommee lorsque la prochaine valeur positionnelle satisfait son validateur et n'est pas reconnue comme nom de parametre. Les parametres sont fournis sous forme de paires nom-valeur.

 Si un parametre nom-valeur est fourni plusieurs fois, la derniere valeur fournie est conservee dans #strong[Results];.

 Les proprietes modifiables sont :

 #strong[FunctionName]; : texte ajoute au debut des messages d'erreur de l'analyseur.

 #strong[CaseSensitive]; : si cette propriete vaut false, les noms de parametres sont compares sans tenir compte de la casse. La valeur par defaut est false.

 #strong[KeepUnmatched]; : si cette propriete vaut true, les paires nom-valeur non reconnues sont stockees dans #strong[Unmatched];. La valeur par defaut est false.

 #strong[PartialMatching]; : si cette propriete vaut true, un prefixe unique de nom de parametre est accepte. La valeur par defaut est true.

 #strong[StructExpand]; : si cette propriete vaut true et que #strong[parse]; recoit une seule structure scalaire, les champs de la structure sont traites comme des paires nom-valeur. La valeur par defaut est true.

 Les proprietes en lecture seule sont :

 #strong[Parameters]; : noms ajoutes a l'analyseur dans l'ordre de declaration.

 #strong[Results]; : structure scalaire contenant les valeurs analysees et les valeurs par defaut.

 #strong[Unmatched]; : structure scalaire contenant les paires nom-valeur non reconnues lorsque #strong[KeepUnmatched]; vaut true.

 #strong[UsingDefaults]; : cellule de noms d'entrees optionnelles et de parametres pour lesquels la valeur par defaut a ete utilisee.


== Exemples

Entree requise et parametre nom-valeur.

``````matlab
p = inputParser();
addRequired(p, 'width', @(x) isnumeric(x) && isscalar(x));
addParameter(p, 'units', 'm', @(x) ischar(x) || isstring(x));
parse(p, 10, 'units', 'cm');
p.Results
``````

Entree optionnelle, valeurs par defaut et derniere valeur nom-valeur prioritaire.

``````matlab
p = inputParser();
addRequired(p, 'name', @(x) ischar(x) || isstring(x));
addOptional(p, 'count', 1, @(x) isnumeric(x) && isscalar(x) && x > 0);
addParameter(p, 'mode', 'fast', @(x) validatestring(x, {'fast', 'slow'}));
parse(p, 'job', 'mode', 'slow', 'mode', 'fast');
p.Results
p.UsingDefaults
``````

Expansion de structure avec champs non reconnus conserves.

``````matlab
p = inputParser();
p.KeepUnmatched = true;
addParameter(p, 'width', 1, @(x) isnumeric(x) && isscalar(x));
addParameter(p, 'height', 1, @(x) isnumeric(x) && isscalar(x));
opts.width = 10;
opts.height = 5;
opts.color = 'blue';
parse(p, opts);
p.Results
p.Unmatched
``````


== Voir aussi

#nlink(<validators:validateattributes>)[validateattributes];, #nlink(<validators:validatestring>)[validatestring];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
