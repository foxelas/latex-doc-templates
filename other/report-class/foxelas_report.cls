\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{foxelas_report}[2020/11/07 Foxelas's Report Class]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Created by foxelas on 2020/11/0%7
%
%To be compiled with XeLaTeX -> BibTex -> XeLaTeX -> XeLaTeX
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\LoadClass[11pt, a4paper]{article}


\usepackage{graphicx} % Required for including images
\graphicspath{{img/}} % Location of the graphics files
\usepackage{comment}

\usepackage{float} % to force figure positioning

\usepackage[T1]{fontenc}
\usepackage[margin=1in]{geometry}
\usepackage{amsfonts,amsmath,amssymb}
\usepackage{textcomp} % for registered, trademark etc 

% \usepackage{multibib} %  creation of references to multiple bibliographies within one document

% \usepackage[none]{hyphenat} %disable all hyphenation or enable hyphenation of non-alphabetics or monospaced fonts
 
% \usepackage[article]{ragged2e} %defines new commands \Centering, \RaggedLeft, and \RaggedRight and new environments Center, FlushLeft, and FlushRight, which set ragged text and are easily configurable to allow hyphenation

\usepackage{authblk} %redefines the \author command to work as normal or to allow a footnote style of author/affiliation input.

%affiliations in single line 
\makeatletter
\renewcommand\AB@affilsepx{, \protect\Affilfont}
\makeatother

\usepackage[parfill]{parskip}
\usepackage{titlesec} % an interface to sectioning commands
\usepackage{enumitem}

%\usepackage{xeCJK}
%\setCJKsansfont{MS Mincho}
%\setCJKsansfont{IPAGothic}
%\setCJKmonofont{IPAGothic}

\usepackage{caption}

%\usepackage{underscore}

\usepackage{xcolor}
\definecolor{BrilliantRed}      {RGB}{237, 41, 57} 	    % Red  VERY-Approx PANTONE RED
\definecolor{Periwinkle}        {RGB}{136, 132, 213} 	% Periwinkle  Approximate PANTONE 2715
\definecolor{Lavender}          {RGB}{240, 146, 205} 	% Lavender  Approximate PANTONE 223
\definecolor{ForestGreen}       {RGB}{0, 105, 60} 	    % ForestGreen  Approximate PANTONE 349
\definecolor{BrickRed}          {RGB}{170, 39, 47} 	    % BrickRed  Approximate PANTONE 1805
\definecolor{NavyBlue}          {RGB}{0, 70, 173}       % NavyBlue  Approximate PANTONE 293

\usepackage[colorlinks = true,
            linkcolor = Periwinkle,
            urlcolor  = Periwinkle,
            citecolor = Periwinkle,
            anchorcolor = Periwinkle]{hyperref} %produce hypertext links
            
\newcommand{\chk}[1]{{\color{BrickRed}{\textbf{Check:} #1}}}
\newcommand{\rmv}[1]{{\color{NavyBlue}{\textbf{Remove:} #1}}}
\newcommand{\rf}{{\color{ForestGreen}{\textbf{Ref}}}}
\newcommand{\reph}[1]{{\color{NavyBlue}{\textbf{Rephrase:} #1}}}
\newcommand{\dq}[1]{{\color{Lavender}{\textbf{Quote}}}\textit{ #1}}


%add icon for orcid id 
\usepackage{academicons}
\definecolor{orcidlogocol}{HTML}{A6CE39}
%Needs xelatex 
%\newcommand{\orcid}[1]{\href{https://orcid.org/#1}{\textcolor[HTML]{A6CE39}{\aiOrcid}}}

\usepackage{tikz}
\DeclareRobustCommand{\orcidicon}{
	\begin{tikzpicture}
	\draw[orcidlogocol, fill=orcidlogocol] (0,0) 
	circle [radius=0.16] 
	node[white] {{\fontfamily{qag}\selectfont \tiny ID}};
	\draw[white, fill=white] (-0.0625,0.095) 
	circle [radius=0.007];
	\end{tikzpicture}
	\hspace{-2mm}
}

\foreach \x in {A, ..., Z}{\expandafter\xdef\csname orcid\x\endcsname{\noexpand\href{https://orcid.org/\csname orcidauthor\x\endcsname}
			{\noexpand\orcidicon}}
}

\newcommand{\orcidauthorA}{0000-0000-0000-0000} % For author A

\author[1]{Author A \orcidA{}}
\affil[1]{Tokyo Institute of Technology}
\date{\today}


