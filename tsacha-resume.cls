%%% General %%% 
\ProvidesClass{tsacha-resume}
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}
\usepackage{lmodern}
\usepackage[francais]{babel}
\renewcommand{\FrenchLabelItem}{}
\usepackage{xifthen}
\usepackage{hyperref}

%% Colors
\usepackage[usenames,dvipsnames]{xcolor}

\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}
\definecolor{date}{HTML}{666666}

%% Fonts

\usepackage{scrextend}
\changefontsizes[10pt]{10pt}

\usepackage{fontspec}
\setmainfont[Color=primary, Path = fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}

%%% Customisation %%%

\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\usepackage{titlesec}

\titleformat{\section}{ % Customize the large section titles
  \vspace{0.1cm}
  \color{headings}
  \fontspec[Path = fonts/lato/]{Lato-Lig}
  \fontsize{16pt}{24pt}
  \selectfont
  \raggedright
  \uppercase
}{}{0em}{}

\titleformat{\subsection}{ % Customize the subsections and places worked/studied titles
  \vspace{0.2cm}
  \color{subheadings}
  \fontspec[Path = fonts/lato/]{Lato-Bol}
  \fontsize{12pt}{12pt}
  \selectfont
  \bfseries
  \uppercase
}{}{0em}{}

\titleformat{\subsubsection}{
  \fontspec[Path = fonts/raleway/]{Raleway-Medium}
  \color{headings}
  \vspace{0.15cm}
  \bfseries
}{}{0em}{}

\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\titlespacing{\subsubsection}{0pt}{0pt}{0pt}

%%% MàJ %%%

\usepackage[absolute]{textpos}
\usepackage[french]{isodate}

\setlength{\TPHorizModule}{0.01\paperwidth}
\setlength{\TPVertModule}{0.01\paperwidth}
\newcommand{\lastupdated}
{
  \begin{textblock}{25}(83,2)
    \color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}
    \fontsize{8pt}{10pt}
    \selectfont
    MàJ : \today
  \end{textblock}
}


%% Commands definitions

\def\lname#1{\def\lname{#1}}
\newcommand{\printlname}{\lname}

\def\fname#1{\def\fname{#1}}
\newcommand{\printfname}{\fname}

\def\fonction#1{\def\fonction{#1}}
\newcommand{\printfonction}{\fonction}

\def\mail#1{\def\mail{#1}}
\newcommand{\printmail}{\mail}

\def\phone#1{\def\phone{#1}}
\newcommand{\printphone}{\phone}

\newcommand{\study}[5]{
  \raggedright
  \vspace{0.1cm}
  {
    \color{subheadings}
    \fontspec[Path = fonts/lato/]{Lato-Bol}
    \fontsize{12pt}{12pt}
    \selectfont
    {
      \bfseries
      \uppercase{#1\\}
      \normalfont
    }
  }
  {
    \color{subheadings}
    \fontspec[Path = fonts/raleway/]{Raleway-Medium}
    \fontsize{11pt}{13pt}
    \selectfont
    {
      #2\\
      \normalfont
    }
  }
  {
    \color{headings}
    \fontspec[Path = fonts/raleway/]{Raleway-Medium}
    \fontsize{10pt}{12pt}
    \selectfont
    {
      #3 | #4 \ifthenelse{\isempty{#5}}{\\}{| #5\\}
      \normalfont
    }
  }
  \vspace{0.1cm}
}
\newcommand{\company}[4]{
  {
    \vspace{0.1cm}
    \fontsize{13pt}{11pt}
    \selectfont
    \textbf{\uppercase{#1}} | #2\\
    {
      \fontsize{10pt}{10pt}
      \selectfont
      #3 | #4\\
    }
  }
}
\newcommand{\responsability}[3]{
  {
    \vspace{0.15cm}
    \fontsize{10pt}{9pt}
    \textbf{#1} — #2
    \ifthenelse{\isempty{#3}}{}{— #3}
    \vspace{0.1cm}\\
  }
}
\newcommand{\xp}[2]{
  \vspace{0.1cm}
  \fontsize{8pt}{8pt}
  \begin{minipage}[t]{0.02\textwidth}
    \ 
  \end{minipage}
  \begin{minipage}[t]{0.02\textwidth}
    \textbullet
  \end{minipage}
  \begin{minipage}[t]{0.96\textwidth}
    \raggedright
    \ifthenelse{\isempty{#2}}{#1}{#1\\\textit{#2}}
  \end{minipage}\vspace{0.1cm}
}
\newcommand{\subxp}[1]{
  \begin{minipage}[t]{0.15\textwidth}
    \ 
  \end{minipage}
  \begin{minipage}[t]{0.85\textwidth}
    — #1
  \end{minipage}\vspace{0.1cm}\\
}
\newcommand{\cvline}[1]{#1\\}
\newcommand{\cvlink}[2]{\textbf{#1 :}\\\href{#2}{#2}\\}


\newcommand{\cvhead}{
  \centering{
    \fontsize{40pt}{60pt}
    \fontspec[Path = fonts/lato/]{Lato-Hai}\selectfont \printfname
    \fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont \printlname
  } \\[5pt]
  \centering{
    \color{headings}
    \fontspec[Path = fonts/raleway/]{Raleway-Medium}
    \fontsize{11pt}{14pt}
    \selectfont
    \printfonction \\
    \href{mailto:\printmail}{\printmail}\ |\ \printphone
  }
  \noindent
  \makebox[\linewidth]
  {
    \color{headings}
    \rule{\paperwidth}{0.4pt}
  }
  \vspace{-5pt}
}

