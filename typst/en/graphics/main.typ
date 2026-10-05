#import "nelson_help.typ": *

= Graphics functions

The graphics module provides functions for creating, customizing, and managing plots, figures, colormaps, and graphical objects.

 It includes 2-D and 3-D visualization, user interaction tools (zoom, pan, rotate), and utilities for working with colors, legends, axes, and text annotations.

== 2-D and 3-D Plots

Functions grouped by visualization type, including lines, distributions, discrete data, polar plots, contours, vector fields, surfaces, volumes, polygons, and animation.

=== Line Plots

Functions for line plots, function plots, and plots with error bars.

==== Functions

- #nlink(<graphics:1_plots.1_line_plots.errorbar>)[errorbar]: Plot data with error bars.
- #nlink(<graphics:1_plots.1_line_plots.fplot>)[fplot]: Plot an expression or parametric function.
- #nlink(<graphics:1_plots.1_line_plots.fplot3>)[fplot3]: Plot a 3-D parametric curve from function handles.
- #nlink(<graphics:1_plots.1_line_plots.line>)[line]: Create primitive line.
- #nlink(<graphics:1_plots.1_line_plots.loglog>)[loglog]: Log-log scale plot.
- #nlink(<graphics:1_plots.1_line_plots.plot>)[plot]: Linear 2-D plot.
- #nlink(<graphics:1_plots.1_line_plots.plot3>)[plot3]: 3-D line plot.
- #nlink(<graphics:1_plots.1_line_plots.semilogx>)[semilogx]: Semilog plot (x-axis has log scale).
- #nlink(<graphics:1_plots.1_line_plots.semilogy>)[semilogy]: Semilog plot (y-axis has log scale).
- #nlink(<graphics:1_plots.1_line_plots.xline>)[xline]: Vertical constant line.
- #nlink(<graphics:1_plots.1_line_plots.yline>)[yline]: Horizontal constant line.

=== Polar Plots

Functions for creating and configuring polar plots.

==== Functions

- #nlink(<graphics:1_plots.2_polar_plots.fpolarplot>)[fpolarplot]: Plot a function in polar coordinates.
- #nlink(<graphics:1_plots.2_polar_plots.polaraxes>)[polaraxes]: Create axes configured for polar plots.
- #nlink(<graphics:1_plots.2_polar_plots.polarbubblechart>)[polarbubblechart]: Display bubble chart in polar coordinates.
- #nlink(<graphics:1_plots.2_polar_plots.polarhistogram>)[polarhistogram]: Display angle data as a polar histogram.
- #nlink(<graphics:1_plots.2_polar_plots.polarplot>)[polarplot]: Plot data in polar coordinates.
- #nlink(<graphics:1_plots.2_polar_plots.polarscatter>)[polarscatter]: Display scatter points in polar coordinates.

=== Contour Plots

Functions for contour computation, contour plots, and contour labels.

==== Functions

- #nlink(<graphics:1_plots.3_contour_plots.clabel>)[clabel]: Contour labeling
- #nlink(<graphics:1_plots.3_contour_plots.contour>)[contour]: Contour plot of matrix
- #nlink(<graphics:1_plots.3_contour_plots.contour3>)[contour3]: Contour 3D plot of matrix
- #nlink(<graphics:1_plots.3_contour_plots.contourc>)[contourc]: Contour matrix computation
- #nlink(<graphics:1_plots.3_contour_plots.contourf>)[contourf]: Filled contour plot of matrix
- #nlink(<graphics:1_plots.3_contour_plots.fcontour>)[fcontour]: Plot contours from a function of two variables.

=== Data Distribution Plots

Functions for histograms, scatter plots, distribution charts, and data summary visualizations.

==== Functions

- #nlink(<graphics:1_plots.4_data_distribution_plots.binscatter>)[binscatter]: Display binned scatter plot.
- #nlink(<graphics:1_plots.4_data_distribution_plots.boxchart>)[boxchart]: Display box chart for grouped numeric data.
- #nlink(<graphics:1_plots.4_data_distribution_plots.boxplot>)[boxplot]: Display box plots for numeric data.
- #nlink(<graphics:1_plots.4_data_distribution_plots.bubblechart>)[bubblechart]: Display bubble chart.
- #nlink(<graphics:1_plots.4_data_distribution_plots.bubblechart3>)[bubblechart3]: Display 3-D bubble chart.
- #nlink(<graphics:1_plots.4_data_distribution_plots.bubblecloud>)[bubblecloud]: Display labeled bubbles packed in a cloud layout.
- #nlink(<graphics:1_plots.4_data_distribution_plots.bubblelegend>)[bubblelegend]: Add a bubble size legend.
- #nlink(<graphics:1_plots.4_data_distribution_plots.bubblelim>)[bubblelim]: Set or query bubble size data limits.
- #nlink(<graphics:1_plots.4_data_distribution_plots.bubblesize>)[bubblesize]: Set or query rendered bubble diameter range.
- #nlink(<graphics:1_plots.4_data_distribution_plots.heatmap>)[heatmap]: Create a heatmap chart from a numeric matrix or table.
- #nlink(<graphics:1_plots.4_data_distribution_plots.hist>)[hist]: Histogram plot.
- #nlink(<graphics:1_plots.4_data_distribution_plots.histogram>)[histogram]: Create histogram plot.
- #nlink(<graphics:1_plots.4_data_distribution_plots.histogram2>)[histogram2]: Create bivariate histogram plot.
- #nlink(<graphics:1_plots.4_data_distribution_plots.parallelplot>)[parallelplot]: Display parallel coordinates plot.
- #nlink(<graphics:1_plots.4_data_distribution_plots.plotmatrix>)[plotmatrix]: Display a matrix of pairwise plots.
- #nlink(<graphics:1_plots.4_data_distribution_plots.raincloudplot>)[raincloudplot]: Visualize grouped numeric data by using rain cloud plots.
- #nlink(<graphics:1_plots.4_data_distribution_plots.scatter>)[scatter]: Scatter plot.
- #nlink(<graphics:1_plots.4_data_distribution_plots.scatter3>)[scatter3]: 3D Scatter plot.
- #nlink(<graphics:1_plots.4_data_distribution_plots.scatterhistogram>)[scatterhistogram]: Display a scatter plot with marginal histograms.
- #nlink(<graphics:1_plots.4_data_distribution_plots.spy>)[spy]: Visualize sparsity pattern of matrix.
- #nlink(<graphics:1_plots.4_data_distribution_plots.stackedplot>)[stackedplot]: Plot variables in stacked axes.
- #nlink(<graphics:1_plots.4_data_distribution_plots.swarmchart>)[swarmchart]: Display a 2-D swarm chart.
- #nlink(<graphics:1_plots.4_data_distribution_plots.swarmchart3>)[swarmchart3]: Display a 3-D swarm chart.
- #nlink(<graphics:1_plots.4_data_distribution_plots.violinplot>)[violinplot]: Display distributions as violin shapes.
- #nlink(<graphics:1_plots.4_data_distribution_plots.wordcloud>)[wordcloud]: Display words with sizes proportional to weights.

=== Vector Fields

Functions for vector fields and stream visualizations.

==== Functions

- #nlink(<graphics:1_plots.5_vector_fields.compass>)[compass]: Display arrows from the origin on a polar grid.
- #nlink(<graphics:1_plots.5_vector_fields.compassplot>)[compassplot]: Display vectors from the origin in polar coordinates.
- #nlink(<graphics:1_plots.5_vector_fields.coneplot>)[coneplot]: Display 3-D vector directions with cone-style arrows.
- #nlink(<graphics:1_plots.5_vector_fields.feather>)[feather]: Display vectors from a baseline.
- #nlink(<graphics:1_plots.5_vector_fields.quiver>)[quiver]: 2-D vector field plot.
- #nlink(<graphics:1_plots.5_vector_fields.quiver3>)[quiver3]: 3-D vector field plot.
- #nlink(<graphics:1_plots.5_vector_fields.stream2>)[stream2]: Compute 2-D streamline vertices from vector field data.
- #nlink(<graphics:1_plots.5_vector_fields.stream3>)[stream3]: Compute 3-D streamline vertices from vector field data.
- #nlink(<graphics:1_plots.5_vector_fields.streamline>)[streamline]: Display streamlines from vector field data.
- #nlink(<graphics:1_plots.5_vector_fields.streamparticles>)[streamparticles]: Display particle markers along stream paths.
- #nlink(<graphics:1_plots.5_vector_fields.streamribbon>)[streamribbon]: Display stream paths with ribbon-like line styling.
- #nlink(<graphics:1_plots.5_vector_fields.streamslice>)[streamslice]: Display vector field direction on a slice or plane.
- #nlink(<graphics:1_plots.5_vector_fields.streamtube>)[streamtube]: Display stream paths with tube-like line styling.

=== Discrete Data Plots

Functions for bar charts, stem plots, pie charts, and other discrete data displays.

==== Functions

- #nlink(<graphics:1_plots.6_discrete_data_plots.bar>)[bar]: Bar graph.
- #nlink(<graphics:1_plots.6_discrete_data_plots.bar3>)[bar3]: Display a 3-D vertical bar chart.
- #nlink(<graphics:1_plots.6_discrete_data_plots.bar3h>)[bar3h]: Display a 3-D horizontal bar chart.
- #nlink(<graphics:1_plots.6_discrete_data_plots.barh>)[barh]: Horizontal bar graph.
- #nlink(<graphics:1_plots.6_discrete_data_plots.donutchart>)[donutchart]: Donut chart object.
- #nlink(<graphics:1_plots.6_discrete_data_plots.pareto>)[pareto]: Display Pareto chart.
- #nlink(<graphics:1_plots.6_discrete_data_plots.pie>)[pie]: Legacy pie chart.
- #nlink(<graphics:1_plots.6_discrete_data_plots.piechart>)[piechart]: Pie chart object.
- #nlink(<graphics:1_plots.6_discrete_data_plots.stairs>)[stairs]: Stairstep graph.
- #nlink(<graphics:1_plots.6_discrete_data_plots.stem>)[stem]: Plot discrete sequence data.
- #nlink(<graphics:1_plots.6_discrete_data_plots.stem3>)[stem3]: Display 3-D stem plot.

=== Surfaces, Volumes, and Polygons

Functions for surfaces, meshes, volumes, filled areas, and polygon graphics.

==== Functions

- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.area>)[area]: Create area plots.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.contourslice>)[contourslice]: Display contour lines on slices through volume data.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.cylinder>)[cylinder]: Create cylinder.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fill>)[fill]: Create filled 2-D patches.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fill3>)[fill3]: Create filled 3-D patches.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fimplicit>)[fimplicit]: Plot an implicit function curve.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fimplicit3>)[fimplicit3]: Plot an implicit 3-D function surface approximation.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fmesh>)[fmesh]: Plot a mesh from a function of two variables.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fsurf>)[fsurf]: Plot a function surface.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.isonormals>)[isonormals]: Compute normals of isosurface vertices.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.isosurface>)[isosurface]: Extract isosurface data from volume data.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.mesh>)[mesh]: Mesh surface plot.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.meshc>)[meshc]: Display a mesh with contour lines below it.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.meshz>)[meshz]: Mesh surface plot with curtain.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.patch>)[patch]: Create patches of colored polygons
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.pcolor>)[pcolor]: Pseudocolor plot.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.rectangle>)[rectangle]: Create a rectangle with sharp, rounded or curved corners
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.ribbon>)[ribbon]: Ribbon plot.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.shrinkfaces>)[shrinkfaces]: Reduce patch face size.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.slice>)[slice]: Display orthogonal slices through volume data.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.smooth3>)[smooth3]: Smooth 3-D data.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.sphere>)[sphere]: Create sphere.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf]: surface plot.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surface>)[surface]: Primitive surface plot.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surfc>)[surfc]: Display a surface with contour lines below it.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surfl>)[surfl]: Display a lighted surface.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surfnorm>)[surfnorm]: Compute or display surface normal vectors.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.triplot>)[triplot]: 2-D triangular plot
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.trisurf>)[trisurf]: Triangular surface plot
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.waterfall>)[waterfall]: waterfall plot.

=== Animation

Functions for animated plots and dynamic point updates.

==== Functions

- #nlink(<graphics:1_plots.8_animation.addpoints>)[addpoints]: Add points to animated line.
- #nlink(<graphics:1_plots.8_animation.animatedline>)[animatedline]: Create animated line.
- #nlink(<graphics:1_plots.8_animation.clearpoints>)[clearpoints]: Clear points from animated line.
- #nlink(<graphics:1_plots.8_animation.comet>)[comet]: Create 2-D comet plot.
- #nlink(<graphics:1_plots.8_animation.comet3>)[comet3]: Create 3-D comet plot.
- #nlink(<graphics:1_plots.8_animation.getpoints>)[getpoints]: Return points from animated line.

== Graphics Objects

Functions and reference pages for graphics object management, layout objects, user interface objects, and object properties.

=== Graphics Object Management

Functions for creating, finding, querying, clearing, and closing graphics objects.

==== Functions

- #nlink(<graphics:2_graphics_objects.1_object_management.allchild>)[allchild]: Return all direct children of graphics objects.
- #nlink(<graphics:2_graphics_objects.1_object_management.ancestor>)[ancestor]: Ancestor of graphics object.
- #nlink(<graphics:2_graphics_objects.1_object_management.axes>)[axes]: Create cartesian axes.
- #nlink(<graphics:2_graphics_objects.1_object_management.cla>)[cla]: Clear axes.
- #nlink(<graphics:2_graphics_objects.1_object_management.clf>)[clf]: Clear figure.
- #nlink(<graphics:2_graphics_objects.1_object_management.close>)[close]: Close one or more figures
- #nlink(<graphics:2_graphics_objects.1_object_management.figure>)[figure]: Creates an figure window.
- #nlink(<graphics:2_graphics_objects.1_object_management.findall>)[findall]: Find graphics objects, including hidden handles.
- #nlink(<graphics:2_graphics_objects.1_object_management.findobj>)[findobj]: Find graphics objects with specific properties.
- #nlink(<graphics:2_graphics_objects.1_object_management.gca>)[gca]: get current axes graphics object.
- #nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf]: get current figure graphics object.
- #nlink(<graphics:2_graphics_objects.1_object_management.groot>)[groot]: graphic root object.
- #nlink(<graphics:2_graphics_objects.1_object_management.hggroup>)[hggroup]: Create group object.
- #nlink(<graphics:2_graphics_objects.1_object_management.hold>)[hold]: Retain current plot when adding new plots.
- #nlink(<graphics:2_graphics_objects.1_object_management.is2D>)[is2D]: Checks if ax is a 2-D Polar or Cartesian axes.
- #nlink(<graphics:2_graphics_objects.1_object_management.isValidGraphicsProperty>)[isValidGraphicsProperty]: Check property name is valid.
- #nlink(<graphics:2_graphics_objects.1_object_management.isgraphics>)[isgraphics]: Check for graphics object.
- #nlink(<graphics:2_graphics_objects.1_object_management.ishold>)[ishold]: Get current hold state.
- #nlink(<graphics:2_graphics_objects.1_object_management.newplot>)[newplot]: Prepare to produce a new plot.

=== Layout Objects

Functions for arranging multiple plots and working with tiled layouts.

==== Functions

- #nlink(<graphics:2_graphics_objects.2_layout_objects.nexttile>)[nexttile]: Create axes in tiled chart layout.
- #nlink(<graphics:2_graphics_objects.2_layout_objects.subplot>)[subplot]: Create axes in tiled positions.
- #nlink(<graphics:2_graphics_objects.2_layout_objects.tiledlayout>)[tiledlayout]: Create tiled chart layout.
- #nlink(<graphics:2_graphics_objects.2_layout_objects.tilenum>)[tilenum]: Get tile number from row-column indices or graphics object.
- #nlink(<graphics:2_graphics_objects.2_layout_objects.tilerowcol>)[tilerowcol]: Get row and column indices from tile number or graphics object.

=== User Interface Objects

Functions for user interface controls, menus, and context menus.

==== Functions

- #nlink(<graphics:2_graphics_objects.3_ui_controls.uiaxes>)[uiaxes]: Create axes for App Designer style apps.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uibutton>)[uibutton]: Create push button or state button component.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uibuttongroup>)[uibuttongroup]: Create button group container.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uicheckbox>)[uicheckbox]: Create check box component.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uicontextmenu>)[uicontextmenu]: Create a context menu graphics object.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uicontrol>)[uicontrol]: Create user interface component.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uidatepicker>)[uidatepicker]: Create date picker component.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uidropdown>)[uidropdown]: Create drop-down component.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uieditfield>)[uieditfield]: Create text or numeric edit field.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uigauge>)[uigauge]: Create gauge component (circular, linear, ninetydegree, semicircular).
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uigridlayout>)[uigridlayout]: Create grid layout manager.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uihtml>)[uihtml]: Create an HTML UI component.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uiknob>)[uiknob]: Create knob or discrete knob component.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uilabel>)[uilabel]: Create label component.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uilamp>)[uilamp]: Create lamp component.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uilistbox>)[uilistbox]: Create list box component.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uimenu>)[uimenu]: Create a menu or menu item graphics object.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uipanel>)[uipanel]: Create panel container.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uiradiobutton>)[uiradiobutton]: Create radio button in a button group.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uislider>)[uislider]: Create slider or range slider component.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uispinner>)[uispinner]: Create spinner component.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uiswitch>)[uiswitch]: Create switch component (slider, rocker, toggle).
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uitab>)[uitab]: Create tab container.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uitabgroup>)[uitabgroup]: Create tab group container.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uitable>)[uitable]: Create table UI component (App Designer style).
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uitextarea>)[uitextarea]: Create text area component.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uitogglebutton>)[uitogglebutton]: Create toggle button in a button group.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uitree>)[uitree]: Create tree or check box tree component.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uitreenode>)[uitreenode]: Create tree node.

=== Graphics Object Properties

Reference pages for visible graphics object properties, supported value types, and property actions.

==== Functions

- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.animatedline.properties>)[animatedline properties]: animatedline graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.annotation.arrow.properties>)[annotation arrow properties]: arrow annotation graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.annotation.doublearrow.properties>)[annotation doublearrow properties]: doublearrow annotation graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.annotation.ellipse.properties>)[annotation ellipse properties]: ellipse annotation graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.annotation.line.properties>)[line annotation properties]: line annotation graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.annotation.properties>)[annotation properties]: Annotation property pages.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.annotation.rectangle.properties>)[annotation rectangle properties]: rectangle annotation graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.annotation.textarrow.properties>)[annotation textarrow properties]: textarrow annotation graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.annotation.textbox.properties>)[annotation textbox properties]: textbox annotation graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.area.properties>)[area properties]: area graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.axes.properties>)[axes properties]: axes graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.bar.properties>)[bar properties]: bar graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.binscatter.properties>)[binscatter properties]: binscatter graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.boxchart.properties>)[boxchart properties]: boxchart graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.bubblechart.properties>)[bubblechart properties]: bubblechart graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.bubblecloud.properties>)[bubblecloud properties]: bubblecloud graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.bubblelegend.properties>)[bubblelegend properties]: bubblelegend graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.colorbar.properties>)[colorbar properties]: colorbar graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.compassplot.properties>)[compassplot properties]: compassplot graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.contour.properties>)[contour properties]: contour graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.donutchart.properties>)[donutchart properties]: donutchart graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.errorbar.properties>)[errorbar properties]: errorbar graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.figure.properties>)[figure properties]: figure graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functioncontour.properties>)[functioncontour properties]: functioncontour graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functionline.properties>)[functionline properties]: functionline graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functionsurface.properties>)[functionsurface properties]: functionsurface graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.groot.properties>)[groot properties]: groot graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.hggroup.properties>)[hggroup properties]: hggroup graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.histogram.properties>)[histogram properties]: histogram graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.histogram2.properties>)[histogram2 properties]: histogram2 graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.image.properties>)[image properties]: image graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.implicitfunctionline.properties>)[implicitfunctionline properties]: implicitfunctionline graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.implicitfunctionsurface.properties>)[implicitfunctionsurface properties]: implicitfunctionsurface graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.legend.properties>)[legend properties]: legend graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.light.properties>)[light properties]: light graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.line.properties>)[line properties]: line graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.parallelplot.properties>)[parallelplot properties]: parallelplot graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.parameterizedfunctionline.properties>)[parameterizedfunctionline properties]: parameterizedfunctionline graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.patch.properties>)[patch properties]: patch graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.piechart.properties>)[piechart properties]: piechart graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.polaraxes.properties>)[polaraxes properties]: polaraxes graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.properties>)[graphics object properties]: graphics object property reference.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.quiver.properties>)[quiver properties]: quiver graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.raincloudplot.properties>)[raincloudplot properties]: raincloudplot graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.scatter.properties>)[scatter properties]: scatter graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.scatterhistogram.properties>)[scatterhistogram properties]: scatterhistogram graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.stackedplot.properties>)[stackedplot properties]: stackedplot graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.stem.properties>)[stem properties]: stem graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.surface.properties>)[surface properties]: surface graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.text.properties>)[text properties]: text graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.tiledlayout.properties>)[tiledlayout properties]: tiledlayout graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.uicontextmenu.properties>)[uicontextmenu properties]: uicontextmenu graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.uicontrol.properties>)[uicontrol properties]: uicontrol graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.uimenu.properties>)[uimenu properties]: uimenu graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.violinplot.properties>)[violinplot properties]: violinplot graphics object properties.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.wordcloud.properties>)[wordcloud properties]: wordcloud graphics object properties.

== Labels and Styling

Functions for labels, annotations, axes appearance, colors, interaction, camera views, and lighting.

=== Functions

- #nlink(<graphics:3_labels_styling.caxis>)[caxis]: Query or set axes color limits.

=== Axes Appearance

Functions for axis limits, ticks, grids, boxes, and aspect ratios.

==== Functions

- #nlink(<graphics:3_labels_styling.1_axes_appearance.axis>)[axis]: Set axis limits and aspect ratios.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.box>)[box]: Display or hide graphics object outline.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.daspect>)[daspect]: Control data unit length along each axis.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.datetick>)[datetick]: Date formatted tick labels.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.grid>)[grid]: Display or hide axes grid lines.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.pbaspect>)[pbaspect]: Control relative lengths of each axis in the plot box.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.rlim>)[rlim]: Set or get radial limits for polar axes.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.rticklabels>)[rticklabels]: Set or get radial tick labels for polar axes.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.rticks>)[rticks]: Set or get radial tick values for polar axes.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.thetalim>)[thetalim]: Set or get angular limits for polar axes.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.thetaticklabels>)[thetaticklabels]: Set or get angular tick labels for polar axes.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.thetaticks>)[thetaticks]: Set or get angular tick values for polar axes.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.xlim>)[xlim]: set or get x-axis limits.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.xtickangle>)[xtickangle]: Rotate x-axis tick labels.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.xtickformat>)[xtickformat]: Set or get the x-axis tick label format.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.xticklabels>)[xticklabels]: Set or get x-axis tick labels.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.xticks>)[xticks]: Set or get x-axis tick values.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.ylim>)[ylim]: set or get y-axis limits.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.ytickangle>)[ytickangle]: Rotate y-axis tick labels.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.ytickformat>)[ytickformat]: Set or get the y-axis tick label format.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.yticklabels>)[yticklabels]: Set or query y-axis tick labels.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.yticks>)[yticks]: Set or get y-axis tick values.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.yyaxis>)[yyaxis]: Create or select an axes with two y-axes.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.zlim>)[zlim]: set or get z-axis limits.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.ztickangle>)[ztickangle]: Rotate z-axis tick labels.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.ztickformat>)[ztickformat]: Set or get the z-axis tick label format.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.zticklabels>)[zticklabels]: Set or get z-axis tick labels.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.zticks>)[zticks]: Set or get z-axis tick values.

=== Color and Styling

Functions for colors, colormaps, color limits, color order, and rendering style.

==== Functions

- #nlink(<graphics:3_labels_styling.2_color_styling.clim>)[clim]: Set colormap limits.
- #nlink(<graphics:3_labels_styling.2_color_styling.colororder>)[colororder]: Set or query axes color order.
- #nlink(<graphics:3_labels_styling.2_color_styling.colstyle>)[colstyle]: Parse color and style from string.
- #nlink(<graphics:3_labels_styling.2_color_styling.fliplightness>)[fliplightness]: Darken light colors and lighten dark colors.
- #nlink(<graphics:3_labels_styling.2_color_styling.rgbplot>)[rgbplot]: Plot colormap.
- #nlink(<graphics:3_labels_styling.2_color_styling.shading>)[shading]: Set surface and patch shading mode.
- #nlink(<graphics:3_labels_styling.2_color_styling.theme>)[theme]: Set the color theme of a figure.
- #nlink(<graphics:3_labels_styling.2_color_styling.validatecolor>)[validatecolor]: Validate color values.

==== Colormaps

Functions for creating, selecting, and listing colormaps.

===== Functions

- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.abyss>)[abyss]: Abyss colormap array.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.autumn>)[autumn]: Autumn colormap array.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.bone>)[bone]: Bone colormap array.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colorcube>)[colorcube]: Enhanced RGB color cube colormap array.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap]: View and set current colormap.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormaplist>)[colormaplist]: Provide list of colormaps.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.cool>)[cool]: Cool colormap array.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.copper>)[copper]: Copper colormap array.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.flag>)[flag]: Flag colormap array.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.gray>)[gray]: Gray colormap array.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.hot>)[hot]: Hot colormap array.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.hsv>)[hsv]: Hue-saturation-value colormap array.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.jet>)[jet]: Jet colormap array.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.lines>)[lines]: Line color order colormap array.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.nebula>)[nebula]: Nebula colormap array.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.parula>)[parula]: Parula colormap array.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.pink>)[pink]: Pink colormap array.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.prism>)[prism]: Prism colormap array.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.sky>)[sky]: Sky colormap array.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.spring>)[spring]: Spring colormap array.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.summer>)[summer]: Summer colormap array.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.turbo>)[turbo]: Turbo colormap array.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.viridis>)[viridis]: Viridis colormap array.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.white>)[white]: white colormap array.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.winter>)[winter]: Winter colormap array.

=== Interactions, Camera Views, and Lighting

Functions for interactive graphics, callbacks, camera views, and lighting.

==== Functions

- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camlight>)[camlight]: Create or position a light relative to the camera.
- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.drawnow>)[drawnow]: Update figures and process callbacks
- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.graphical_callback>)[Managing Callback Interruptions in Nelson]: 
- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.light>)[light]: Create a light object in axes.
- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.lightangle>)[lightangle]: Create or position a light from angles.
- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.lighting>)[lighting]: Set surface and patch lighting mode.
- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.material>)[material]: Set surface and patch material properties.
- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.pan>)[pan]: Enable pan mode.
- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.refresh>)[refresh]: Redraw current figure.
- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.rotate3d>)[rotate3d]: Enable rotate mode.
- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.view>)[view]: Camera line of sigh.
- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.waitfor>)[waitfor]: Wait for condition.
- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.waitforbuttonpress>)[waitforbuttonpress]: Wait for click or key press.
- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.zoom>)[zoom]: Enable zoom mode.

=== Labels and Annotations

Functions for titles, axis labels, legends, color bars, text, and annotations.

==== Functions

- #nlink(<graphics:3_labels_styling.4_labels_annotations.annotation>)[annotation]: Create figure annotations.
- #nlink(<graphics:3_labels_styling.4_labels_annotations.colorbar>)[colorbar]: Add a color scale to axes.
- #nlink(<graphics:3_labels_styling.4_labels_annotations.legend>)[legend]: Add a legend to axes.
- #nlink(<graphics:3_labels_styling.4_labels_annotations.sgtitle>)[sgtitle]: Add a shared title to a graphics layout.
- #nlink(<graphics:3_labels_styling.4_labels_annotations.subtitle>)[subtitle]: Add subtitle.
- #nlink(<graphics:3_labels_styling.4_labels_annotations.text>)[text]: creates text descriptions to data points.
- #nlink(<graphics:3_labels_styling.4_labels_annotations.title>)[title]: Add title.
- #nlink(<graphics:3_labels_styling.4_labels_annotations.xlabel>)[xlabel]: Label x-axis.
- #nlink(<graphics:3_labels_styling.4_labels_annotations.ylabel>)[ylabel]: Label y-axis.
- #nlink(<graphics:3_labels_styling.4_labels_annotations.zlabel>)[zlabel]: Label z-axis.

== Images

Functions for displaying images, converting frames, and playing recorded frames.

=== Functions

- #nlink(<graphics:4_images.frame2im>)[frame2im]: Retrieve image data from a movie frame.
- #nlink(<graphics:4_images.getframe>)[getframe]: Capture figure or axes as movie frame.
- #nlink(<graphics:4_images.im2frame>)[im2frame]: Convert image to movie frame.
- #nlink(<graphics:4_images.image>)[image]: Display image from array.
- #nlink(<graphics:4_images.imagesc>)[imagesc]: Display image from array with scaled colors.
- #nlink(<graphics:4_images.imshow>)[imshow]: Display image.
- #nlink(<graphics:4_images.movie>)[movie]: Render recorded movie frames.

== Printing and Saving

Functions for opening and saving figure files.

=== Functions

- #nlink(<graphics:5_printing_saving.openfig>)[openfig]: Open a Nelson FIG file.
- #nlink(<graphics:5_printing_saving.print>)[print]: Export a figure to an image or document file.
- #nlink(<graphics:5_printing_saving.savefig>)[savefig]: Save figure to a Nelson FIG file.


#nested[
#pagebreak(weak: true)
#include "1_plots/1_line_plots/errorbar.typ"
#pagebreak(weak: true)
#include "1_plots/1_line_plots/fplot.typ"
#pagebreak(weak: true)
#include "1_plots/1_line_plots/fplot3.typ"
#pagebreak(weak: true)
#include "1_plots/1_line_plots/line.typ"
#pagebreak(weak: true)
#include "1_plots/1_line_plots/loglog.typ"
#pagebreak(weak: true)
#include "1_plots/1_line_plots/plot.typ"
#pagebreak(weak: true)
#include "1_plots/1_line_plots/plot3.typ"
#pagebreak(weak: true)
#include "1_plots/1_line_plots/semilogx.typ"
#pagebreak(weak: true)
#include "1_plots/1_line_plots/semilogy.typ"
#pagebreak(weak: true)
#include "1_plots/1_line_plots/xline.typ"
#pagebreak(weak: true)
#include "1_plots/1_line_plots/yline.typ"
#pagebreak(weak: true)
#include "1_plots/2_polar_plots/fpolarplot.typ"
#pagebreak(weak: true)
#include "1_plots/2_polar_plots/polaraxes.typ"
#pagebreak(weak: true)
#include "1_plots/2_polar_plots/polarbubblechart.typ"
#pagebreak(weak: true)
#include "1_plots/2_polar_plots/polarhistogram.typ"
#pagebreak(weak: true)
#include "1_plots/2_polar_plots/polarplot.typ"
#pagebreak(weak: true)
#include "1_plots/2_polar_plots/polarscatter.typ"
#pagebreak(weak: true)
#include "1_plots/3_contour_plots/clabel.typ"
#pagebreak(weak: true)
#include "1_plots/3_contour_plots/contour.typ"
#pagebreak(weak: true)
#include "1_plots/3_contour_plots/contour3.typ"
#pagebreak(weak: true)
#include "1_plots/3_contour_plots/contourc.typ"
#pagebreak(weak: true)
#include "1_plots/3_contour_plots/contourf.typ"
#pagebreak(weak: true)
#include "1_plots/3_contour_plots/fcontour.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/binscatter.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/boxchart.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/boxplot.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/bubblechart.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/bubblechart3.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/bubblecloud.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/bubblelegend.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/bubblelim.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/bubblesize.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/heatmap.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/hist.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/histogram.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/histogram2.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/parallelplot.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/plotmatrix.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/raincloudplot.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/scatter.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/scatter3.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/scatterhistogram.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/spy.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/stackedplot.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/swarmchart.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/swarmchart3.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/violinplot.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/wordcloud.typ"
#pagebreak(weak: true)
#include "1_plots/5_vector_fields/compass.typ"
#pagebreak(weak: true)
#include "1_plots/5_vector_fields/compassplot.typ"
#pagebreak(weak: true)
#include "1_plots/5_vector_fields/coneplot.typ"
#pagebreak(weak: true)
#include "1_plots/5_vector_fields/feather.typ"
#pagebreak(weak: true)
#include "1_plots/5_vector_fields/quiver.typ"
#pagebreak(weak: true)
#include "1_plots/5_vector_fields/quiver3.typ"
#pagebreak(weak: true)
#include "1_plots/5_vector_fields/stream2.typ"
#pagebreak(weak: true)
#include "1_plots/5_vector_fields/stream3.typ"
#pagebreak(weak: true)
#include "1_plots/5_vector_fields/streamline.typ"
#pagebreak(weak: true)
#include "1_plots/5_vector_fields/streamparticles.typ"
#pagebreak(weak: true)
#include "1_plots/5_vector_fields/streamribbon.typ"
#pagebreak(weak: true)
#include "1_plots/5_vector_fields/streamslice.typ"
#pagebreak(weak: true)
#include "1_plots/5_vector_fields/streamtube.typ"
#pagebreak(weak: true)
#include "1_plots/6_discrete_data_plots/bar.typ"
#pagebreak(weak: true)
#include "1_plots/6_discrete_data_plots/bar3.typ"
#pagebreak(weak: true)
#include "1_plots/6_discrete_data_plots/bar3h.typ"
#pagebreak(weak: true)
#include "1_plots/6_discrete_data_plots/barh.typ"
#pagebreak(weak: true)
#include "1_plots/6_discrete_data_plots/donutchart.typ"
#pagebreak(weak: true)
#include "1_plots/6_discrete_data_plots/pareto.typ"
#pagebreak(weak: true)
#include "1_plots/6_discrete_data_plots/pie.typ"
#pagebreak(weak: true)
#include "1_plots/6_discrete_data_plots/piechart.typ"
#pagebreak(weak: true)
#include "1_plots/6_discrete_data_plots/stairs.typ"
#pagebreak(weak: true)
#include "1_plots/6_discrete_data_plots/stem.typ"
#pagebreak(weak: true)
#include "1_plots/6_discrete_data_plots/stem3.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/area.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/contourslice.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/cylinder.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/fill.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/fill3.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/fimplicit.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/fimplicit3.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/fmesh.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/fsurf.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/isonormals.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/isosurface.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/mesh.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/meshc.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/meshz.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/patch.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/pcolor.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/rectangle.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/ribbon.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/shrinkfaces.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/slice.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/smooth3.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/sphere.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/surf.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/surface.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/surfc.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/surfl.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/surfnorm.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/triplot.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/trisurf.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/waterfall.typ"
#pagebreak(weak: true)
#include "1_plots/8_animation/addpoints.typ"
#pagebreak(weak: true)
#include "1_plots/8_animation/animatedline.typ"
#pagebreak(weak: true)
#include "1_plots/8_animation/clearpoints.typ"
#pagebreak(weak: true)
#include "1_plots/8_animation/comet.typ"
#pagebreak(weak: true)
#include "1_plots/8_animation/comet3.typ"
#pagebreak(weak: true)
#include "1_plots/8_animation/getpoints.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/allchild.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/ancestor.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/axes.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/cla.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/clf.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/close.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/figure.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/findall.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/findobj.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/gca.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/gcf.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/groot.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/hggroup.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/hold.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/is2D.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/isValidGraphicsProperty.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/isgraphics.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/ishold.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/newplot.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/2_layout_objects/nexttile.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/2_layout_objects/subplot.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/2_layout_objects/tiledlayout.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/2_layout_objects/tilenum.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/2_layout_objects/tilerowcol.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uiaxes.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uibutton.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uibuttongroup.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uicheckbox.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uicontextmenu.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uicontrol.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uidatepicker.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uidropdown.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uieditfield.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uigauge.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uigridlayout.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uihtml.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uiknob.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uilabel.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uilamp.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uilistbox.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uimenu.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uipanel.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uiradiobutton.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uislider.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uispinner.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uiswitch.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uitab.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uitabgroup.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uitable.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uitextarea.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uitogglebutton.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uitree.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uitreenode.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.animatedline.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.annotation.arrow.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.annotation.doublearrow.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.annotation.ellipse.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.annotation.line.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.annotation.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.annotation.rectangle.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.annotation.textarrow.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.annotation.textbox.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.area.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.axes.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.bar.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.binscatter.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.boxchart.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.bubblechart.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.bubblecloud.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.bubblelegend.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.colorbar.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.compassplot.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.contour.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.donutchart.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.errorbar.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.figure.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.functioncontour.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.functionline.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.functionsurface.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.groot.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.hggroup.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.histogram.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.histogram2.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.image.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.implicitfunctionline.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.implicitfunctionsurface.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.legend.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.light.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.line.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.parallelplot.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.parameterizedfunctionline.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.patch.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.piechart.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.polaraxes.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.quiver.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.raincloudplot.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.scatter.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.scatterhistogram.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.stackedplot.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.stem.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.surface.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.text.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.tiledlayout.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.uicontextmenu.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.uicontrol.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.uimenu.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.violinplot.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.wordcloud.properties.typ"
#pagebreak(weak: true)
#include "3_labels_styling/caxis.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/axis.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/box.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/daspect.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/datetick.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/grid.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/pbaspect.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/rlim.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/rticklabels.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/rticks.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/thetalim.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/thetaticklabels.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/thetaticks.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/xlim.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/xtickangle.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/xtickformat.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/xticklabels.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/xticks.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/ylim.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/ytickangle.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/ytickformat.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/yticklabels.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/yticks.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/yyaxis.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/zlim.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/ztickangle.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/ztickformat.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/zticklabels.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/zticks.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/clim.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colororder.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colstyle.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/fliplightness.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/rgbplot.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/shading.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/theme.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/validatecolor.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/abyss.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/autumn.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/bone.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/colorcube.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/colormap.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/colormaplist.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/cool.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/copper.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/flag.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/gray.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/hot.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/hsv.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/jet.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/lines.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/nebula.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/parula.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/pink.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/prism.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/sky.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/spring.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/summer.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/turbo.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/viridis.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/white.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/winter.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/camlight.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/drawnow.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/graphical_callback.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/light.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/lightangle.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/lighting.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/material.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/pan.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/refresh.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/rotate3d.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/view.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/waitfor.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/waitforbuttonpress.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/zoom.typ"
#pagebreak(weak: true)
#include "3_labels_styling/4_labels_annotations/annotation.typ"
#pagebreak(weak: true)
#include "3_labels_styling/4_labels_annotations/colorbar.typ"
#pagebreak(weak: true)
#include "3_labels_styling/4_labels_annotations/legend.typ"
#pagebreak(weak: true)
#include "3_labels_styling/4_labels_annotations/sgtitle.typ"
#pagebreak(weak: true)
#include "3_labels_styling/4_labels_annotations/subtitle.typ"
#pagebreak(weak: true)
#include "3_labels_styling/4_labels_annotations/text.typ"
#pagebreak(weak: true)
#include "3_labels_styling/4_labels_annotations/title.typ"
#pagebreak(weak: true)
#include "3_labels_styling/4_labels_annotations/xlabel.typ"
#pagebreak(weak: true)
#include "3_labels_styling/4_labels_annotations/ylabel.typ"
#pagebreak(weak: true)
#include "3_labels_styling/4_labels_annotations/zlabel.typ"
#pagebreak(weak: true)
#include "4_images/frame2im.typ"
#pagebreak(weak: true)
#include "4_images/getframe.typ"
#pagebreak(weak: true)
#include "4_images/im2frame.typ"
#pagebreak(weak: true)
#include "4_images/image.typ"
#pagebreak(weak: true)
#include "4_images/imagesc.typ"
#pagebreak(weak: true)
#include "4_images/imshow.typ"
#pagebreak(weak: true)
#include "4_images/movie.typ"
#pagebreak(weak: true)
#include "5_printing_saving/openfig.typ"
#pagebreak(weak: true)
#include "5_printing_saving/print.typ"
#pagebreak(weak: true)
#include "5_printing_saving/savefig.typ"
]
