# 🏆 Competição de PDDL - Light Up Akari

Este repositório contém os arquivos relacionados à competição de PDDL da disciplina de Fundamentos Lógicos de Inteligência Artificial, voltado para resolver mapas do jogo **Light Up Akari**.

## 📜 Sumário

- [Introdução](#📌-introdução)
- [Regras da Competição](#🎯-regras-da-competição)
- [Como classificar nesta modalidade](#como-classificar-nesta-modalidade)
- [Categorias](#🏅-categorias)
  - [⚡ AGL (Agility) - Mais Rápido](#⚡-agl-agility---mais-rápido)
  - [💡 OPT (Optimization) - Menos Lâmpadas](#💡-opt-optimization---menos-lâmpadas)
  - [🔍 SAT (Satisfaction) - Parcial](#🔍-sat-satisfaction---parcial)
- [Entrada](#📥-entrada)
- [Saída](#📤-saída)
- [Exemplo](#📝-exemplo)
  - [📥 Exemplo de entrada](#📥-exemplo-de-entrada)
  - [📤 Saída para o exemplo de entrada acima](#📤-saída-para-o-exemplo-de-entrada-acima)
- [Ranking, Mapas e Validador de Mapas](#📊-ranking-mapas-e-validador-de-mapas)
- [Apresentação dos Resultados e Explicação do Código](#🎤-apresentação-dos-resultados-e-explicação-do-código)

## 📌 Introdução

O **Light Up Akari** é um jogo de lógica no qual o objetivo é posicionar lâmpadas em uma grade para iluminar todas as células brancas, sem violar as restrições de posicionamento. Nesta competição, os participantes devem usar **PDDL (Planning Domain Definition Language)** para criar planos que resolvam diferentes mapas do jogo.

## 🎯 Regras da Competição

# Como classificar nesta modalidade

Nesta modalidade de classificação, o problema é dividido em três categorias: **AGILE, SATISFICING e OPTIMAL**. A pontuação é computada da seguinte forma:

## 1. Categoria AGILE:
- A pontuação é obtida pela fórmula:
log(TEMPO_DE_EXECUCAO) / log(30)

- Se o tempo de execução for menor ou igual a **1 segundo**, a pontuação é **1**.
- A track tem um **time limit** de **30s**.

## 2. Categoria SATISFICING:
- A pontuação é calculada pela fórmula:
C* / C

- Onde `C*` é a quantidade de passos do plano de referência e `C` é a quantidade de passos do plano encontrado.
- Quanto **menor** a quantidade de passos do plano encontrado em relação ao plano de referência, **melhor** será a pontuação.
- A track tem um **time limit** de **180s**.

## 3. Categoria OPTIMAL:
- O objetivo é **responder o plano ótimo**.
- O desempenho é **avaliado pela correção do plano** e não pela pontuação.
- A track tem um **time limit** de **180s**.

---

O **vencedor** será determinado com base na **soma dos pontos obtidos em todas as categorias**.




## 🏅 Categorias

A competição possui três categorias distintas:

### ⚡ AGL (Agility) - Mais Rápido

- Objetivo: Encontrar uma solução válida **no menor tempo de execução possível**.
- Não importa quantas lâmpadas são usadas, desde que a solução seja válida.

### 💡 OPT (Optimization) - Menos Lâmpadas

- Objetivo: Encontrar a **solução com o menor número possível de lâmpadas**.
- O tempo de execução pode ser maior, desde que a solução seja válida e otimizada.

### 🔍 SAT (Satisfaction) - Parcial

- Objetivo: Resolver o máximo possível de restrições do jogo dentro de um limite de tempo.
- Caso não seja possível encontrar uma solução completa, a pontuação será baseada no número de células iluminadas corretamente.

# 📥 Entrada

A entrada é composta por um conjunto de linhas, que deverão ser lidas da entrada padrão.  
As linhas representam a **matriz do jogo**, e suas dimensões serão descobertas conforme a leitura.  
A entrada termina em **EOF**.

Cada **célula** é representada por um **caractere**, conforme a descrição abaixo:

- `-` representa uma **célula branca**;
- `#` representa uma **célula preta**;
- `ø` representa uma **célula preta**, que **não deve ter nenhuma lâmpada adjacente**;
- `1` representa uma **célula preta**, que deve ter **exatamente uma lâmpada adjacente**;
- `2` representa uma **célula preta**, que deve ter **exatamente duas lâmpadas adjacentes**;
- `3` representa uma **célula preta**, que deve ter **exatamente três lâmpadas adjacentes**;
- `4` representa uma **célula preta**, que deve ter **exatamente quatro lâmpadas adjacentes**.

---

# 📤 Saída

A saída é composta por **uma única linha**, contendo as **coordenadas** das células onde as lâmpadas foram acesas, a fim de iluminar todas as células do tabuleiro.  

Cada clique é representado pelo **plano cartesiano** `(y, x)`, onde:
- `y` representa a linha (**iniciando em 0**);
- `x` representa a coluna (**iniciando em 0**).

Os pares `(y, x)` devem ser separados pelo caractere **`,`**, **exceto o último**, que **não** deve conter um separador no final. A saída deve conter **apenas uma quebra de linha**.

---

# 📝 Exemplo

## 📥 Exemplo de entrada

```
-#----
-1--3-
-----#
------
2-----
-3--1-
---0--
```

## 📤 Saída para o exemplo de entrada acima
```
(bulb 0 1);(bulb 0 5);(bulb 1 4);(bulb 1 6);(bulb 2 3);(bulb 3 0);
(bulb 4 5);(bulb 5 0);(bulb 5 2);(bulb 6 1);(bulb 6 6)
```

# 📊 Ranking, Mapas e Validador de Mapas

Veja o **ranking oficial**, visualize os mapas disponíveis e valide as soluções utilizando os links abaixo:

- 🔗 **[Ranking e Mapas da Competição](https://moj.naquadah.com.br/cgi-bin/score.sh/bcr-FLIA-2024_2-lightup)**
- 🛠️ **[Validador de Mapas](https://moj.naquadah.com.br/cgi-bin/score.sh/bcr-FLIA-2024_2-lightup)** 

Utilize o **validador de mapas** para criar mapas e testar as soluções.

# 🎤 Apresentação dos Resultados e Explicação do Código

A apresentação dos resultados da competição e a explicação detalhada do código utilizado estão disponíveis nos links abaixo:

- 🎥 **[Vídeo da Apresentação](https://youtu.be/P-bDiuL06Ks)**
- 📑 **[Slides da Apresentação](https://www.brunoribas.com.br/flia/2024-2/lightup/lightup-leonardo-sauma.pdf)**


