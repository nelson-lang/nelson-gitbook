# Graphics functions

The graphics module provides functions for creating, customizing, and managing plots, figures, colormaps, and graphical objects.

It includes 2-D and 3-D visualization, user interaction tools (zoom, pan, rotate), and utilities for working with colors, legends, axes, and text annotations.

## 2-D and 3-D Plots

Functions grouped by visualization type, including lines, distributions, discrete data, polar plots, contours, vector fields, surfaces, volumes, polygons, and animation.

### Line Plots

Functions for line plots, function plots, and plots with error bars.

#### Functions

- [errorbar](1_plots/1_line_plots/errorbar.md) - Plot data with error bars.
- [fplot](1_plots/1_line_plots/fplot.md) - Plot an expression or parametric function.
- [fplot3](1_plots/1_line_plots/fplot3.md) - Plot a 3-D parametric curve from function handles.
- [line](1_plots/1_line_plots/line.md) - Create primitive line.
- [loglog](1_plots/1_line_plots/loglog.md) - Log-log scale plot.
- [plot](1_plots/1_line_plots/plot.md) - Linear 2-D plot.
- [plot3](1_plots/1_line_plots/plot3.md) - 3-D line plot.
- [semilogx](1_plots/1_line_plots/semilogx.md) - Semilog plot (x-axis has log scale).
- [semilogy](1_plots/1_line_plots/semilogy.md) - Semilog plot (y-axis has log scale).
- [xline](1_plots/1_line_plots/xline.md) - Vertical constant line.
- [yline](1_plots/1_line_plots/yline.md) - Horizontal constant line.

### Polar Plots

Functions for creating and configuring polar plots.

#### Functions

- [fpolarplot](1_plots/2_polar_plots/fpolarplot.md) - Plot a function in polar coordinates.
- [polaraxes](1_plots/2_polar_plots/polaraxes.md) - Create axes configured for polar plots.
- [polarbubblechart](1_plots/2_polar_plots/polarbubblechart.md) - Display bubble chart in polar coordinates.
- [polarhistogram](1_plots/2_polar_plots/polarhistogram.md) - Display angle data as a polar histogram.
- [polarplot](1_plots/2_polar_plots/polarplot.md) - Plot data in polar coordinates.
- [polarscatter](1_plots/2_polar_plots/polarscatter.md) - Display scatter points in polar coordinates.

### Contour Plots

Functions for contour computation, contour plots, and contour labels.

#### Functions

- [clabel](1_plots/3_contour_plots/clabel.md) - Contour labeling
- [contour](1_plots/3_contour_plots/contour.md) - Contour plot of matrix
- [contour3](1_plots/3_contour_plots/contour3.md) - Contour 3D plot of matrix
- [contourc](1_plots/3_contour_plots/contourc.md) - Contour matrix computation
- [contourf](1_plots/3_contour_plots/contourf.md) - Filled contour plot of matrix
- [fcontour](1_plots/3_contour_plots/fcontour.md) - Plot contours from a function of two variables.

### Data Distribution Plots

Functions for histograms, scatter plots, distribution charts, and data summary visualizations.

#### Functions

- [binscatter](1_plots/4_data_distribution_plots/binscatter.md) - Display binned scatter plot.
- [boxchart](1_plots/4_data_distribution_plots/boxchart.md) - Display box chart for grouped numeric data.
- [boxplot](1_plots/4_data_distribution_plots/boxplot.md) - Display box plots for numeric data.
- [bubblechart](1_plots/4_data_distribution_plots/bubblechart.md) - Display bubble chart.
- [bubblechart3](1_plots/4_data_distribution_plots/bubblechart3.md) - Display 3-D bubble chart.
- [bubblecloud](1_plots/4_data_distribution_plots/bubblecloud.md) - Display labeled bubbles packed in a cloud layout.
- [bubblelegend](1_plots/4_data_distribution_plots/bubblelegend.md) - Add a bubble size legend.
- [bubblelim](1_plots/4_data_distribution_plots/bubblelim.md) - Set or query bubble size data limits.
- [bubblesize](1_plots/4_data_distribution_plots/bubblesize.md) - Set or query rendered bubble diameter range.
- [heatmap](1_plots/4_data_distribution_plots/heatmap.md) - Create a heatmap chart from a numeric matrix or table.
- [hist](1_plots/4_data_distribution_plots/hist.md) - Histogram plot.
- [histogram](1_plots/4_data_distribution_plots/histogram.md) - Create histogram plot.
- [histogram2](1_plots/4_data_distribution_plots/histogram2.md) - Create bivariate histogram plot.
- [parallelplot](1_plots/4_data_distribution_plots/parallelplot.md) - Display parallel coordinates plot.
- [plotmatrix](1_plots/4_data_distribution_plots/plotmatrix.md) - Display a matrix of pairwise plots.
- [raincloudplot](1_plots/4_data_distribution_plots/raincloudplot.md) - Visualize grouped numeric data by using rain cloud plots.
- [scatter](1_plots/4_data_distribution_plots/scatter.md) - Scatter plot.
- [scatter3](1_plots/4_data_distribution_plots/scatter3.md) - 3D Scatter plot.
- [scatterhistogram](1_plots/4_data_distribution_plots/scatterhistogram.md) - Display a scatter plot with marginal histograms.
- [spy](1_plots/4_data_distribution_plots/spy.md) - Visualize sparsity pattern of matrix.
- [stackedplot](1_plots/4_data_distribution_plots/stackedplot.md) - Plot variables in stacked axes.
- [swarmchart](1_plots/4_data_distribution_plots/swarmchart.md) - Display a 2-D swarm chart.
- [swarmchart3](1_plots/4_data_distribution_plots/swarmchart3.md) - Display a 3-D swarm chart.
- [violinplot](1_plots/4_data_distribution_plots/violinplot.md) - Display distributions as violin shapes.
- [wordcloud](1_plots/4_data_distribution_plots/wordcloud.md) - Display words with sizes proportional to weights.

### Vector Fields

Functions for vector fields and stream visualizations.

#### Functions

- [compass](1_plots/5_vector_fields/compass.md) - Display arrows from the origin on a polar grid.
- [compassplot](1_plots/5_vector_fields/compassplot.md) - Display vectors from the origin in polar coordinates.
- [coneplot](1_plots/5_vector_fields/coneplot.md) - Display 3-D vector directions with cone-style arrows.
- [feather](1_plots/5_vector_fields/feather.md) - Display vectors from a baseline.
- [quiver](1_plots/5_vector_fields/quiver.md) - 2-D vector field plot.
- [quiver3](1_plots/5_vector_fields/quiver3.md) - 3-D vector field plot.
- [stream2](1_plots/5_vector_fields/stream2.md) - Compute 2-D streamline vertices from vector field data.
- [stream3](1_plots/5_vector_fields/stream3.md) - Compute 3-D streamline vertices from vector field data.
- [streamline](1_plots/5_vector_fields/streamline.md) - Display streamlines from vector field data.
- [streamparticles](1_plots/5_vector_fields/streamparticles.md) - Display particle markers along stream paths.
- [streamribbon](1_plots/5_vector_fields/streamribbon.md) - Display stream paths with ribbon-like line styling.
- [streamslice](1_plots/5_vector_fields/streamslice.md) - Display vector field direction on a slice or plane.
- [streamtube](1_plots/5_vector_fields/streamtube.md) - Display stream paths with tube-like line styling.

### Discrete Data Plots

Functions for bar charts, stem plots, pie charts, and other discrete data displays.

#### Functions

- [bar](1_plots/6_discrete_data_plots/bar.md) - Bar graph.
- [bar3](1_plots/6_discrete_data_plots/bar3.md) - Display a 3-D vertical bar chart.
- [bar3h](1_plots/6_discrete_data_plots/bar3h.md) - Display a 3-D horizontal bar chart.
- [barh](1_plots/6_discrete_data_plots/barh.md) - Horizontal bar graph.
- [donutchart](1_plots/6_discrete_data_plots/donutchart.md) - Donut chart object.
- [pareto](1_plots/6_discrete_data_plots/pareto.md) - Display Pareto chart.
- [pie](1_plots/6_discrete_data_plots/pie.md) - Legacy pie chart.
- [piechart](1_plots/6_discrete_data_plots/piechart.md) - Pie chart object.
- [stairs](1_plots/6_discrete_data_plots/stairs.md) - Stairstep graph.
- [stem](1_plots/6_discrete_data_plots/stem.md) - Plot discrete sequence data.
- [stem3](1_plots/6_discrete_data_plots/stem3.md) - Display 3-D stem plot.

### Surfaces, Volumes, and Polygons

Functions for surfaces, meshes, volumes, filled areas, and polygon graphics.

#### Functions

- [area](1_plots/7_surfaces_volumes_polygons/area.md) - Create area plots.
- [contourslice](1_plots/7_surfaces_volumes_polygons/contourslice.md) - Display contour lines on slices through volume data.
- [cylinder](1_plots/7_surfaces_volumes_polygons/cylinder.md) - Create cylinder.
- [fill](1_plots/7_surfaces_volumes_polygons/fill.md) - Create filled 2-D patches.
- [fill3](1_plots/7_surfaces_volumes_polygons/fill3.md) - Create filled 3-D patches.
- [fimplicit](1_plots/7_surfaces_volumes_polygons/fimplicit.md) - Plot an implicit function curve.
- [fimplicit3](1_plots/7_surfaces_volumes_polygons/fimplicit3.md) - Plot an implicit 3-D function surface approximation.
- [fmesh](1_plots/7_surfaces_volumes_polygons/fmesh.md) - Plot a mesh from a function of two variables.
- [fsurf](1_plots/7_surfaces_volumes_polygons/fsurf.md) - Plot a function surface.
- [isonormals](1_plots/7_surfaces_volumes_polygons/isonormals.md) - Compute normals of isosurface vertices.
- [isosurface](1_plots/7_surfaces_volumes_polygons/isosurface.md) - Extract isosurface data from volume data.
- [mesh](1_plots/7_surfaces_volumes_polygons/mesh.md) - Mesh surface plot.
- [meshc](1_plots/7_surfaces_volumes_polygons/meshc.md) - Display a mesh with contour lines below it.
- [meshz](1_plots/7_surfaces_volumes_polygons/meshz.md) - Mesh surface plot with curtain.
- [patch](1_plots/7_surfaces_volumes_polygons/patch.md) - Create patches of colored polygons
- [pcolor](1_plots/7_surfaces_volumes_polygons/pcolor.md) - Pseudocolor plot.
- [rectangle](1_plots/7_surfaces_volumes_polygons/rectangle.md) - Create a rectangle with sharp, rounded or curved corners
- [ribbon](1_plots/7_surfaces_volumes_polygons/ribbon.md) - Ribbon plot.
- [shrinkfaces](1_plots/7_surfaces_volumes_polygons/shrinkfaces.md) - Reduce patch face size.
- [slice](1_plots/7_surfaces_volumes_polygons/slice.md) - Display orthogonal slices through volume data.
- [smooth3](1_plots/7_surfaces_volumes_polygons/smooth3.md) - Smooth 3-D data.
- [sphere](1_plots/7_surfaces_volumes_polygons/sphere.md) - Create sphere.
- [surf](1_plots/7_surfaces_volumes_polygons/surf.md) - surface plot.
- [surface](1_plots/7_surfaces_volumes_polygons/surface.md) - Primitive surface plot.
- [surfc](1_plots/7_surfaces_volumes_polygons/surfc.md) - Display a surface with contour lines below it.
- [surfl](1_plots/7_surfaces_volumes_polygons/surfl.md) - Display a lighted surface.
- [surfnorm](1_plots/7_surfaces_volumes_polygons/surfnorm.md) - Compute or display surface normal vectors.
- [triplot](1_plots/7_surfaces_volumes_polygons/triplot.md) - 2-D triangular plot
- [trisurf](1_plots/7_surfaces_volumes_polygons/trisurf.md) - Triangular surface plot
- [waterfall](1_plots/7_surfaces_volumes_polygons/waterfall.md) - waterfall plot.

### Animation

Functions for animated plots and dynamic point updates.

#### Functions

- [addpoints](1_plots/8_animation/addpoints.md) - Add points to animated line.
- [animatedline](1_plots/8_animation/animatedline.md) - Create animated line.
- [clearpoints](1_plots/8_animation/clearpoints.md) - Clear points from animated line.
- [comet](1_plots/8_animation/comet.md) - Create 2-D comet plot.
- [comet3](1_plots/8_animation/comet3.md) - Create 3-D comet plot.
- [getpoints](1_plots/8_animation/getpoints.md) - Return points from animated line.

## Graphics Objects

Functions and reference pages for graphics object management, layout objects, user interface objects, and object properties.

### Graphics Object Management

Functions for creating, finding, querying, clearing, and closing graphics objects.

#### Functions

- [allchild](2_graphics_objects/1_object_management/allchild.md) - Return all direct children of graphics objects.
- [ancestor](2_graphics_objects/1_object_management/ancestor.md) - Ancestor of graphics object.
- [axes](2_graphics_objects/1_object_management/axes.md) - Create cartesian axes.
- [cla](2_graphics_objects/1_object_management/cla.md) - Clear axes.
- [clf](2_graphics_objects/1_object_management/clf.md) - Clear figure.
- [close](2_graphics_objects/1_object_management/close.md) - Close one or more figures
- [figure](2_graphics_objects/1_object_management/figure.md) - Creates an figure window.
- [findall](2_graphics_objects/1_object_management/findall.md) - Find graphics objects, including hidden handles.
- [findobj](2_graphics_objects/1_object_management/findobj.md) - Find graphics objects with specific properties.
- [gca](2_graphics_objects/1_object_management/gca.md) - get current axes graphics object.
- [gcf](2_graphics_objects/1_object_management/gcf.md) - get current figure graphics object.
- [groot](2_graphics_objects/1_object_management/groot.md) - graphic root object.
- [hggroup](2_graphics_objects/1_object_management/hggroup.md) - Create group object.
- [hold](2_graphics_objects/1_object_management/hold.md) - Retain current plot when adding new plots.
- [is2D](2_graphics_objects/1_object_management/is2D.md) - Checks if ax is a 2-D Polar or Cartesian axes.
- [isValidGraphicsProperty](2_graphics_objects/1_object_management/isValidGraphicsProperty.md) - Check property name is valid.
- [isgraphics](2_graphics_objects/1_object_management/isgraphics.md) - Check for graphics object.
- [ishold](2_graphics_objects/1_object_management/ishold.md) - Get current hold state.
- [newplot](2_graphics_objects/1_object_management/newplot.md) - Prepare to produce a new plot.

### Layout Objects

Functions for arranging multiple plots and working with tiled layouts.

#### Functions

- [nexttile](2_graphics_objects/2_layout_objects/nexttile.md) - Create axes in tiled chart layout.
- [subplot](2_graphics_objects/2_layout_objects/subplot.md) - Create axes in tiled positions.
- [tiledlayout](2_graphics_objects/2_layout_objects/tiledlayout.md) - Create tiled chart layout.
- [tilenum](2_graphics_objects/2_layout_objects/tilenum.md) - Get tile number from row-column indices or graphics object.
- [tilerowcol](2_graphics_objects/2_layout_objects/tilerowcol.md) - Get row and column indices from tile number or graphics object.

### User Interface Objects

Functions for user interface controls, menus, and context menus.

#### Functions

- [uiaxes](2_graphics_objects/3_ui_controls/uiaxes.md) - Create axes for App Designer style apps.
- [uibutton](2_graphics_objects/3_ui_controls/uibutton.md) - Create push button or state button component.
- [uibuttongroup](2_graphics_objects/3_ui_controls/uibuttongroup.md) - Create button group container.
- [uicheckbox](2_graphics_objects/3_ui_controls/uicheckbox.md) - Create check box component.
- [uicontextmenu](2_graphics_objects/3_ui_controls/uicontextmenu.md) - Create a context menu graphics object.
- [uicontrol](2_graphics_objects/3_ui_controls/uicontrol.md) - Create user interface component.
- [uidatepicker](2_graphics_objects/3_ui_controls/uidatepicker.md) - Create date picker component.
- [uidropdown](2_graphics_objects/3_ui_controls/uidropdown.md) - Create drop-down component.
- [uieditfield](2_graphics_objects/3_ui_controls/uieditfield.md) - Create text or numeric edit field.
- [uigauge](2_graphics_objects/3_ui_controls/uigauge.md) - Create gauge component (circular, linear, ninetydegree, semicircular).
- [uigridlayout](2_graphics_objects/3_ui_controls/uigridlayout.md) - Create grid layout manager.
- [uihtml](2_graphics_objects/3_ui_controls/uihtml.md) - Create an HTML UI component.
- [uiknob](2_graphics_objects/3_ui_controls/uiknob.md) - Create knob or discrete knob component.
- [uilabel](2_graphics_objects/3_ui_controls/uilabel.md) - Create label component.
- [uilamp](2_graphics_objects/3_ui_controls/uilamp.md) - Create lamp component.
- [uilistbox](2_graphics_objects/3_ui_controls/uilistbox.md) - Create list box component.
- [uimenu](2_graphics_objects/3_ui_controls/uimenu.md) - Create a menu or menu item graphics object.
- [uipanel](2_graphics_objects/3_ui_controls/uipanel.md) - Create panel container.
- [uiradiobutton](2_graphics_objects/3_ui_controls/uiradiobutton.md) - Create radio button in a button group.
- [uislider](2_graphics_objects/3_ui_controls/uislider.md) - Create slider or range slider component.
- [uispinner](2_graphics_objects/3_ui_controls/uispinner.md) - Create spinner component.
- [uiswitch](2_graphics_objects/3_ui_controls/uiswitch.md) - Create switch component (slider, rocker, toggle).
- [uitab](2_graphics_objects/3_ui_controls/uitab.md) - Create tab container.
- [uitabgroup](2_graphics_objects/3_ui_controls/uitabgroup.md) - Create tab group container.
- [uitable](2_graphics_objects/3_ui_controls/uitable.md) - Create table UI component (App Designer style).
- [uitextarea](2_graphics_objects/3_ui_controls/uitextarea.md) - Create text area component.
- [uitogglebutton](2_graphics_objects/3_ui_controls/uitogglebutton.md) - Create toggle button in a button group.
- [uitree](2_graphics_objects/3_ui_controls/uitree.md) - Create tree or check box tree component.
- [uitreenode](2_graphics_objects/3_ui_controls/uitreenode.md) - Create tree node.

### Graphics Object Properties

Reference pages for visible graphics object properties, supported value types, and property actions.

#### Functions

- [animatedline properties](2_graphics_objects/4_properties/nelson.graphics.animatedline.properties.md) - animatedline graphics object properties.
- [annotation arrow properties](2_graphics_objects/4_properties/nelson.graphics.annotation.arrow.properties.md) - arrow annotation graphics object properties.
- [annotation doublearrow properties](2_graphics_objects/4_properties/nelson.graphics.annotation.doublearrow.properties.md) - doublearrow annotation graphics object properties.
- [annotation ellipse properties](2_graphics_objects/4_properties/nelson.graphics.annotation.ellipse.properties.md) - ellipse annotation graphics object properties.
- [line annotation properties](2_graphics_objects/4_properties/nelson.graphics.annotation.line.properties.md) - line annotation graphics object properties.
- [annotation properties](2_graphics_objects/4_properties/nelson.graphics.annotation.properties.md) - Annotation property pages.
- [annotation rectangle properties](2_graphics_objects/4_properties/nelson.graphics.annotation.rectangle.properties.md) - rectangle annotation graphics object properties.
- [annotation textarrow properties](2_graphics_objects/4_properties/nelson.graphics.annotation.textarrow.properties.md) - textarrow annotation graphics object properties.
- [annotation textbox properties](2_graphics_objects/4_properties/nelson.graphics.annotation.textbox.properties.md) - textbox annotation graphics object properties.
- [area properties](2_graphics_objects/4_properties/nelson.graphics.area.properties.md) - area graphics object properties.
- [axes properties](2_graphics_objects/4_properties/nelson.graphics.axes.properties.md) - axes graphics object properties.
- [bar properties](2_graphics_objects/4_properties/nelson.graphics.bar.properties.md) - bar graphics object properties.
- [binscatter properties](2_graphics_objects/4_properties/nelson.graphics.binscatter.properties.md) - binscatter graphics object properties.
- [boxchart properties](2_graphics_objects/4_properties/nelson.graphics.boxchart.properties.md) - boxchart graphics object properties.
- [bubblechart properties](2_graphics_objects/4_properties/nelson.graphics.bubblechart.properties.md) - bubblechart graphics object properties.
- [bubblecloud properties](2_graphics_objects/4_properties/nelson.graphics.bubblecloud.properties.md) - bubblecloud graphics object properties.
- [bubblelegend properties](2_graphics_objects/4_properties/nelson.graphics.bubblelegend.properties.md) - bubblelegend graphics object properties.
- [colorbar properties](2_graphics_objects/4_properties/nelson.graphics.colorbar.properties.md) - colorbar graphics object properties.
- [compassplot properties](2_graphics_objects/4_properties/nelson.graphics.compassplot.properties.md) - compassplot graphics object properties.
- [contour properties](2_graphics_objects/4_properties/nelson.graphics.contour.properties.md) - contour graphics object properties.
- [donutchart properties](2_graphics_objects/4_properties/nelson.graphics.donutchart.properties.md) - donutchart graphics object properties.
- [errorbar properties](2_graphics_objects/4_properties/nelson.graphics.errorbar.properties.md) - errorbar graphics object properties.
- [figure properties](2_graphics_objects/4_properties/nelson.graphics.figure.properties.md) - figure graphics object properties.
- [functioncontour properties](2_graphics_objects/4_properties/nelson.graphics.functioncontour.properties.md) - functioncontour graphics object properties.
- [functionline properties](2_graphics_objects/4_properties/nelson.graphics.functionline.properties.md) - functionline graphics object properties.
- [functionsurface properties](2_graphics_objects/4_properties/nelson.graphics.functionsurface.properties.md) - functionsurface graphics object properties.
- [groot properties](2_graphics_objects/4_properties/nelson.graphics.groot.properties.md) - groot graphics object properties.
- [hggroup properties](2_graphics_objects/4_properties/nelson.graphics.hggroup.properties.md) - hggroup graphics object properties.
- [histogram properties](2_graphics_objects/4_properties/nelson.graphics.histogram.properties.md) - histogram graphics object properties.
- [histogram2 properties](2_graphics_objects/4_properties/nelson.graphics.histogram2.properties.md) - histogram2 graphics object properties.
- [image properties](2_graphics_objects/4_properties/nelson.graphics.image.properties.md) - image graphics object properties.
- [implicitfunctionline properties](2_graphics_objects/4_properties/nelson.graphics.implicitfunctionline.properties.md) - implicitfunctionline graphics object properties.
- [implicitfunctionsurface properties](2_graphics_objects/4_properties/nelson.graphics.implicitfunctionsurface.properties.md) - implicitfunctionsurface graphics object properties.
- [legend properties](2_graphics_objects/4_properties/nelson.graphics.legend.properties.md) - legend graphics object properties.
- [light properties](2_graphics_objects/4_properties/nelson.graphics.light.properties.md) - light graphics object properties.
- [line properties](2_graphics_objects/4_properties/nelson.graphics.line.properties.md) - line graphics object properties.
- [parallelplot properties](2_graphics_objects/4_properties/nelson.graphics.parallelplot.properties.md) - parallelplot graphics object properties.
- [parameterizedfunctionline properties](2_graphics_objects/4_properties/nelson.graphics.parameterizedfunctionline.properties.md) - parameterizedfunctionline graphics object properties.
- [patch properties](2_graphics_objects/4_properties/nelson.graphics.patch.properties.md) - patch graphics object properties.
- [piechart properties](2_graphics_objects/4_properties/nelson.graphics.piechart.properties.md) - piechart graphics object properties.
- [polaraxes properties](2_graphics_objects/4_properties/nelson.graphics.polaraxes.properties.md) - polaraxes graphics object properties.
- [graphics object properties](2_graphics_objects/4_properties/nelson.graphics.properties.md) - graphics object property reference.
- [quiver properties](2_graphics_objects/4_properties/nelson.graphics.quiver.properties.md) - quiver graphics object properties.
- [raincloudplot properties](2_graphics_objects/4_properties/nelson.graphics.raincloudplot.properties.md) - raincloudplot graphics object properties.
- [scatter properties](2_graphics_objects/4_properties/nelson.graphics.scatter.properties.md) - scatter graphics object properties.
- [scatterhistogram properties](2_graphics_objects/4_properties/nelson.graphics.scatterhistogram.properties.md) - scatterhistogram graphics object properties.
- [stackedplot properties](2_graphics_objects/4_properties/nelson.graphics.stackedplot.properties.md) - stackedplot graphics object properties.
- [stem properties](2_graphics_objects/4_properties/nelson.graphics.stem.properties.md) - stem graphics object properties.
- [surface properties](2_graphics_objects/4_properties/nelson.graphics.surface.properties.md) - surface graphics object properties.
- [text properties](2_graphics_objects/4_properties/nelson.graphics.text.properties.md) - text graphics object properties.
- [tiledlayout properties](2_graphics_objects/4_properties/nelson.graphics.tiledlayout.properties.md) - tiledlayout graphics object properties.
- [uicontextmenu properties](2_graphics_objects/4_properties/nelson.graphics.uicontextmenu.properties.md) - uicontextmenu graphics object properties.
- [uicontrol properties](2_graphics_objects/4_properties/nelson.graphics.uicontrol.properties.md) - uicontrol graphics object properties.
- [uimenu properties](2_graphics_objects/4_properties/nelson.graphics.uimenu.properties.md) - uimenu graphics object properties.
- [violinplot properties](2_graphics_objects/4_properties/nelson.graphics.violinplot.properties.md) - violinplot graphics object properties.
- [wordcloud properties](2_graphics_objects/4_properties/nelson.graphics.wordcloud.properties.md) - wordcloud graphics object properties.

## Labels and Styling

Functions for labels, annotations, axes appearance, colors, interaction, camera views, and lighting.

### Axes Appearance

Functions for axis limits, ticks, grids, boxes, and aspect ratios.

#### Functions

- [axis](3_labels_styling/1_axes_appearance/axis.md) - Set axis limits and aspect ratios.
- [box](3_labels_styling/1_axes_appearance/box.md) - Display or hide graphics object outline.
- [daspect](3_labels_styling/1_axes_appearance/daspect.md) - Control data unit length along each axis.
- [datetick](3_labels_styling/1_axes_appearance/datetick.md) - Date formatted tick labels.
- [grid](3_labels_styling/1_axes_appearance/grid.md) - Display or hide axes grid lines.
- [pbaspect](3_labels_styling/1_axes_appearance/pbaspect.md) - Control relative lengths of each axis in the plot box.
- [rlim](3_labels_styling/1_axes_appearance/rlim.md) - Set or get radial limits for polar axes.
- [rticklabels](3_labels_styling/1_axes_appearance/rticklabels.md) - Set or get radial tick labels for polar axes.
- [rticks](3_labels_styling/1_axes_appearance/rticks.md) - Set or get radial tick values for polar axes.
- [thetalim](3_labels_styling/1_axes_appearance/thetalim.md) - Set or get angular limits for polar axes.
- [thetaticklabels](3_labels_styling/1_axes_appearance/thetaticklabels.md) - Set or get angular tick labels for polar axes.
- [thetaticks](3_labels_styling/1_axes_appearance/thetaticks.md) - Set or get angular tick values for polar axes.
- [xlim](3_labels_styling/1_axes_appearance/xlim.md) - set or get x-axis limits.
- [xtickangle](3_labels_styling/1_axes_appearance/xtickangle.md) - Rotate x-axis tick labels.
- [xtickformat](3_labels_styling/1_axes_appearance/xtickformat.md) - Set or get the x-axis tick label format.
- [xticklabels](3_labels_styling/1_axes_appearance/xticklabels.md) - Set or get x-axis tick labels.
- [xticks](3_labels_styling/1_axes_appearance/xticks.md) - Set or get x-axis tick values.
- [ylim](3_labels_styling/1_axes_appearance/ylim.md) - set or get y-axis limits.
- [ytickangle](3_labels_styling/1_axes_appearance/ytickangle.md) - Rotate y-axis tick labels.
- [ytickformat](3_labels_styling/1_axes_appearance/ytickformat.md) - Set or get the y-axis tick label format.
- [yticklabels](3_labels_styling/1_axes_appearance/yticklabels.md) - Set or query y-axis tick labels.
- [yticks](3_labels_styling/1_axes_appearance/yticks.md) - Set or get y-axis tick values.
- [yyaxis](3_labels_styling/1_axes_appearance/yyaxis.md) - Create or select an axes with two y-axes.
- [zlim](3_labels_styling/1_axes_appearance/zlim.md) - set or get z-axis limits.
- [ztickangle](3_labels_styling/1_axes_appearance/ztickangle.md) - Rotate z-axis tick labels.
- [ztickformat](3_labels_styling/1_axes_appearance/ztickformat.md) - Set or get the z-axis tick label format.
- [zticklabels](3_labels_styling/1_axes_appearance/zticklabels.md) - Set or get z-axis tick labels.
- [zticks](3_labels_styling/1_axes_appearance/zticks.md) - Set or get z-axis tick values.

### Color and Styling

Functions for colors, colormaps, color limits, color order, and rendering style.

#### Colormaps

Functions for creating, selecting, and listing colormaps.

##### Functions

- [abyss](3_labels_styling/2_color_styling/colormaps/abyss.md) - Abyss colormap array.
- [autumn](3_labels_styling/2_color_styling/colormaps/autumn.md) - Autumn colormap array.
- [bone](3_labels_styling/2_color_styling/colormaps/bone.md) - Bone colormap array.
- [colorcube](3_labels_styling/2_color_styling/colormaps/colorcube.md) - Enhanced RGB color cube colormap array.
- [colormap](3_labels_styling/2_color_styling/colormaps/colormap.md) - View and set current colormap.
- [colormaplist](3_labels_styling/2_color_styling/colormaps/colormaplist.md) - Provide list of colormaps.
- [cool](3_labels_styling/2_color_styling/colormaps/cool.md) - Cool colormap array.
- [copper](3_labels_styling/2_color_styling/colormaps/copper.md) - Copper colormap array.
- [flag](3_labels_styling/2_color_styling/colormaps/flag.md) - Flag colormap array.
- [gray](3_labels_styling/2_color_styling/colormaps/gray.md) - Gray colormap array.
- [hot](3_labels_styling/2_color_styling/colormaps/hot.md) - Hot colormap array.
- [hsv](3_labels_styling/2_color_styling/colormaps/hsv.md) - Hue-saturation-value colormap array.
- [jet](3_labels_styling/2_color_styling/colormaps/jet.md) - Jet colormap array.
- [lines](3_labels_styling/2_color_styling/colormaps/lines.md) - Line color order colormap array.
- [nebula](3_labels_styling/2_color_styling/colormaps/nebula.md) - Nebula colormap array.
- [parula](3_labels_styling/2_color_styling/colormaps/parula.md) - Parula colormap array.
- [pink](3_labels_styling/2_color_styling/colormaps/pink.md) - Pink colormap array.
- [prism](3_labels_styling/2_color_styling/colormaps/prism.md) - Prism colormap array.
- [sky](3_labels_styling/2_color_styling/colormaps/sky.md) - Sky colormap array.
- [spring](3_labels_styling/2_color_styling/colormaps/spring.md) - Spring colormap array.
- [summer](3_labels_styling/2_color_styling/colormaps/summer.md) - Summer colormap array.
- [turbo](3_labels_styling/2_color_styling/colormaps/turbo.md) - Turbo colormap array.
- [viridis](3_labels_styling/2_color_styling/colormaps/viridis.md) - Viridis colormap array.
- [white](3_labels_styling/2_color_styling/colormaps/white.md) - white colormap array.
- [winter](3_labels_styling/2_color_styling/colormaps/winter.md) - Winter colormap array.

#### Functions

- [clim](3_labels_styling/2_color_styling/clim.md) - Set colormap limits.
- [colororder](3_labels_styling/2_color_styling/colororder.md) - Set or query axes color order.
- [colstyle](3_labels_styling/2_color_styling/colstyle.md) - Parse color and style from string.
- [fliplightness](3_labels_styling/2_color_styling/fliplightness.md) - Darken light colors and lighten dark colors.
- [rgbplot](3_labels_styling/2_color_styling/rgbplot.md) - Plot colormap.
- [shading](3_labels_styling/2_color_styling/shading.md) - Set surface and patch shading mode.
- [theme](3_labels_styling/2_color_styling/theme.md) - Set the color theme of a figure.
- [validatecolor](3_labels_styling/2_color_styling/validatecolor.md) - Validate color values.

### Interactions, Camera Views, and Lighting

Functions for interactive graphics, callbacks, camera views, and lighting.

#### Functions

- [camlight](3_labels_styling/3_interactions_camera_lighting/camlight.md) - Create or position a light relative to the camera.
- [drawnow](3_labels_styling/3_interactions_camera_lighting/drawnow.md) - Update figures and process callbacks
- [Managing Callback Interruptions in Nelson](3_labels_styling/3_interactions_camera_lighting/graphical_callback.md) -
- [light](3_labels_styling/3_interactions_camera_lighting/light.md) - Create a light object in axes.
- [lightangle](3_labels_styling/3_interactions_camera_lighting/lightangle.md) - Create or position a light from angles.
- [lighting](3_labels_styling/3_interactions_camera_lighting/lighting.md) - Set surface and patch lighting mode.
- [material](3_labels_styling/3_interactions_camera_lighting/material.md) - Set surface and patch material properties.
- [pan](3_labels_styling/3_interactions_camera_lighting/pan.md) - Enable pan mode.
- [refresh](3_labels_styling/3_interactions_camera_lighting/refresh.md) - Redraw current figure.
- [rotate3d](3_labels_styling/3_interactions_camera_lighting/rotate3d.md) - Enable rotate mode.
- [view](3_labels_styling/3_interactions_camera_lighting/view.md) - Camera line of sigh.
- [waitfor](3_labels_styling/3_interactions_camera_lighting/waitfor.md) - Wait for condition.
- [waitforbuttonpress](3_labels_styling/3_interactions_camera_lighting/waitforbuttonpress.md) - Wait for click or key press.
- [zoom](3_labels_styling/3_interactions_camera_lighting/zoom.md) - Enable zoom mode.

### Labels and Annotations

Functions for titles, axis labels, legends, color bars, text, and annotations.

#### Functions

- [annotation](3_labels_styling/4_labels_annotations/annotation.md) - Create figure annotations.
- [colorbar](3_labels_styling/4_labels_annotations/colorbar.md) - Add a color scale to axes.
- [legend](3_labels_styling/4_labels_annotations/legend.md) - Add a legend to axes.
- [sgtitle](3_labels_styling/4_labels_annotations/sgtitle.md) - Add a shared title to a graphics layout.
- [subtitle](3_labels_styling/4_labels_annotations/subtitle.md) - Add subtitle.
- [text](3_labels_styling/4_labels_annotations/text.md) - creates text descriptions to data points.
- [title](3_labels_styling/4_labels_annotations/title.md) - Add title.
- [xlabel](3_labels_styling/4_labels_annotations/xlabel.md) - Label x-axis.
- [ylabel](3_labels_styling/4_labels_annotations/ylabel.md) - Label y-axis.
- [zlabel](3_labels_styling/4_labels_annotations/zlabel.md) - Label z-axis.

### Functions

- [caxis](3_labels_styling/caxis.md) - Query or set axes color limits.

## Images

Functions for displaying images, converting frames, and playing recorded frames.

### Functions

- [frame2im](4_images/frame2im.md) - Retrieve image data from a movie frame.
- [getframe](4_images/getframe.md) - Capture figure or axes as movie frame.
- [im2frame](4_images/im2frame.md) - Convert image to movie frame.
- [image](4_images/image.md) - Display image from array.
- [imagesc](4_images/imagesc.md) - Display image from array with scaled colors.
- [imshow](4_images/imshow.md) - Display image.
- [movie](4_images/movie.md) - Render recorded movie frames.

## Printing and Saving

Functions for opening and saving figure files.

### Functions

- [openfig](5_printing_saving/openfig.md) - Open a Nelson FIG file.
- [print](5_printing_saving/print.md) - Export a figure to an image or document file.
- [savefig](5_printing_saving/savefig.md) - Save figure to a Nelson FIG file.
