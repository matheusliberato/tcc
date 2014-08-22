%%
%% Customizações do abnTeX2 (http://abnTeX2.googlecode.com) para a Universidade XXXX
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is Matheus Liberato, matheusliberatosbs@gmail.com
%%
%% Further information about abnTeX2 are available on http://abntex2.googlecode.com/
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ifspcjo-brasil-abntex2}[2013/04/01 v1.0 Modelo do Instituto Federal de São Paulo campus Campos do Jordão baseado em abnTeX2]

%
% Repassa todos os parametros a classe abntex2, 
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Pacotes necessários para compilar.    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{graphicx}
%\RequirePackage[scaled]{uarial}
%\renewcommand*\familydefault{\sfdefault}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Comando para exibir o ano de uma data %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\imprimirano}{\the\year}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %
%   ALTERA O TAMANHO DAS FONTES DOS CAPITULOS, SECOES ETC.      %
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %

\renewcommand{\ABNTEXchapterfont}{\sffamily}
\renewcommand{\ABNTEXchapterfontsize}{\normalsize\bfseries}

\renewcommand{\ABNTEXpartfont}{\ABNTEXchapterfont}
\renewcommand{\ABNTEXpartfontsize}{\ABNTEXchapterfontsize}

\renewcommand{\ABNTEXsectionfont}{\ABNTEXchapterfont}
\renewcommand{\ABNTEXsectionfontsize}{\normalsize\bfseries}

\renewcommand{\ABNTEXsubsectionfont}{\ABNTEXsectionfont}
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsubsectionfont}{\ABNTEXsubsectionfont}
\renewcommand{\ABNTEXsubsubsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsubsubsectionfont}{\ABNTEXsubsectionfont}
\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\normalsize}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %
%   ALTERA O TAMANHO DAS FONTES DOS CAPITULOS, SECOES ETC       %
%   NO SUMARIO
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %

% Tira o negrito das seções no sumário.
\renewcommand{\cftsectionfont}{}
\renewcommand{\cftsectionpagefont}{\cftsectionfont}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %
%   ALTERA A CRIACAO DA CAPA
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %
\renewcommand{\imprimircapa}{%
  \begin{capa}%
    \center
    \includegraphics[width=10cm, keepaspectratio]{img/ifsp-cjo.pdf}
    
    \vspace*{1cm}
    
    {\ABNTEXchapterfont\large\MakeTextUppercase\imprimirautor}

    \vfill
    {\ABNTEXchapterfont\bfseries\Large\MakeTextUppercase\imprimirtitulo}
    \vfill
    
    \large\MakeTextUppercase\imprimirlocal

    \large\imprimirano
    
    \vspace*{1cm}
  \end{capa}
}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %
%   ALTERA A CRIACAO DA FOLHA DE ROSTO
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %

\makeatletter

\renewcommand{\folhaderostocontent}{
\begin{center}    
{\ABNTEXchapterfont\large\MakeTextUppercase\imprimirautor}

\vspace*{\fill}\vspace*{\fill}

\begin{center}
\ABNTEXchapterfont\Large\bfseries\MakeTextUppercase\imprimirtitulo
\end{center}

\vspace*{\fill}

\abntex@ifnotempty{\imprimirpreambulo}{%
  \hspace{.45\textwidth}
  \begin{minipage}{.5\textwidth}
  \SingleSpacing
  \normalsize\imprimirpreambulo
  \vspace{0.5cm}
  {\par{\large\bfseries\imprimirorientadorRotulo}~\large\imprimirorientador\par}
  \end{minipage}%
  \vspace*{\fill}
}%

% Caso exista coorientador.
\abntex@ifnotempty{\imprimircoorientador}{%
  {\large\imprimircoorientadorRotulo~\imprimircoorientador}%
}%

\vspace*{\fill}

%Descomentar essa linha para exibir a instituicao
%{\abntex@ifnotempty{\imprimirinstituicao}{\imprimirinstituicao\vspace*{\fill}}}

{\large\MakeTextUppercase\imprimirlocal}

\par

{\large\imprimirano}
\vspace*{1cm}
\end{center}
}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %
%   ALTERA A CRIACAO DA FOLHA DE APROVACAO
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %

\newcommand{\folhadeaprovacaoteste}{
\begin{folhadeaprovacao}

  \begin{center}
    {\ABNTEXchapterfont\large\MakeTextUppercase\imprimirautor}

    \vspace*{\fill}
    \begin{center}
      {\ABNTEXchapterfont\bfseries\Large\MakeTextUppercase\imprimirtitulo}
    \end{center}
    \vspace*{0.5cm}
    \end{center}

    {\noindent\imprimirpreambulo\par}
    \vspace*{\fill}

    \begin{center}
      {{\large\bfseries\MakeTextUppercase{Banca Examinadora}} \par \imprimirdata}
      \vspace*{0.5cm}
    \end{center}

   \assinatura{\bfseries\imprimirorientadorRotulo~\imprimirorientador} 
   \assinatura{\bfseries Professor}
   \assinatura{\bfseries Professor}

   \vspace*{\fill}
   %\assinatura{\textbf{Professor} \\ Convidado 3}
   %\assinatura{\textbf{Professor} \\ Convidado 4}
      
   \begin{center}
    {\large\bfseries\MakeTextUppercase{Local} \par}
    \vspace*{0.3cm}
    {\large\imprimirinstituicao~-~{\itshape campus}~\imprimirlocal}
    \par
    {\large\imprimirlocal, SP}
    \par
    %{\large\imprimirdata}
    \vspace*{1cm}
  \end{center}
  
\end{folhadeaprovacao}
}

\makeatother