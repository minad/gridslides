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

\DeclareOption{blocks}{\PassOptionsToPackage{\CurrentOption}{gridslides}}
\DeclareOption{grid}{\PassOptionsToPackage{\CurrentOption}{gridslides}}
\DeclareOption*{\ClassWarning{gridslides}{Unknown option '\CurrentOption'}}

\ProcessOptions\relax

\LoadClass{article}
\RequirePackage{gridslides}

\endinput
