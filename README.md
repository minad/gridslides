# slide: LaTeX package to create free form slides

This package allows to create free form slides with boxes placed on a grid.
The boxes can be filled with text, TeX equations, figures etc.
This allows more flexible slides similar compared to LaTeX beamer.
Sequential unconvering of elements is supported.
A compiler script is provided which compiles each slide separately, avoiding long compile times this way.

## Example

See the file `example.tex` and `example.pdf`. Each slide is compiled separately using `compile.pl example.tex`.

## Supported commands

### Slides/Pages

```latex
\begin{slide}{Slide title}
  Slide content
\end{slide}

\begin{rawslide}
  Raw slide without title and style
\end{rawslide}

\begin{style}
  Define style which underlies all slides
\end{style}
```

### Slide content blocks

The slide is divided in a 32x24 grid.

```latex
\txt(x,y){Text content}
\block(x,y,w){Arbitrary content}
\fig(x,y,w){filename}
\eq(x,y){a^2 + b^2 = c^2}
```

### Sequential uncovering

Each slide can be split in multiple steps by defining blocks with `<n-m>` annotations.

```latex
\txt<1->(x,y){On slide step 1 to n}
\block<2>(x,y,w){Only on step 2}
\only<2-3>{
  \block(x,y){Block content}
}
```

### Metadata

```latex
\author{Author}            defines \theauthor
\title{Presentation Title} defines \thetitle
\date{Date}                defines \thedate
\institute{Institute}      defines \theinstitute
\theheadline defined by slide title
\theslide defined by slide number
```

## License

Copyright (c) 2017 Daniel Mendler. The package is dual-licensed
under the GNU General Public License, version 2 and
the LaTeX Project Public License 1.3 at your option.
