# inputParser

Analyse et verifie les entrees de fonction.

## 📝 Syntaxe

- p = inputParser()
- addRequired(p, name)
- addRequired(p, name, validator)
- addOptional(p, name, defaultValue)
- addOptional(p, name, defaultValue, validator)
- addParameter(p, name, defaultValue)
- addParameter(p, name, defaultValue, validator)
- addParamValue(p, name, defaultValue)
- addParamValue(p, name, defaultValue, validator)
- parse(p, varargin{:})

## 📥 Argument d'entrée

- name - identifiant valide utilise comme nom de champ dans les resultats de l'analyseur.
- defaultValue - valeur utilisee lorsqu'une entree optionnelle ou un parametre est absent.
- validator - fonction appelee avec la valeur candidate. Elle peut renvoyer un scalaire logique ou emettre une erreur.
- varargin - entrees a analyser. Les entrees positionnelles sont associees d'abord, puis les entrees nom-valeur.

## 📤 Argument de sortie

- p - objet handle qui stocke le schema d'entrees et le resultat de l'analyse.

## 📄 Description


<b>inputParser</b> definit des entrees requises, optionnelles et nom-valeur, puis stocke les valeurs analysees dans <b>Results</b>. 

Le schema est defini avec <b>addRequired</b>, <b>addOptional</b>, <b>addParameter</b> et <b>addParamValue</b>. <b>addParamValue</b> est accepte comme alias de compatibilite pour <b>addParameter</b>. 

Le schema peut etre construit dans n'importe quel ordre, mais <b>parse</b> consomme d'abord les entrees positionnelles requises, ensuite les entrees positionnelles optionnelles, puis les entrees nom-valeur. 

Une entree requise doit etre presente. Une entree optionnelle est consommee lorsque la prochaine valeur positionnelle satisfait son validateur et n'est pas reconnue comme nom de parametre. Les parametres sont fournis sous forme de paires nom-valeur. 

Si un parametre nom-valeur est fourni plusieurs fois, la derniere valeur fournie est conservee dans <b>Results</b>. 

Les proprietes modifiables sont : 

<b>FunctionName</b> : texte ajoute au debut des messages d'erreur de l'analyseur. 

<b>CaseSensitive</b> : si cette propriete vaut false, les noms de parametres sont compares sans tenir compte de la casse. La valeur par defaut est false. 

<b>KeepUnmatched</b> : si cette propriete vaut true, les paires nom-valeur non reconnues sont stockees dans <b>Unmatched</b>. La valeur par defaut est false. 

<b>PartialMatching</b> : si cette propriete vaut true, un prefixe unique de nom de parametre est accepte. La valeur par defaut est true. 

<b>StructExpand</b> : si cette propriete vaut true et que <b>parse</b> recoit une seule structure scalaire, les champs de la structure sont traites comme des paires nom-valeur. La valeur par defaut est true. 

Les proprietes en lecture seule sont : 

<b>Parameters</b> : noms ajoutes a l'analyseur dans l'ordre de declaration. 

<b>Results</b> : structure scalaire contenant les valeurs analysees et les valeurs par defaut. 

<b>Unmatched</b> : structure scalaire contenant les paires nom-valeur non reconnues lorsque <b>KeepUnmatched</b> vaut true. 

<b>UsingDefaults</b> : cellule de noms d'entrees optionnelles et de parametres pour lesquels la valeur par defaut a ete utilisee.

## 💡 Exemples

Entree requise et parametre nom-valeur.

```matlab
p = inputParser();
addRequired(p, 'width', @(x) isnumeric(x) && isscalar(x));
addParameter(p, 'units', 'm', @(x) ischar(x) || isstring(x));
parse(p, 10, 'units', 'cm');
p.Results
```
Entree optionnelle, valeurs par defaut et derniere valeur nom-valeur prioritaire.

```matlab
p = inputParser();
addRequired(p, 'name', @(x) ischar(x) || isstring(x));
addOptional(p, 'count', 1, @(x) isnumeric(x) && isscalar(x) && x > 0);
addParameter(p, 'mode', 'fast', @(x) validatestring(x, {'fast', 'slow'}));
parse(p, 'job', 'mode', 'slow', 'mode', 'fast');
p.Results
p.UsingDefaults
```
Expansion de structure avec champs non reconnus conserves.

```matlab
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
```


## 🔗 Voir aussi

[validateattributes](../validators/validateattributes.md), [validatestring](../validators/validatestring.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
