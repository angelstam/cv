%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Stylish Curriculum Vitae
% LaTeX Template
% Version 2.0 (2013-02-28)
%
% This template has been downloaded from:
% http://www.LaTeXTemplates.com
%
% Original author of Version 1.0 (18/7/12):
% Stefano (http://stefano.italians.nl/)
%
% Modified by:
% Johan Angelstam (http://github.com/angelstam)
%
% IMPORTANT: THIS TEMPLATE NEEDS TO BE COMPILED WITH XeLaTeX
%
% License:
% CC BY-NC-SA 3.0 (http://creativecommons.org/licenses/by-nc-sa/3.0/)
%
% The main font used in this template, Adobe Garamond Pro, does not 
% come with Windows by default. You will need to download it in
% order to get an output as in the preview PDF. Otherwise, change this 
% font to one that does come with Windows or comment out the font line 
% to use the default LaTeX font.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv-stylish}

% initial code
\LoadClass[a4paper, oneside, final]{scrartcl} % Paper options using the scrartcl class
%\RequirePackage[utf8]{inputenc}
%\RequirePackage{scrpage2} % Provides headers and footers configuration
\RequirePackage{fancyhdr}
\RequirePackage{titlesec} % Allows creating custom \section's
\RequirePackage{marvosym} % Allows the use of symbols
\RequirePackage{tabularx,colortbl} % Advanced table configurations
\RequirePackage{fontspec} % Allows font customization
\RequirePackage{paralist} % Provides compact lists
\RequirePackage{parskip}
\RequirePackage{tikz} % Rounded corners
\AtBeginDocument{
  \setdefaultleftmargin{1em}{1em}{1em}{1em}{1em}{1em}
  
  \defaultfontfeatures{Mapping=tex-text}
  \setmainfont{Adobe Garamond Pro} % Main document font
  
  \titleformat{\section}{\large\scshape\raggedright}{}{0em}{}[\titlerule\vspace{-\parskip}] % Section formatting
  
  %\pagestyle{scrheadings} % Print the headers and footers on all pages
  \pagestyle{fancy}

  \clubpenalty=10000
  \widowpenalty=10000
  \displaywidowpenalty=10000
  
  \addtolength{\voffset}{-0.5cm} % Adjust the vertical offset - less whitespace at the top of the page
  %\addtolength{\textheight}{4cm} % Adjust the text height - less whitespace at the bottom of the page
  %\addtolength{\textwidth}{-10cm}
 \fancyheadoffset{1.5cm}
  %---------------------------------------------------------------------
  %  FOOTER SECTION
  %---------------------------------------------------------------------
  \renewcommand{\headfont}{\normalfont\rmfamily\scshape} % Font settings for footer

  \fancyhead[L]{}
  \fancyhead[R]{\small\@date}
  \fancyfoot[C]{\headfont
  \addfontfeature{LetterSpace=20.0}\fontsize{12.5}{17}\selectfont % Letter spacing and font size
  \@footer }
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0.2pt}
  %\addtolength{\headheight}{\baselineskip}
  \addtolength{\footskip}{-1cm}
}

% declaration of options

% execution of options
\ProcessOptions \relax

% package loading
\usepackage[margin=20mm]{geometry}

% main code
\newcommand{\gray}{\rowcolor[gray]{.90}} % Custom highlighting for the work experience and education sections

\newcommand*{\header}[1]{
{\addfontfeature{LetterSpace=20.0}\fontsize{36}{36}\selectfont\scshape
#1} % Your name at the top
}
\newcommand*{\@footer}{}
\newcommand*{\footer}[1]{
  \renewcommand*{\@footer}{#1}
}