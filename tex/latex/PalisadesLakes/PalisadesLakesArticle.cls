%-----------------------------------------------------------------
% PalisadesLakesArticle--- latex article class 
%   for palisades-lakes projects.
% email: palisades-lakes at gmail dot com
% no guarantees or support.
% no copyright or license (yet).
%-----------------------------------------------------------------
% not bothering with dtx (formatted documentation):
%  extra processing step not worth while,
%    especially in development.
%  dtx format not supported by texlipse
%  package intended for 'internal', unsupported use only.
%  latex + comments is readable enough.
%
% Note well: this is my first attempt at a latex class.
%-----------------------------------------------------------------

\NeedsTeXFormat {LaTeX2e} [2020-10-01]
\ProvidesClass{PalisadesLakesArticle}[2021-01-23]

%-----------------------------------------------------------------
% class options
%-----------------------------------------------------------------

% none at present

% TODO: control printing of list of listings, etc., with package
% options rather than toggles?

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass{article}

%-----------------------------------------------------------------
% test \PackageWarning with unknown option 'foo'.

\RequirePackage{PalisadesLakes}[2021-02-05]

%-----------------------------------------------------------------
\input{glossary}

\AtEndDocument {\FinishArticle}
%-----------------------------------------------------------------
