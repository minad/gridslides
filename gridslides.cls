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

\endinput
