#!/opt/homebrew/bin/bash


mkdir "HW$1"
cd "HW$1"
echo "\documentclass[12pt, a4paper]{article}

\usepackage[margin=2.5cm]{geometry}
\usepackage{titling}   
\usepackage[english]{babel}
\usepackage{algorithm}
\usepackage[noend]{algpseudocode}
\usepackage{amsmath,amsthm,amssymb}
\usepackage{fancyhdr} 
\usepackage{xcolor}
\usepackage{colortbl}
\usepackage{minted}
\usepackage{hyperref}
\usepackage{graphicx}
\usepackage{enumitem}
\usepackage{xeCJK}
\usepackage{listings}
\setCJKmainfont{PingFang TC}
\definecolor{lightgray}{rgb}{0.95,0.95,0.95}

\lstset{
    backgroundcolor=\color{lightgray},
    basicstyle=\ttfamily\small,
    keywordstyle=\color{black},
    commentstyle=\color{green},
    stringstyle=\color{red},
    showstringspaces=false,
    breaklines=true,
    numberstyle=\tiny\color{gray},
    escapeinside=||,
}

\algrenewcommand\algorithmicfunction{}
\pagestyle{fancy}
\fancyhf{}
\rhead{Homework \#$1}
\lhead{\fontsize{11}{15}\selectfont Network Administration/System Administration (NTU, CSIE, Spring 2025)}
\cfoot{\thepage}

\title{\textbf{NASA Homework \#$1}}

\author{李馥安 \\\\ B13902019}

\date{\today}

\begin{document}
\setcounter{section}{-1}
\maketitle
\section{Reference}


\end{document}" > "hw$1.tex"

xelatex -shell-escape hw$1.tex > /dev/null

zathura hw$1.pdf
