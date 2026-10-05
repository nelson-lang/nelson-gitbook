# gallery

Générer des matrices de test et des données couramment utilisées pour des expériences numériques

## 📝 Syntaxe

- [A1,A2,...,Am] = gallery(matrixname,P1,P2,...,Pn)
- [A1,A2,...,Am] = gallery(matrixname,P1,P2,...,Pn,typename)
- A = gallery(k)
- A = gallery("circul", v)
- [v,beta] = gallery("house", x)
- [A,beta] = gallery("ipjfact", n, k)
- A = gallery("cauchy", x, y)

## 📥 Argument d'entrée

- matrixname - nom de la famille de matrices à générer (chaîne ou vecteur de caractères), par exemple "circul", "cauchy", "grcar", "minij", "dramadah", "house", "ipjfact"
- P1, P2, ..., Pn - paramètres dépendants de la famille : scalaires, vecteurs ou matrices qui déterminent la taille et les entrées (par exemple<code>n</code>, vecteurs<code>v</code>,<code>x</code>,<code>y</code>, ou indicateurs d'options)
- n - entier positif spécifiant l'ordre ou la taille de la matrice
- v, x, y - vecteurs utilisés comme paramètres (par exemple première ligne pour circulante, emplacements des points pour chebvand, ou paramètres de Cauchy)
- k - option ou petit paramètre entier contrôlant le comportement de la famille (par exemple nombre de superdiagonales pour<b>grcar</b> ou sélecteurs de variantes pour<b>dramadah</b>)
- typename - type de données de sortie optionnel : "double" (par défaut) ou "single"

## 📤 Argument de sortie

- A1,A2,...,Am - une ou plusieurs matrices ou tableaux produits par la famille choisie
- A - matrice unique ou tableau multidimensionnel lorsque une seule sortie est demandée
- v,beta,s - Sorties de Householder :<code>v</code>(vecteur),<code>beta</code>(scalaire), et optionnel<code>s</code>retourné par <b>house</b>
- beta - détérminant ou sortie scalaire pour les familles qui le retournent explicitement (par exemple <b>ipjfact</b> retourne le déterminant<code>beta</code>)

## 📄 Description


La fonction<b>gallery</b> retourne une collection de matrices de test standard et de données générées utilisées pour illustrer les concepts d'algèbre linéaire numérique, tester des algorithmes et reproduire des exemples de manuels. 

Utilisez l'argument<b>matrixname</b> pour sélectionner une famille ; les paramètres supplémentaires (tailles, vecteurs, options) dépendent de la famille choisie. 

Utilisations typiques : étudier la sensibilité et le conditionnement des valeurs propres, exercer des solveurs avec des matrices structurées (Toeplitz, Hankel, circulante), générer des matrices aléatoires ou spécialement structurées avec des propriétés singulières/valeurs propres prescrites, ou obtenir des exemples canoniques pour l'enseignement et les tests. 

Le <b>typename</b> optionnel force le type de sortie numérique. 

Si omis, le type de sortie est déduit des entrées : la présence d'une entrée<code>single</code>donne lieu à<code>single</code>, sinon les sorties sont<code>double</code>. 

| Nom | Syntaxe | Remarques | 
| --- | --- | --- | 
| gallery(3) | <code>A = gallery(3)</code> | Exemple classique 3×3 mal conditionné ; illustre la sensibilité des valeurs propres. | 
| gallery(5) | <code>A = gallery(5)</code> | Exemple 5×5 avec polynôme caractéristique exact \\(\\lambda^5=0\\) ; numériquement les valeurs propres sont petites et sensibles. | 
| circul | <code>A = gallery("circul", v)</code> | Matrice circulante : les lignes sont des décalages cycliques de<code>v</code>; les valeurs propres sont la DFT de<code>v</code>. | 
| grcar | <code>A = gallery("grcar", n, k)</code> | Toeplitz avec -1 sur la sous-diagonale et des 1 sur la diagonale principale et les k sur-diagonales ; utile pour des exemples de pseudospectres. | 
| minij | <code>A = gallery("minij", n)</code> | Matrice symétrique définie positive avec<code>A(i,j)=min(i,j)</code>; l'inverse est tridiagonal (structure de différence seconde). | 
| dramadah | <code>A = gallery("dramadah", n, k)</code> | Familles binaires (0/1) ; certains k donnent des matrices de Toeplitz unimodulaires dont l'inverse est entière. | 
| house | <code>[v,beta] = gallery("house", x)</code> | Retourne le vecteur de Householder<code>v</code>et le scalaire<code>beta</code>tels que<code>H=I-beta*v*v'
            </code> reflète <code>x</code> sur un multiple de <code>e1</code>. | 
| binomial | <code>A = gallery("binomial", n)</code> | Matrice binomiale avec <code>A^2 = 2^(n-1) I</code> ; la matrice mise à l'échelle est involutive. | 
| cauchy | <code>A = gallery("cauchy", x, y)</code> | Matrice de Cauchy<code>A(i,j)=1/(x(i)+y(j))</code>; des formules explicites pour le déterminant et l'inverse existent. | 
| ris | <code>A = gallery("ris", n)</code> | Matrice Hankel symétrique avec éléments 0.5/(n-i-j+1.5) ; les valeurs propres se regroupent près de ±π/2. | 
| chebspec | <code>A = gallery("chebspec", n, k)</code> | Matrice de différenciation spectrale de Chebyshev. <code>k</code>=0 donne une forme nilpotente ; <code>k</code>=1 donne un opérateur non singulier, bien conditionné. | 
| wilk | <code>gallery("wilk", m)</code> | Exemples de Wilkinson (petits systèmes triangulaires, W21+, etc.) illustrant des problèmes de stabilité. | 
| sampling | <code>A = gallery("sampling", x)</code> | Matrice non symétrique avec valeurs propres entières 0..n-1 ; les vecteurs propres sont généralement mal conditionnés. | 
| ipjfact | <code>[A,beta] = gallery("ipjfact", n, k)</code> | Matrice Hankel construite à partir de factorielles (ou de leurs réciproques) ; déterminant et inverse connus en forme fermée. | 
| moler | <code>A = gallery("moler", n, alpha)</code> | Exemple symétrique définie positive produit comme <code>U'*U</code>; peut présenter une petite valeur propre isolée. | 
| lotkin | <code>A = gallery("lotkin", n)</code> | Matrice de type Hilbert avec première ligne de 1 ; extrêmement mal conditionnée, l'inverse a une structure entière. | 
| chebvand | <code>A = gallery("chebvand", x)</code> | Matrice de type Vandermonde de Chebyshev : <code>A(i,j)=T_{i-1}(x(j))</code>, utile pour l'interpolation spectrale et les bases polynomiales. | 
| lehmer | <code>A = gallery("lehmer", n)</code> | Matrice de Lehmer avec entrées i/j pour i ≤ j ; symétrique définie positive et mal conditionnée. | 



## 📚 Bibliographie

Voir les références dans Higham, N. J., Accuracy and Stability of Numerical Algorithms pour la galerie des matrices de test.

## 💡 Exemples

Exemple simple 3×3 mal conditionné

```matlab
A = gallery(3)
```
Créer et afficher une matrice circulante

```matlab
C = gallery("circul",120);
imagesc(C);
axis square;
colorbar;
```


## 🔗 Voir aussi

[hankel](../../elementary_functions/6_matrix_generation/hankel.md), [hilb](../../elementary_functions/6_matrix_generation/hilb.md), [magic](../../elementary_functions/6_matrix_generation/magic.md), [pascal](../../elementary_functions/6_matrix_generation/pascal.md), [toeplitz](../../elementary_functions/6_matrix_generation/toeplitz.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.15.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
