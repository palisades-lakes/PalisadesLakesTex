%-----------------------------------------------------------------
% PalisadesLakesBook --- latex book class 
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
\ProvidesClass{PalisadesLakesBook}[2021-02-05]

%-----------------------------------------------------------------
% class options
%-----------------------------------------------------------------

% none at present

% TODO: control printing of list of listings, etc., with package
% options rather than toggles?

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax

\LoadClass[11pt,openany]{book}

%-----------------------------------------------------------------
% test \PackageWarning with unknown option 'foo'.

\RequirePackage[foo=true]{PalisadesLakes}[2021-02-05]

%-----------------------------------------------------------------
\toggletrue{plMath}
\toggletrue{plCode}
\toggletrue{plData}
\toggletrue{plNote}
\toggletrue{plExercise}
\toggletrue{plQuote}

% TODO: do I really want glossaries? is index and/or list of
% definitions enough or even better?
\toggletrue{printglossary}
\def \sharedFolder {../shared/}
\import{\sharedFolder}{glossary}

\toggletrue{printindex}

\AtEndDocument {\appendix\FinishBook}
%-----------------------------------------------------------------
