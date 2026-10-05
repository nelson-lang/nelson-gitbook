# polaraxes properties

polaraxes graphics object properties.

## 📄 Description


This page documents the visible properties returned by <b>properties</b> for a <b>polaraxes</b> graphics object. 

| Property | Action | Type and supported values | 
| --- | --- | --- | 
| **ALim** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: two finite increasing values [min max]. | 
| **ALimMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **AlphaScale** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'linear', 'log'. | 
| **Alphamap** | updates rendered output on the next graphics refresh. | Type: finite numeric vector. Supported values: numeric alpha values in [0,1]. | 
| **AmbientLightColor** | updates rendered output on the next graphics refresh. | Type: color value. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB'. | 
| **BeingDeleted** | Nelson computes this value; graphics operations update it. | Type: text scalar or character row vector. Supported values: 'off', 'on'. | 
| **Box** | updates rendered output on the next graphics refresh. | Type: on/off value. Supported values: 'on', 'off', true, or false. | 
| **BoxStyle** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: style names defined by this object, such as UI styles, light styles, chart styles, or line styles. | 
| **BusyAction** | controls whether an interrupting callback is queued or canceled. | Type: text scalar or character row vector. Supported values: 'queue', 'cancel'. | 
| **ButtonDownFcn** | runs when the object receives a mouse-button event. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **CLim** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: two finite increasing values [min max]. | 
| **CLimMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **CameraPosition** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major]. | 
| **CameraPositionMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **CameraTarget** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major]. | 
| **CameraTargetMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **CameraUpVector** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major]. | 
| **CameraUpVectorMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **CameraViewAngle** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major]. | 
| **CameraViewAngleMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **Children** | parenting operations update the vector. | Type: graphics object handle vector. Supported values: empty vector or child handles. | 
| **Clipping** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **ClippingStyle** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: style names defined by this object, such as UI styles, light styles, chart styles, or line styles. | 
| **Color** | updates rendered output on the next graphics refresh. | Type: color value. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB'. | 
| **ColorOrder** | changes automatically selected colors for subsequent plotted series. | Type: finite numeric matrix. Supported values: m-by-3 RGB matrix with values in [0,1]. | 
| **ColorOrderIndex** | updates rendered output on the next graphics refresh. | Type: color value. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB'. | 
| **ColorScale** | updates rendered output on the next graphics refresh. | Type: color value. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB'. | 
| **Colormap** | updates rendered output on the next graphics refresh. | Type: finite numeric matrix. Supported values: m-by-3 RGB matrix with values in [0,1]. | 
| **ContextMenu** | attaches the menu used for context-click actions. | Type: graphics object handle scalar. Supported values: [] or a uicontextmenu handle. | 
| **CreateFcn** | runs when the object is created. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **CurrentPoint** | pointer location in data coordinates, updated on the same mouse events as the figure CurrentPoint, for axes placed directly in the figure or in a panel, tab or tiled layout. | Type: 2-by-3 matrix [xfront yfront zfront; xback yback zback]. Supported values: the front and back points of the view line under the pointer, cut at the axes box; in a 2-D view both rows share x and y and z is the upper then the lower z-limit. Log scales and reversed directions are taken into account. | 
| **DataAspectRatio** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major]. | 
| **DataAspectRatioMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **DataLimits** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: two finite increasing values [min max]. | 
| **DeleteFcn** | runs when the object is deleted. | Type: callback value. Supported values: [], function handle, character vector, string scalar, or callback cell array. | 
| **FontAngle** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'normal', 'italic'. | 
| **FontName** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: a system font name or 'FixedWidth'. | 
| **FontSize** | recomputes geometry, limits, or layout. | Type: finite numeric scalar. Supported values: finite scalar value. | 
| **FontSizeMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **FontSmoothing** | updates rendered output on the next graphics refresh. | Type: on/off value. Supported values: 'on', 'off', true, or false. | 
| **FontUnits** | recomputes geometry, limits, or layout. | Type: text scalar or character row vector. Supported values: 'pixels', 'normalized', 'inches', 'centimeters', 'points', 'characters', 'data'. | 
| **FontWeight** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'normal', 'bold'. | 
| **GridAlpha** | updates rendered output on the next graphics refresh. | Type: numeric scalar or numeric array. Supported values: values in [0,1]; data arrays must match the related rendered data. | 
| **GridAlphaMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **GridColor** | updates rendered output on the next graphics refresh. | Type: color value. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB'. | 
| **GridColorMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **GridLineStyle** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: '-', '--', ':', '-.', 'none'. | 
| **GridLineWidth** | updates rendered output on the next graphics refresh. | Type: finite numeric scalar. Supported values: value greater than or equal to 0. | 
| **GridLineWidthMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **HandleVisibility** | controls whether handle-search functions can find the object. | Type: text scalar or character row vector. Supported values: 'on', 'off', 'callback'. | 
| **HitTest** | includes or excludes the object from mouse hit testing. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **InnerPosition** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major]. | 
| **InteractionOptions** | updates the stored object state. | Type: interaction object, structure, cell array, or empty array. Supported values: [] or interaction definitions for axes and charts. | 
| **Interactions** | updates the stored object state. | Type: interaction object, structure, cell array, or empty array. Supported values: [] or interaction definitions for axes and charts. | 
| **Interruptible** | controls whether a running callback can be interrupted. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **LabelFontSizeMultiplier** | recomputes geometry, limits, or layout. | Type: finite numeric scalar. Supported values: finite scalar value. | 
| **Layer** | controls whether axes grid lines and ticks are drawn behind or in front of plotted children. | Type: text keyword. Supported values: 'bottom' or 'top'. | 
| **Layout** | updates the object placement requested from the parent layout manager. | Type: layout options object or empty value. Supported values: layout information stored by parent layout managers, including tile placement data where the object supports tiled layouts. | 
| **Legend** | links the chart to the legend that represents it. | Type: legend graphics object or empty handle value. Supported values: a legend object associated with the chart, or an empty graphics handle when no legend is attached. | 
| **LineStyleCyclingMethod** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: '-', '--', ':', '-.', 'none'. | 
| **LineStyleOrder** | changes automatically selected line styles for subsequent plotted series. | Type: text scalar, string array, or cell array of text. Supported values: '-', '--', ':', '-.', 'none'. | 
| **LineStyleOrderIndex** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: '-', '--', ':', '-.', 'none'. | 
| **LineWidth** | updates rendered output on the next graphics refresh. | Type: finite numeric scalar. Supported values: value greater than or equal to 0. | 
| **MinorGridAlpha** | updates rendered output on the next graphics refresh. | Type: numeric scalar or numeric array. Supported values: values in [0,1]; data arrays must match the related rendered data. | 
| **MinorGridAlphaMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **MinorGridColor** | updates rendered output on the next graphics refresh. | Type: color value. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB'. | 
| **MinorGridColorMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **MinorGridLineStyle** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: '-', '--', ':', '-.', 'none'. | 
| **MinorGridLineWidth** | updates rendered output on the next graphics refresh. | Type: finite numeric scalar. Supported values: value greater than or equal to 0. | 
| **MinorGridLineWidthMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **NextPlot** | selects how the next plotting command reuses or resets existing children. | Type: text scalar or character row vector. Supported values: 'add', 'replace', 'replacechildren', 'replaceall', 'new'. | 
| **NextSeriesIndex** | updates the stored object state. | Type: integer scalar or numeric vector. Supported values: finite integer value, finite numeric value, or vector required by the property. | 
| **OuterPosition** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major]. | 
| **Parent** | reparents the object and updates Children on the old and new parents. | Type: graphics object handle scalar. Supported values: a valid parent handle for the object class. | 
| **PickableParts** | selects which visible or invisible parts can receive mouse hits. | Type: text scalar or character row vector. Supported values: 'visible', 'all', 'none'. | 
| **PlotBoxAspectRatio** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major]. | 
| **PlotBoxAspectRatioMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **Position** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major]. | 
| **PositionConstraint** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major]. | 
| **PositionMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **Projection** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'orthographic', 'perspective'. | 
| **RLim** | updates radial axis limits and switches radial limit mode to manual when applicable. | Type: two-element numeric vector. Supported values: finite increasing vector [rmin rmax]. | 
| **RLimMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **RTick** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: [] or a finite numeric vector, normally increasing. | 
| **RTickLabel** | updates rendered output on the next graphics refresh. | Type: text scalar, string array, or cell array of text. Supported values: empty text or labels matching the related ticks, categories, variables, lines, or displayed values. | 
| **RTickLabelMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **RTickMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **Selected** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **SelectionHighlight** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **SortMethod** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'childorder', 'depth'. | 
| **Subtitle** | updates the displayed subtitle or subtitle object. | Type: text graphics object or text value, depending on the object class. Supported values: a subtitle text object, character row vector, string scalar, or empty text. | 
| **SubtitleFontWeight** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'normal', 'bold'. | 
| **Tag** | updates the stored object state. | Type: text scalar or character row vector. Supported values: empty text or an object identifier. | 
| **TextHeight** | recomputes geometry, limits, or layout. | Type: finite numeric scalar. Supported values: finite scalar value. | 
| **ThetaAxis** | exposes the numeric ruler that renders the theta axis. | Type: NumericRuler object. Supported values: a scalar NumericRuler handle. | 
| **ThetaAxisUnits** | sets angle units for theta limits, theta ticks, and theta tick labels. | Type: text scalar or character row vector. Supported values: 'degrees', 'radians'. | 
| **ThetaLim** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: two finite increasing values [min max]. | 
| **ThetaLimMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **ThetaTick** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: [] or a finite numeric vector, normally increasing. | 
| **ThetaTickLabel** | updates rendered output on the next graphics refresh. | Type: text scalar, string array, or cell array of text. Supported values: empty text or labels matching the related ticks, categories, variables, lines, or displayed values. | 
| **ThetaTickLabelMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **ThetaTickMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **TickDir** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'in', 'out', 'both', 'none'. | 
| **TickDirMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **TickLabelInterpreter** | updates rendered output on the next graphics refresh. | Type: text scalar, string array, or cell array of text. Supported values: empty text or labels matching the related ticks, categories, variables, lines, or displayed values. | 
| **TickLength** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major]. | 
| **TightInset** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major]. | 
| **Title** | updates the displayed title or the title object associated with the graphics item. | Type: text graphics object or text value, depending on the object class. Supported values: a title text object, character row vector, string scalar, or empty text. | 
| **TitleFontSizeMultiplier** | recomputes geometry, limits, or layout. | Type: finite numeric scalar. Supported values: finite scalar value. | 
| **TitleFontWeight** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'normal', 'bold'. | 
| **TitleHorizontalAlignment** | updates rendered output on the next graphics refresh. | Type: on/off value. Supported values: 'on', 'off', true, or false. | 
| **Toolbar** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'none', 'figure', 'auto'. | 
| **Type** | Nelson computes this value; graphics operations update it. | Type: text scalar or character row vector. Supported values: read-only object type name, for example 'figure', 'axes', 'line', or 'scatter'. | 
| **Units** | recomputes geometry, limits, or layout. | Type: text scalar or character row vector. Supported values: 'pixels', 'normalized', 'inches', 'centimeters', 'points', 'characters', 'data'. | 
| **UserData** | updates the stored object state. | Type: Nelson array. Supported values: any Nelson value, including [], numeric arrays, text, cells, structures, or handles. | 
| **View** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: finite vector with the documented size, such as [left bottom width height], [x y z], [azimuth elevation], or [minor major]. | 
| **Visible** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'on', 'off'. | 
| **XAxis** | exposes ruler state used for ticks, limits, scale, and labels. | Type: axis ruler object. Supported values: an axis ruler object associated with the x direction. | 
| **XColorMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **XLimitMethod** | selects how automatic x-axis limits are chosen. | Type: text scalar or character row vector. Supported values: 'tickaligned', 'tight', 'padded'. | 
| **XMinorTick** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: [] or a finite numeric vector, normally increasing. | 
| **XTickLabelRotation** | updates rendered output on the next graphics refresh. | Type: text scalar, string array, or cell array of text. Supported values: empty text or labels matching the related ticks, categories, variables, lines, or displayed values. | 
| **XTickLabelRotationMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **YAxis** | exposes ruler state used for ticks, limits, scale, and labels. | Type: axis ruler object. Supported values: an axis ruler object associated with the y direction. | 
| **YColorMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **YLimitMethod** | selects how automatic y-axis limits are chosen. | Type: text scalar or character row vector. Supported values: 'tickaligned', 'tight', 'padded'. | 
| **YMinorTick** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: [] or a finite numeric vector, normally increasing. | 
| **YTickLabelRotation** | updates rendered output on the next graphics refresh. | Type: text scalar, string array, or cell array of text. Supported values: empty text or labels matching the related ticks, categories, variables, lines, or displayed values. | 
| **YTickLabelRotationMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **ZAxis** | exposes ruler state used for ticks, limits, scale, and labels. | Type: axis ruler object. Supported values: an axis ruler object associated with the z direction. | 
| **ZColorMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **ZLimitMethod** | selects how automatic z-axis limits are chosen. | Type: text scalar or character row vector. Supported values: 'tickaligned', 'tight', 'padded'. | 
| **ZMinorTick** | recomputes geometry, limits, or layout. | Type: finite numeric vector. Supported values: [] or a finite numeric vector, normally increasing. | 
| **ZTickLabelRotation** | updates rendered output on the next graphics refresh. | Type: text scalar, string array, or cell array of text. Supported values: empty text or labels matching the related ticks, categories, variables, lines, or displayed values. | 
| **ZTickLabelRotationMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **RAxis** | exposes the numeric ruler that renders the r axis. | Type: NumericRuler object. Supported values: a scalar NumericRuler handle. | 
| **RAxisLocation** | positions the r-axis tick labels at the given angle. | Type: finite numeric scalar. Supported values: finite scalar value. | 
| **RAxisLocationMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **RColor** | updates rendered output on the next graphics refresh. | Type: color value. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB'. | 
| **RColorMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **RDir** | updates rendered output on the next graphics refresh. | Type: text scalar or character row vector. Supported values: 'normal', 'reverse'. | 
| **RGrid** | shows or hides the radial grid lines. | Type: on/off value. Supported values: 'on', 'off', true, or false. | 
| **RMinorGrid** | shows or hides the radial minor grid lines. | Type: on/off value. Supported values: 'on', 'off', true, or false. | 
| **RMinorTick** | shows or hides the radial minor ticks. | Type: on/off value. Supported values: 'on', 'off', true, or false. | 
| **RTickLabelRotation** | updates rendered output on the next graphics refresh. | Type: finite numeric scalar. Supported values: finite scalar value. | 
| **RTickLabelRotationMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **ThetaColor** | updates rendered output on the next graphics refresh. | Type: color value. Supported values: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', RGB triplet [r g b] with values in [0,1], or hexadecimal color '#RRGGBB'/'#RGB'. | 
| **ThetaColorMode** | 'auto' lets Nelson recompute the paired property; 'manual' preserves the assigned value. | Type: text scalar or character row vector. Supported values: 'auto', 'manual'. | 
| **ThetaDir** | sets the direction of increasing theta angles. | Type: text scalar or character row vector. Supported values: 'counterclockwise', 'clockwise'. | 
| **ThetaGrid** | shows or hides the angular grid lines. | Type: on/off value. Supported values: 'on', 'off', true, or false. | 
| **ThetaMinorGrid** | shows or hides the angular minor grid lines. | Type: on/off value. Supported values: 'on', 'off', true, or false. | 
| **ThetaMinorTick** | shows or hides the angular minor ticks. | Type: on/off value. Supported values: 'on', 'off', true, or false. | 
| **ThetaZeroLocation** | sets the location of the zero-degree reference direction. | Type: text scalar or character row vector. Supported values: 'right', 'top', 'left', 'bottom'. | 



## 💡 Example

Create the graphics object and list its properties.

```matlab
f = figure('Visible', 'off');
h = polaraxes('Parent', f);
names = properties(h);
close(f)
```


## 🔗 See also

[polaraxes](../../../graphics/1_plots/2_polar_plots/polaraxes.md), [properties](../../../handle/properties.md), [get](../../../handle/get.md), [set](../../../handle/set.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| --   | Property page added. |

<!--
## 👤 Author

Allan CORNET
-->
