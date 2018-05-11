%% Template baseado no modelo utilizado pelo curso de Ciência da Computação da Universidade Federal de Jataí
%% renanvinicius.com.br

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lapis-poli}[2011/12/23 Each]

%% Article options
\DeclareOption{10pt}{
  \PassOptionsToClass{\CurrentOption}{article}
}

%% Custom package options
\DeclareOption{sansserif}{
  \PassOptionsToPackage{\CurrentOption}{paxcommands}
}
\DeclareOption{neverindent}{
  \PassOptionsToPackage{\CurrentOption}{paxcommands}
}

%% Fallback
\DeclareOption*{
  \ClassWarning{myclass}{Unknown option '\CurrentOption'}
}

%% Execute default options
\ExecuteOptions{10pt}

%% Process given options
\ProcessOptions\relax

%% Load base
\LoadClass[11pt,a4paper]{article}

%% Load additional packages and commands.
\RequirePackage{custom}

%% Additional TeX/LaTeX code...

%% Largura da página

\RequirePackage[top=2.5cm, bottom=2cm, outer=1.5cm, inner=3.5cm]{geometry}

\usepackage[utf8]{inputenc}
\usepackage{helvet}
\usepackage[framemethod=tikz]{mdframed}

%% Comandos acadêmicos

\def\curso#1{\def\@curso{#1}}
\newcommand{\imprimircurso}{\@curso}

\def\disciplina#1{\def\@disciplina{#1}}
\newcommand{\imprimirdisciplina}{\@disciplina}

\def\unidade#1{\def\@unidade{#1}}
\newcommand{\imprimirunidade}{\@unidade}

\def\programa#1{\def\@programa{#1}}
\newcommand{\imprimirprograma}{\@programa}

\def\alunos#1{\def\@alunos{#1}}
\newcommand{\imprimiralunos}{\@alunos}

\def\numeroUSP#1{\def\@numeroUSP{#1}}
\newcommand{\imprimirnumeroUSP}{\@numeroUSP}

\def\datadeentrega#1{\def\@datadeentrega{#1}}
\newcommand{\imprimirdatadeentrega}{\@datadeentrega}

\def\professores#1{\def\@professores{#1}}
\newcommand{\imprimirprofessores}{\@professores}

\def\titulodotrabalho#1{\def\@titulodotrabalho{#1}}
\newcommand{\imprimirtitulodotrabalho}{\sffamily\scshape\bfseries \@titulodotrabalho}

%% Comando de tabela
\RequirePackage{booktabs}
\newenvironment{commontabular}[3]
  {
  \begin{tabular}{lcr}
   \toprule
   \bfseries Programa #1 & \bfseries #3 & \bfseries #2 \\
   \midrule}
  {\bottomrule
   \end{tabular}
   }
   
   
%% Cabeçalho 
\usepackage{lastpage}
\usepackage{tabularx}
\RequirePackage{fancyhdr}
 \setlength{\headheight}{21pt}
 
 
 
\pagestyle{fancy}
\fancyhf{}
\fancyheadoffset{\textwidth}
\renewcommand{\headrulewidth}{0pt}

\chead{
\fbox{
\begin{minipage}{443pt}
\centering \LARGE  \expandafter\MakeUppercase\expandafter \imprimirtitulodotrabalho
\end{minipage}
}
}

%% Logo da USP
\renewcommand{\refname}{Referências bibliográficas}
\RequirePackage{wallpaper}
\LRCornerWallPaper{1}{template/fundo-papel-pb.png}
\ULCornerWallPaper{0.4}{template/each-usp.png}

\endinput