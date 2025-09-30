# text

creates text descriptions to data points.

## Syntax

- text(x, y, txt)
- text(x, y, z, txt)
- text(... , propertyName, propertyValue)
- text(ax, ...)
- go = text(...)

## Input argument

- x - x-coordinates: vector or matrix.
- y - y-coordinates: vector or matrix.
- z - z-coordinates: vector or matrix.
- parent - a scalar graphics object value: parent container, specified as a axes.
- text - Text to display: character vector, string scalar, string array or cell array.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## Output argument

- go - a graphics object: text type.

## Description

<p>
            <b>figure</b> creates figure.</p>
<p>Properties:</p>
<p></p>
<p>
                <b>BackgroundColor</b>: Color of text box background: RGB triplet.</p>
<p>
                    <b>Children</b>:  Children: [].</p>
<p>
                        <b>Color</b>: Text color: RGB triplet, [0 0 0] (default) or hexadecimal color code.</p>
<p>
                            <b>EdgeColor</b>: Color of box outline: RGB triplet.</p>
<p>
                                <b>Extent</b>: Size and location of rectangle that encloses text: four-element vector.</p>
<p>
                                    <b>FontAngle</b>: Character slant: 'italic' or 'normal' (default).</p>
<p>
                                        <b>FontName</b>: Font name: </p>
<p>
                                            <b>FontSize</b>: Font size: scalar value greater than zero.</p>
<p>
                                                <b>FontUnits</b>: Font size units: 'inches', 'centimeters', 'normalized', 'pixels' or 'points' (default).</p>
<p>
                                                    <b>FontWeight</b>: Character thickness: 'bold' or 'normal' (default).</p>
<p>
                                                        <b>HorizontalAlignment</b>: Horizontal alignment of text with respect to position point: 'center', 'right', 'left' (default).</p>
<p>
                                                            <b>Interpreter</b>: 'tex' (default) interpreter or 'none'.</p>
<p>
                                                                <b>LineStyle</b>: Line style of box outline:  'none', '--', ':',  '-.' or '-' (default).</p>
<p>
                                                                    <b>LineWidth</b>: Width of box outline: scalar numeric value.</p>
<p>
                                                                        <b>Margin</b>: Space around text within the text box: scalar numeric value.</p>
<p>
                                                                            <b>Parent</b>: Parent: axes object.</p>
<p>
                                                                                <b>Position</b>: Location of text: two-element vector of form [x y] or three-element vector of form [x y z].</p>
<p>
                                                                                    <b>Rotation</b>: Text orientation: scalar value in degrees.</p>
<p>
                                                                                        <b>String</b>: Text to display: character vector, cell array of character vectors, string array, numeric value or '' (default).</p>
<p>
                                                                                            <b>Tag</b>: Object identifier: character vector, string scalar or '' (default).</p>
<p>
                                                                                                <b>Type</b>: Type of graphics object: 'text'.</p>
<p>
                                                                                                    <b>Units</b>: Position and extent units: 'normalized', 'inches', 'centimeters', 'characters', 'points', 'pixels' or 'data' (default).</p>
<p>
                                                                                                        <b>UserData</b>: User data: array or [] (default).</p>
<p>
                                                                                                            <b>VerticalAlignment</b>: Vertical alignment of text with respect to position point.</p>
<p>
                                                                                                                <b>Visible</b>: State of visibility: 'off' or 'on' (default).</p>
<p>
                                                                                                                    <b>CreateFcn</b>Callback (function handle, string or cell) called when object is created.
Set this property on an existing component has no effect.</p>
<p>
                                                                                                                        <b>DeleteFcn</b>Callback (function handle, string or cell) called when object is deleted.</p>
<p></p>
<p>
                                                                                                                            <b>BeingDeleted</b> Flag indicating that the object is being deleted.</p>
<p>Some properties are available only for compatibility and have currently no effect on the text.</p>
<p>lists of the supported special characters for the 'tex' interpreter:</p>
<p>Superscript: ^{ }   'text^{superscript}'</p>
<p>Subscript: _{ }   'text_{subscript}'</p>
<p></p>
Character Sequence Symbol \alpha α \upsilon υ \sim ~ \angle ∠ \phi ϕ \leq ≤ \ast * \chi χ \infty ∞ \beta β \psi ψ \clubsuit ♣ \gamma γ \omega ω \diamondsuit ♦ \delta δ \Gamma Γ \heartsuit ♥ \epsilon ϵ \Delta Δ \spadesuit ♠ \zeta ζ \Theta Θ \leftrightarrow ↔ \eta η \Lambda Λ \leftarrow ← \theta θ \Xi Ξ \Leftarrow ⇐ \vartheta ϑ \Pi Π \uparrow ↑ \iota ι \Sigma Σ \rightarrow → \kappa κ \Upsilon ϒ \Rightarrow ⇒ \lambda λ \Phi Φ \downarrow ↓ \mu µ \Psi Ψ \circ º \nu ν \Omega Ω \pm ± \xi ξ \forall ∀ \geq ≥ \pi π \exists ∃ \propto ∝ \rho ρ \ni ∍ \partial ∂ \sigma σ \cong ≅ \bullet • \varsigma ς \approx ≈ \div ÷ \tau τ \Re ℜ \neq ≠ \equiv ≡ \oplus ⊕ \aleph ℵ \Im ℑ \cup ∪ \wp ℘ \otimes ⊗ \subseteq ⊆ \oslash ∅ \cap ∩ \in ∈ \supseteq ⊇ \supset ⊃ \lceil ⌈ \subset ⊂ \int ∫ \cdot · \o ο \rfloor ⌋ \neg ¬ \nabla ∇ \lfloor ⌊ \times x \ldots ... \perp ⊥ \surd √ \prime ´ \wedge ∧ \varpi ϖ \0 ∅ \rceil ⌉ \rangle 〉 \mid | \vee ∨ \langle 〈 \copyright ©

## Examples

```matlab
f = figure(1)
t = text(0.5, 0.5, 'text here');
s = t.FontSize;
t.FontSize = 12;
t.Color = 'red';

```

<img src="text_1.svg" align="middle"/>

```matlab
figure();
ha = {'left', 'center', 'right'};
va = {'bottom', 'middle', 'top'};
color = {'red', 'green', 'blue'};
x = [0.25 0.5 0.75];
y = x;
for t = 0:45:359;
  for nh = 1:numel (ha)
    for nv = 1:numel (va)
      text (x(nh), y(nv), 'Nelson', ...
      'Rotation', t, ...
      'HorizontalAlignment', ha{nh}, ...
      'VerticalAlignment', va{nv}, ...
      'Color', color{nv});
    end
  end
end
axis([0 1 0 1]);
title (_('Text alignment and rotation (0:45:360 degrees)'));
xlabel(_('Horizontal alignment'));
ylabel (_('Vertical alignment'));
```

<img src="text_2.svg" align="middle"/>

```matlab
figure();
h1 = text(0.5, 0.5, 'Nelson \copyright')
h1.String
% Nelson is full unicode, so
h2 = text(0.5, 0.3, 'OR Nelson ©')
h2.String
```

## See also

[title](../graphics/title.md).

## History

| Version | Description                          |
| ------- | ------------------------------------ |
| 1.0.0   | initial version                      |
| 1.7.0   | CreateFcn, DeleteFcn callback added. |
| --      | BeingDeleted property added.         |

## Author

Allan CORNET
