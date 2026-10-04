# trisurf

Trace de surface triangulaire

## 📝 Syntaxe

- trisurf(T, x, y, z)
- trisurf(TO)
- trisurf(..., c)
- trisurf(..., Name, Value)
- h = trisurf(...)

## 📄 Description

<b>trisurf</b> trace une surface triangulaire 3-D depuis une matrice de connectivite ou un objet de triangulation.

## 💡 Exemples

Tracer les facettes de l'enveloppe convexe de points 3-D aleatoires.

```matlab
P = randn(30, 3);
T = convhulln(P);
trisurf(T, P(:, 1), P(:, 2), P(:, 3), 'FaceAlpha', 0.4)
```

<img src="trisurf_1.svg" align="middle"/>

```matlab

N = 5e3;
g = randn(3,N);
p = g./vecnorm(g);
k = convhull(p');
c = @(x) sparse(k(:,x)*[1,1,1],k,1,N,N);
t = c(1) | c(2) | c(3);
w = spdiags(-sum(t,2)+1, 0, double(t));
Y = rand(N,1);
A = speye(N);
smoothness  = 10;
x   = (A + smoothness *w' * w) \ Y;
p2 = p .* x';
trisurf(k,p2(1,:),p2(2,:),p2(3,:),'FaceC', 'w', 'EdgeC', 'none','AmbientS',0,'DiffuseS',0.6,'SpecularS',1);
light;
axis equal
axis off
```

## 🔗 Voir aussi

[patch](../../../graphics/1_plots/7_surfaces_volumes_polygons/patch.md), [surf](../../../graphics/1_plots/7_surfaces_volumes_polygons/surf.md), [triplot](../../../graphics/1_plots/7_surfaces_volumes_polygons/triplot.md), [triangulation](../../../geometry/triangulation.md).

## 🕔 Historique

| Version | 📄 Description    |
| ------- | ----------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
