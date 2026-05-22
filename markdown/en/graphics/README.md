# Graphics functions

The graphics module provides functions for creating, customizing, and managing plots, figures, colormaps, and graphical objects.

It includes 2-D and 3-D visualization, user interaction tools (zoom, pan, rotate), and utilities for working with colors, legends, axes, and text annotations.

## Colormap functions

functions for creating, customizing, and managing colormaps used in visualizations.

### Functions

- [abyss](colormap/abyss.md) - Abyss colormap array.
- [autumn](colormap/autumn.md) - Autumn colormap array.
- [bone](colormap/bone.md) - Bone colormap array.
- [colormap](colormap/colormap.md) - View and set current colormap.
- [colormaplist](colormap/colormaplist.md) - Provide list of colormaps.
- [cool](colormap/cool.md) - Cool colormap array.
- [copper](colormap/copper.md) - Copper colormap array.
- [gray](colormap/gray.md) - Gray colormap array.
- [hot](colormap/hot.md) - Hot colormap array.
- [jet](colormap/jet.md) - Jet colormap array.
- [nebula](colormap/nebula.md) - Nebula colormap array.
- [parula](colormap/parula.md) - Parula colormap array.
- [pink](colormap/pink.md) - Pink colormap array.
- [sky](colormap/sky.md) - Sky colormap array.
- [summer](colormap/summer.md) - Summer colormap array.
- [turbo](colormap/turbo.md) - Turbo colormap array.
- [viridis](colormap/viridis.md) - Viridis colormap array.
- [white](colormap/white.md) - white colormap array.
- [winter](colormap/winter.md) - Winter colormap array.

## Functions

- [ancestor](ancestor.md) - Ancestor of graphics object.
- [axes](axes.md) - Create cartesian axes.
- [axis](axis.md) - Set axis limits and aspect ratios.
- [bar](bar.md) - Bar graph.
- [cla](cla.md) - Clear axes.
- [clabel](clabel.md) - Contour labeling
- [clf](clf.md) - Clear figure.
- [clim](clim.md) - Set colormap limits.
- [close](close.md) - Close one or more figures
- [colorbar](colorbar.md) - Colorbar showing color scale.
- [colstyle](colstyle.md) - Parse color and style from string.
- [contour](contour.md) - Contour plot of matrix
- [contour3](contour3.md) - Contour 3D plot of matrix
- [contourc](contourc.md) - Contour matrix computation
- [contourf](contourf.md) - Filled contour plot of matrix
- [cylinder](cylinder.md) - Create cylinder.
- [daspect](daspect.md) - Control data unit length along each axis.
- [drawnow](drawnow.md) - Update figures and process callbacks
- [figure](figure.md) - Creates an figure window.
- [fill](fill.md) - Create filled 2-D patches.
- [findobj](findobj.md) - Find graphics objects with specific properties.
- [flag](flag.md) - Flag colormap array.
- [frame2im](frame2im.md) - Retrieve image data from a movie frame.
- [gca](gca.md) - get current axes graphics object.
- [gcf](gcf.md) - get current figure graphics object.
- [getframe](getframe.md) - Capture figure or axes as movie frame.
- [Managing Callback Interruptions in Nelson](graphical_callback.md) -
- [grid](grid.md) - Display or hide axes grid lines.
- [groot](groot.md) - graphic root object.
- [hggroup](hggroup.md) - Create group object.
- [hist](hist.md) - Histogram plot.
- [hold](hold.md) - Retain current plot when adding new plots.
- [im2frame](im2frame.md) - Convert image to movie frame.
- [image](image.md) - Display image from array.
- [imagesc](imagesc.md) - Display image from array with scaled colors.
- [imshow](imshow.md) - Display image.
- [is2D](is2D.md) - Checks if ax is a 2-D Polar or Cartesian axes.
- [isValidGraphicsProperty](isValidGraphicsProperty.md) - Check property name is valid.
- [isgraphics](isgraphics.md) - Check for graphics object.
- [ishold](ishold.md) - Get current hold state.
- [legend](legend.md) - Add legend to axes.
- [line](line.md) - Create primitive line.
- [loglog](loglog.md) - Log-log scale plot.
- [mesh](mesh.md) - Mesh surface plot.
- [meshz](meshz.md) - Mesh surface plot with curtain.
- [movie](movie.md) - Render recorded movie frames.
- [newplot](newplot.md) - Prepare to produce a new plot.
- [nexttile](nexttile.md) - Create axes in tiled chart layout.
- [pan](pan.md) - Enable pan mode.
- [patch](patch.md) - Create patches of colored polygons
- [pbaspect](pbaspect.md) - Control relative lengths of each axis in the plot box.
- [pcolor](pcolor.md) - Pseudocolor plot.
- [pie](pie.md) - Legacy pie chart.
- [plot](plot.md) - Linear 2-D plot.
- [plot3](plot3.md) - 3-D line plot.
- [prism](prism.md) - Prism colormap array.
- [quiver](quiver.md) - Vector plot.
- [refresh](refresh.md) - Redraw current figure.
- [rgbplot](rgbplot.md) - Plot colormap.
- [ribbon](ribbon.md) - Ribbon plot.
- [rotate3d](rotate3d.md) - Enable rotate mode.
- [scatter](scatter.md) - Scatter plot.
- [scatter3](scatter3.md) - 3D Scatter plot.
- [semilogx](semilogx.md) - Semilog plot (x-axis has log scale).
- [semilogy](semilogy.md) - Semilog plot (y-axis has log scale).
- [sphere](sphere.md) - Create sphere.
- [spring](spring.md) - Spring colormap array.
- [spy](spy.md) - Visualize sparsity pattern of matrix.
- [stairs](stairs.md) - Stairstep graph.
- [stem](stem.md) - Plot discrete sequence data.
- [subplot](subplot.md) - Create axes in tiled positions.
- [surf](surf.md) - surface plot.
- [surface](surface.md) - Primitive surface plot.
- [text](text.md) - creates text descriptions to data points.
- [tiledlayout](tiledlayout.md) - Create tiled chart layout.
- [tilenum](tilenum.md) - Get tile number from row-column indices or graphics object.
- [tilerowcol](tilerowcol.md) - Get row and column indices from tile number or graphics object.
- [title](title.md) - Add title.
- [uicontrol](uicontrol.md) - Create user interface component.
- [validatecolor](validatecolor.md) - Validate color values.
- [view](view.md) - Camera line of sigh.
- [waitfor](waitfor.md) - Wait for condition.
- [waitforbuttonpress](waitforbuttonpress.md) - Wait for click or key press.
- [waterfall](waterfall.md) - waterfall plot.
- [xlabel](xlabel.md) - Label x-axis.
- [xlim](xlim.md) - set or get x-axis limits.
- [ylabel](ylabel.md) - Label y-axis.
- [ylim](ylim.md) - set or get y-axis limits.
- [zlabel](zlabel.md) - Label z-axis.
- [zlim](zlim.md) - set or get z-axis limits.
- [zoom](zoom.md) - Enable zoom mode.
