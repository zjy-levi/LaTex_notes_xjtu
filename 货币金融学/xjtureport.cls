\ProvidesClass{xjtureport}
\LoadClass[table]{ctexart}
\RequirePackage{xeCJK}
\RequirePackage{CJKnumb}
\RequirePackage{graphicx}
\RequirePackage{subfigure}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage{listings}
\RequirePackage{float}
\RequirePackage{xcolor}
\RequirePackage{array}
\RequirePackage{mathtools}
\RequirePackage{float}
\RequirePackage{indentfirst}
\RequirePackage{zhnumber}
\RequirePackage{booktabs}
\RequirePackage{booktabs}
\linespread{1.2}
\geometry{top=1in,bottom=1in,left=1in,right=1in}
\setcounter{secnumdepth}{3}
% \renewcommand\thesection{\bfseries\CJKnumber{\arabic{section}}、}
% \renewcommand\thesubsection{\bfseries\arabic{subsection}.}
% \renewcommand\thesubsubsection{(\bfseries\arabic{subsubsection})}
\setlist[enumerate,1]{label=(\arabic*)}
\setlist[enumerate,2]{label=\alph*.}
\lfoot{}
\cfoot{}
\rfoot{\thepage}
\setCJKmainfont[
  Path = fonts/ ,
  Extension = .ttf ,
  BoldFont = SimSun ,
  ItalicFont = simkai ,
]{SimSun}

\titleformat*{\section}{\bfseries\large}
\titleformat*{\subsection}{\bfseries}
\titleformat*{\subsubsection}{\bfseries}
\graphicspath{{figures/}{figure/}{pictures/}%
{picture/}{pic/}{pics/}{image/}{images/}}

\titlespacing{\subsection}{1em}{*4}{*1.5}
\titlespacing{\subsubsection}{1em}{*4}{*1.5}



% 代码格式和颜色定义
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{comment}{rgb}{0.56,0.64,0.68}
% \lstset{
%   frame=tb,
%   aboveskip=3mm,
%   belowskip=3mm,
%   xleftmargin=2em,
%   xrightmargin=2em,
%   showstringspaces=false,
%   columns=flexible,
%   framerule=1pt,
%   rulecolor=\color{gray!35},
%   backgroundcolor=\color{gray!5},
%   basicstyle={\small\ttfamily},
%   numbers=none,
%   numberstyle=\tiny\color{gray},
%   keywordstyle=\color{blue},
%   commentstyle=\color{comment},
%   stringstyle=\color{dkgreen},
%   breaklines=true,
%   breakatwhitespace=true,
%   tabsize=2,
% }

% 我习惯的
\lstset{
	%backgroundcolor=\color{red!50!green!50!blue!50},%代码块背景色为浅灰色
%	rulesepcolor= \color{gray}, %代码块边框颜色
	breaklines=true,  %代码过长则换行
	numbers=left, %行号在左侧显示
	numberstyle= \small,%行号字体
	keywordstyle= \color{blue},%关键字颜色
    commentstyle=\color{orange}, %注释颜色
	% frame=shadowbox%用方框框住代码块
	frame=single,
	escapeinside=`` ,   % 代码包含中文
    backgroundcolor=\color[RGB]{245,245,244}%代码背景色
        }

% 信息
\newcommand\major[1]{\def\@major{#1}}
\newcommand\name[1]{\def\@name{#1}}
\newcommand\stuid[1]{\def\@stuid{#1}}
\newcommand\college[1]{\def\@college{#1}}
\renewcommand\date[1]{\def\@date{#1}}
\newcommand\lab[1]{\def\@lab{#1}}
\newcommand\course[1]{\def\@course{#1}}
\newcommand\instructor[1]{\def\@instructor{#1}}
\newcommand\grades[1]{\def\@grades{#1}}
\newcommand\expname[1]{\def\@expname{#1}}
\newcommand\exptype[1]{\def\@exptype{#1}}
\newcommand\partner[1]{\def\@partner{#1}}

% 页眉
\pagestyle{fancy}
\lhead{\@expname}
\chead{姓名：\@name}
\rhead{学号：\@stuid}

% 下划线定义
\def\xjtuu[#1]#2{
  \underline{\hbox to #1{\hfil#2\hfil}}}

% 首页头部
% \newcommand{\makeheader}{
% \begin{figure}[h]
%   \begin{minipage}{0.7\linewidth}
%     \centerline{\includegraphics[width=\linewidth]{head}}
%   \end{minipage}
%   \hfill
%   \begin{minipage}{.3\linewidth}
%     \raggedleft
%     \begin{tabular*}{.8\linewidth}{ll}
%       专业： & \xjtuu[70pt]\@major   \\
%       姓名： & \xjtuu[70pt]\@name    \\
%       学号： & \xjtuu[70pt]\@stuid   \\
%       日期： & \xjtuu[70pt]\@date \\
%       地点： & \xjtuu[70pt]\@lab
%     \end{tabular*}
%   \end{minipage}
% \end{figure}

% \begin{table}[!htbp]
%   \centering
%   \begin{tabular*}{\linewidth}{llllll}
%     课程名称： & \xjtuu[150pt]\@course   & 指导老师： & \xjtuu[50pt]\@instructor   & 成绩：       &  \xjtuu[50pt]\@grades \\
%     实验名称： & \xjtuu[150pt]\@expname & 实验类型： &\xjtuu[50pt]\@exptype & 同组学生姓名：& \xjtuu[50pt]\@partner
%   \end{tabular*}
% \end{table}
% \thispagestyle{empty}

% }

% 封面
\newcommand{\makecover}{
  \begin{center}
    \begin{center}
      \includegraphics[width=0.8\linewidth]{cover}
    \end{center}
    \vspace{1cm}
    \bfseries\huge{\@title}\\
    \vspace{0.5cm}
    \bfseries\Large{\@expname}
    \vspace{3cm}
    \begin{center}
      \Large
      \linespread{2}
      \centering
      \renewcommand\arraystretch{1.6}
      \begin{tabular}{p{3cm}p{6cm}}
        \bfseries{课程名称：} & \@course \\ \cline{2-2}
        \bfseries{姓名：}     & \@name   \\ \cline{2-2}
        % \bfseries{学院：}     & \@college \\ \cline{2-2}
        \bfseries{专业：}     & \@major  \\ \cline{2-2}
        \bfseries{学号：}     & \@stuid  \\ \cline{2-2}
        \bfseries{指导老师：} & \@instructor  \\ \cline{2-2}
      \end{tabular}
    \end{center}
    \vspace{2cm}
    \Large{\@date}
  \end{center}
  \thispagestyle{empty}
  \newpage
}
