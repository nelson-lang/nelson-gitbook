#import "nelson_help.typ": *

= Categorical arrays

The Categorical module provides arrays whose elements belong to a fixed set of text categories.

== Functions

- #nlink(<categorical:addcats>)[addcats]: Add categories to a categorical array.
- #nlink(<categorical:categorical>)[categorical]: Create a categorical array.
- #nlink(<categorical:categories>)[categories]: List categories of a categorical array.
- #nlink(<categorical:combinations>)[combinations]: Generate all combinations of categorical values.
- #nlink(<categorical:countcats>)[countcats]: Count categorical elements by category.
- #nlink(<categorical:histcounts>)[histcounts]: Count categorical values for histogram-style summaries.
- #nlink(<categorical:iscategorical>)[iscategorical]: Determine whether an array is categorical.
- #nlink(<categorical:iscategory>)[iscategory]: Determine whether names are categories.
- #nlink(<categorical:isordinal>)[isordinal]: Determine whether a categorical array is ordinal.
- #nlink(<categorical:isprotected>)[isprotected]: Determine whether a categorical array is protected.
- #nlink(<categorical:isundefined>)[isundefined]: Find undefined categorical elements.
- #nlink(<categorical:mergecats>)[mergecats]: Merge categories in a categorical array.
- #nlink(<categorical:removecats>)[removecats]: Remove categories from a categorical array.
- #nlink(<categorical:renamecats>)[renamecats]: Rename categories in a categorical array.
- #nlink(<categorical:reordercats>)[reordercats]: Reorder categories in a categorical array.
- #nlink(<categorical:setcats>)[setcats]: Set the category list of a categorical array.


#nested[
#pagebreak(weak: true)
#include "addcats.typ"
#pagebreak(weak: true)
#include "categorical.typ"
#pagebreak(weak: true)
#include "categories.typ"
#pagebreak(weak: true)
#include "combinations.typ"
#pagebreak(weak: true)
#include "countcats.typ"
#pagebreak(weak: true)
#include "histcounts.typ"
#pagebreak(weak: true)
#include "iscategorical.typ"
#pagebreak(weak: true)
#include "iscategory.typ"
#pagebreak(weak: true)
#include "isordinal.typ"
#pagebreak(weak: true)
#include "isprotected.typ"
#pagebreak(weak: true)
#include "isundefined.typ"
#pagebreak(weak: true)
#include "mergecats.typ"
#pagebreak(weak: true)
#include "removecats.typ"
#pagebreak(weak: true)
#include "renamecats.typ"
#pagebreak(weak: true)
#include "reordercats.typ"
#pagebreak(weak: true)
#include "setcats.typ"
]
