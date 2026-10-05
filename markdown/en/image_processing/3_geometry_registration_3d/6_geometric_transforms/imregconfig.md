# imregconfig

Create default image registration optimizer and metric structures.

## 📝 Syntax

- [optimizer, metric] = imregconfig(modality)

## 📥 Input argument

- modality - Registration modality name: monomodal or multimodal.

## 📤 Output argument

- optimizer - Structure with simple search parameters for imregtform, including AngleSearch, ScaleSearch and ShearSearch.
- metric - Metric structure. Monomodal uses MeanSquares. Multimodal uses Correlation.

## 📄 Description


imregconfig returns lightweight optimizer and metric structures for image registration. The structures are plain Nelson values and can be edited before calling imregtform or imregister.

## 💡 Example

Create default registration settings

```matlab
[optimizer, metric] = imregconfig('monomodal');
optimizer.AngleSearch = 10;
optimizer.ShearSearch = 0.1;
```


## 🔗 See also

[imregtform](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imregtform.md), [imregister](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imregister.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
