# overloading

Personnalisation des opérateurs et fonctions

## Description

<p>Dans divers scénarios, vous pouvez avoir besoin de modifier le comportement des
            opérateurs et fonctions de Nelson lorsqu'ils opèrent sur des objets ou des types de
            base.</p>

<p>Cette personnalisation peut être réalisée en surchargeant les fonctions concernées, leur
            permettant de gérer différents types et nombres d'arguments d'entrée et d'exécuter
            l'opération appropriée pour l'objet de plus haute priorité.</p>

<p></p>

<p>Surcharge des opérateurs :</p>

<p></p>

<p>Chaque opérateur intégré correspond à un nom de fonction spécifique (par exemple,
            l'opérateur - est associé à la fonction minus.m).</p>

<p>Vous pouvez surcharger n'importe quel opérateur en créant un fichier M avec le nom
            approprié dans le répertoire de la classe.</p>

<p>Par exemple, si A ou B est un objet de type classname, l'expression A - B déclenche un appel à la fonction @classname/minus.m, si elle existe.</p>

<p>Lorsque A et B appartiennent à des classes différentes, Nelson applique des
            règles de précédence pour déterminer la méthode à utiliser.</p>

<p></p>

<p>Le tableau ci-dessous fournit la liste des noms de fonctions associés à la plupart des
            opérateurs Nelson :</p>

<p></p>

| Description                           | Opérateur                   | Fonction           |
| ------------------------------------- | --------------------------- | ------------------ | -------- |
| Addition binaire                      | a + b                       | plus(a, b)         |
| Soustraction binaire                  | a - b                       | minus(a, b)        |
| Moins unaire                          | -a                          | uminus(a)          |
| Plus unaire                           | +a                          | uplus(a)           |
| Multiplication élément par élément    | a .\* b                     | times(a, b)        |
| Multiplication matricielle            | a \* b                      | mtimes(a, b)       |
| Division élément par élément à droite | a ./ b                      | rdivide(a, b)      |
| Division élément par élément à gauche | a .\ b                      | ldivide(a, b)      |
| Division matricielle à droite         | a / b                       | mrdivide(a, b)     |
| Division matricielle à gauche         | a \ b                       | mldivide(a, b)     |
| Puissance élément par élément         | a .^ b                      | power(a, b)        |
| Puissance matricielle                 | a ^ b                       | mpower(a, b)       |
| Inférieur à                           | a < b                       | lt(a, b)           |
| Supérieur à                           | a > b                       | gt(a, b)           |
| Inférieur ou égal                     | a <= b                      | le(a, b)           |
| Supérieur ou égal                     | a >= b                      | ge(a, b)           |
| Différent                             | a ~= b                      | ne(a, b)           |
| Égalité                               | a == b                      | eq(a, b)           |
| ET logique                            | a & b                       | and(a, b)          |
| OU logique                            | a                           | b                  | or(a, b) |
| NON logique                           | ~a                          | not(a)             |
| Opérateur deux-points                 | a:d:b                       | colon(a, d, b)     |
| Transposée conjuguée                  | a'                          | ctranspose(a)      |
| Transposée matricielle                | a.'                         | transpose(a)       |
| Méthode d'affichage                   | sortie fenêtre de commandes | display(a)         |
| Concaténation horizontale             | [a, b]                      | horzcat(a, b, ...) |
| Concaténation verticale               | [a; b]                      | vertcat(a, b, ...) |
| Référence par indice                  | a(s1, s2, ... , sn)         | subsref(a, s)      |
| Affectation par indice                | a(s1, ... , sn) = b         | subsasgn(a, s, b)  |
| Index de sous-script                  | b(a)                        | subsindex(a)       |

## Exemple

Surcharger l'opérateur minus pour double

```matlab
% save in @double directory, as minus.m
function r = minus(A, B)
  disp('minus was called')
  % to call minus builtin
  r = builtin('minus', A, B)
end

```

## Voir aussi

[plus](../operators/plus.md), [minus](../operators/minus.md), [uminus](../operators/uminus.md), [uplus](../operators/uplus.md), [times](../operators/times.md), [mtimes](../operators/mtimes.md), [rdivide](../operators/rdivide.md), [ldivide](../operators/ldivide.md), [mrdivide](../operators/mrdivide.md), [mldivide](../operators/mldivide.md), [power](../operators/power.md), [mpower](../operators/mpower.md), [lt](../operators/lt.md), [gt](../operators/gt.md), [le](../operators/le.md), [ge](../operators/ge.md), [ne](../operators/ne.md), [eq](../operators/eq.md), [and](../operators/and.md), [or](../operators/or.md), [not](../operators/not.md), [colon](../operators/colon.md), [ctranspose](../operators/ctranspose.md), [transpose](../operators/transpose.md), [display](../display_format/display.md), [horzcat](../operators/horzcat.md), [vertcat](../operators/vertcat.md), [subsref](../operators/subsref.md), [subsasgn](../operators/subsasgn.md), [subsindex](../operators/subsindex.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
