%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Medium Length Professional CV - RESUME CLASS FILE
%
% This template has been downloaded from:
% http://www.LaTeXTemplates.com
%
% This class file defines the structure and design of the template. 
%
% Original header:
% Copyright (C) 2010 by Trey Hunner
%
% Copying and distribution of this file, with or without modification,
% are permitted in any medium without royalty provided the copyright
% notice and this notice are preserved. This file is offered as-is,
% without any warranty.
%
% Created by Trey Hunner and modified by www.LaTeXTemplates.com
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{resume}[10/23/2025 v0.1 Resume class]

\LoadClass[11pt,letterpaper]{article} % Font size and paper type
\usepackage[letterpaper, left=0.4in,top=0.4in,right=0.4in,bottom=0.4in]{geometry} % Document margins 
\usepackage[T1]{fontenc} % Use T1 font encoding for pdflatex
\usepackage{lmodern} % Use the Latin Modern font family
\usepackage[english]{babel}
\usepackage{hyperref}
\usepackage{textcomp} % Required for some symbols
\usepackage{tabularx} % For skills table
\usepackage{booktabs} % For \addlinespace
\usepackage{enumitem} % For custom list spacing
\usepackage{ragged2e} % For \raggedright in summary

% --- SETUP ---
% \hypersetup{
%     colorlinks=true,
%     linkcolor=blue,
%     filecolor=magenta,      
%     urlcolor=blue,
%     pdftitle={Sworup Shakya - Master CV},
%     pdfpagemode=FullScreen,
% }
\hypersetup{hidelinks} % For clickable links
 
\newcommand{\tab}[1]{\hspace{.2667\textwidth}\rlap{#1}} 
\newcommand{\itab}[1]{\hspace{0em}\rlap{#1}}
\pagestyle{empty} % No page numbers
\setlength{\parindent}{0pt} % No paragraph indentation
\setlist[itemize]{leftmargin=*, itemsep=-2pt, topsep=0pt, partopsep=0pt} % Tighter lists
% Disable hyphenation by setting a very high penalty
\lefthyphenmin=32
\righthyphenmin=32

%----------------------------------------------------------------------------------------
%	HEADINGS COMMANDS: Commands for printing name and address
%----------------------------------------------------------------------------------------

\def \name#1{\def\@name{#1}} % Defines the \name command to set name
\def \@name {} % Sets \@name to empty by default

\def \addressSep {$\diamond$} % Set default address separator to a diamond

% One, two or three address lines can be specified 
\let \@addressone \relax
\let \@addresstwo \relax
\let \@addressthree \relax

% \address command can be used to set the first, second, and third address (last 2 optional)
\def \address #1{
  \@ifundefined{@addresstwo}{
    \def \@addresstwo {#1}
  }{
  \@ifundefined{@addressthree}{
  \def \@addressthree {#1}
  }{
     \def \@addressone {#1}
  }}
}

% \printaddress is used to style an address line (given as input)
\def \printaddress #1{
  \begingroup
    \def \\ {\addressSep\ }
    \centerline{#1}
  \endgroup
  \par
  \addressskip
}

% \printname is used to print the name as a page header
\def \printname {
  \begingroup
    \hfil{\MakeUppercase{\namesize\bf \@name}}\hfil
    \nameskip\break
  \endgroup
}

%----------------------------------------------------------------------------------------
%	PRINT THE HEADING LINES
%----------------------------------------------------------------------------------------

\let\ori@document=\document
\renewcommand{\document}{
  \ori@document  % Begin document
  \printname % Print the name specified with \name
  \@ifundefined{@addressone}{}{ % Print the first address if specified
    \printaddress{\@addressone}}
  \@ifundefined{@addresstwo}{}{ % Print the second address if specified
    \printaddress{\@addresstwo}}
     \@ifundefined{@addressthree}{}{ % Print the third address if specified
    \printaddress{\@addressthree}}
}

%----------------------------------------------------------------------------------------
%	SECTION FORMATTING
%----------------------------------------------------------------------------------------


%----------------------------------------------------------------------------------------
%	WORK EXPERIENCE FORMATTING
%----------------------------------------------------------------------------------------

\newenvironment{rSubsection}[4]{ % 4 input arguments - company name, year(s) employed, job title and location
 {\bf #1} \hfill {#2} % Bold company name and date on the right
 \ifthenelse{\equal{#3}{}}{}{ % If the third argument is not specified, don't print the job title and location line
  \\
  {\em #3} \hfill {\em #4} % Italic job title and location
  }\smallskip
  \begin{list}{$\cdot$}{\leftmargin=0em} % \cdot used for bullets, no indentation
   \itemsep -0.5em \vspace{-0.5em} % Compress items in list together for aesthetics
  }{
  \end{list}
  \vspace{0.5em} % Some space after the list of bullet points
}

% The below commands define the whitespace after certain things in the document - they can be \smallskip, \medskip or \bigskip
\def\namesize{\LARGE} % Size of the name at the top of the document
\def\addressskip{\smallskip} % The space between the two address (or phone/email) lines
\def\sectionlineskip{\medskip} % The space above the horizontal line for each section 
\def\nameskip{\medskip} % The space after your name at the top
\def\sectionskip{\medskip} % The space after the heading section

% Define a new command to include files from the 'frontend' directory
\newcommand{\inputfrontend}[1]{%
  \input{frontend/#1}%
}

% Redefine \input to check for files in 'frontend' first
\let\oldinput\input
\renewcommand{\input}[1]{%
  \IfFileExists{frontend/#1}{\oldinput{frontend/#1}}{\oldinput{#1}}%
}

% --- HELPER COMMANDS ---
% Redefine a command for section breaks
\newenvironment{rSection}[1]{ % 1 input argument - section name
  % \vspace{4pt} % Space before section
  \sectionskip
  \MakeUppercase{{\bf #1}} % Section title
  \sectionlineskip
  \hrule % Horizontal line
  \begin{list}{}{ % List for each individual item in the section
    \setlength{\leftmargin}{0em} % Margin within the section
  }
  \item[]%
  \begingroup\raggedright\parindent=0pt\relax
}{
  \par\endgroup
  \end{list}
}

% Define a command for job entries
\newcommand{\jobEntry}[4]{
  \par
  \noindent
  \textbf{\large #1} \hfill \textbf{#2} \\
  \textit{#3} \hfill \textit{#4}
  \par
  \vspace{5pt}
}
