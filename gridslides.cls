% Package:     gridslides
% Description: LaTeX package to create free form slides with blocks placed on a grid
% File:        gridslides.cls
% Author:      Daniel Mendler <mail@daniel-mendler.de>
% Version:     0.1.1
% Date:        2017-11-28
% License:     GPL2 or LPPL1.3 at your option
% Homepage:    https://github.com/minad/gridslides
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gridslides}

\RequirePackage{xkeyval}

\DeclareOptionX{gridsize}{\PassOptionsToPackage{\CurrentOption}{gridslides}}
\DeclareOptionX{xsteps}{\PassOptionsToPackage{\CurrentOption}{gridslides}}
\DeclareOptionX{ysteps}{\PassOptionsToPackage{\CurrentOption}{gridslides}}
\DeclareOptionX{blocks}{\PassOptionsToPackage{\CurrentOption}{gridslides}}
\DeclareOptionX{grid}{\PassOptionsToPackage{\CurrentOption}{gridslides}}

\ProcessOptionsX\relax

\LoadClass{article}
\RequirePackage{gridslides}

% undefine some commands from article
\let\tableofcontents\GS@undefined
\let\addcontentsline\GS@undefined
\let\paragraph\GS@undefined
\let\subparagraph\GS@undefined
\let\chapter\GS@undefined
\let\section\GS@undefined
\let\subsection\GS@undefined
\let\subsubsection\GS@undefined
\let\maketitle\GS@undefined
\let\figure\GS@undefined
\let\table\GS@undefined
\let\pagestyle\GS@undefined
\let\footnote\GS@undefined
\let\bf\GS@undefined
\let\it\GS@undefined
\let\cal\GS@undefined
\let\tt\GS@undefined
\let\listoffigures\GS@undefined
\let\listoftables\GS@undefined

\endinput
