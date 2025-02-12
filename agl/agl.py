import os
import re
import sys

def criarTH(entrada):
    entrada = entrada.splitlines()
    tabela = {}
    id_linha = 1

    for y, linha in enumerate(entrada):
        for x, caractere in enumerate(linha):
            if caractere == '-':
                celula = (y, x)
                if celula not in tabela:
                    tabela[celula] = id_linha
                if x == len(linha) - 1 or linha[x + 1] != '-':
                    id_linha += 1

    id_coluna = 1
    for x in range(len(entrada[0])):
        for y in range(len(entrada)):
            if entrada[y][x] == '-':
                celula = (y, x)
                if celula in tabela:
                    tabela[celula] = (tabela[celula], id_coluna)
                if y == len(entrada) - 1 or entrada[y + 1][x] != '-':
                    id_coluna += 1

    return tabela

def escrever_whens(mapa, i, j, pddlDomain):
    direcoes = [(1, 0), (-1, 0), (0, 1), (0, -1)]
    for di, dj in direcoes:
        ni, nj = i + di, j + dj
        if 0 <= ni < len(mapa) and 0 <= nj < len(mapa[0]):
            if mapa[ni][nj] not in ['-', '#']:
                pddlDomain.write(f"""
        (when (count-zero c-{ni}-{nj})
                (and
                (not(count-zero c-{ni}-{nj})) (count-one c-{ni}-{nj})))
        (when (count-one c-{ni}-{nj})
                (and
                (not(count-one c-{ni}-{nj})) (count-two c-{ni}-{nj})))
        (when (count-two c-{ni}-{nj})
                (and
                (not(count-two c-{ni}-{nj})) (count-three c-{ni}-{nj})))
        (when (count-three c-{ni}-{nj})
                (and
                (not(count-three c-{ni}-{nj})) (count-four c-{ni}-{nj})))
        """)

def parser(input_mapa):
    linhas = input_mapa.splitlines()
    linhas = [linha for linha in linhas if linha]
    mapa = [list(linha) for linha in linhas]

    # Arquivo domain
    with open("domain.pddl", "w") as pddlDomain:
        pddlDomain.write("""(define (domain lighUp-akari)

(:requirements :strips :typing :conditional-effects :negative-preconditions :equality)

(:types 
line column cell - objects
)
""")
        pddlDomain.write("""\n(:predicates
(iluminado-linha ?l - line)
(iluminado-coluna ?cl - column)
(count-zero ?c - cell)
(count-one ?c - cell)
(count-two ?c - cell)
(count-three ?c - cell)
(count-four ?c - cell)
)\n\n""")

        for i in range(len(mapa)):
            for j in range(len(mapa[i])):
                if mapa[i][j] == '-':
                    l, c = TH_mapa[(i, j)]
                    pddlDomain.write(f"""
(:action bulb-c-{i}-{j}
:parameters ()
:precondition (and(not(iluminado-linha l{l}))(not(iluminado-coluna c{c})))
:effect (and (iluminado-linha l{l})(iluminado-coluna c{c})""")
                    if (
                        (i > 0 and mapa[i - 1][j] not in ['-', '#']) or
                        (i < len(mapa) - 1 and mapa[i + 1][j] not in ['-', '#']) or
                        (j > 0 and mapa[i][j - 1] not in ['-', '#']) or
                        (j < len(mapa[i]) - 1 and mapa[i][j + 1] not in ['-', '#'])
                    ):
                        escrever_whens(mapa, i, j, pddlDomain)
                    pddlDomain.write(")\n)\n")

        pddlDomain.write(")")

    # Arquivo problem
    with open("problem.pddl", "w") as pddlProblem:
        pddlProblem.write("""(define (problem p)
        (:domain lighUp-akari)
    """)
        pddlProblem.write("\n\t(:init\n\t\t")
        for i in range(len(mapa)):
            for j in range(len(mapa[i])):
                if mapa[i][j] in '01234':
                    pddlProblem.write(f"(count-zero c-{i}-{j})\n")                
        pddlProblem.write("\n\t)\n")

        pddlProblem.write("\n\t(:goal (and \n")
        for i in range(len(mapa)):
            for j in range(len(mapa[i])):
                if mapa[i][j] == '-':
                    l, c = TH_mapa[(i, j)]
                    pddlProblem.write(f"\t\t(or (iluminado-linha l{l}) (iluminado-coluna c{c}))\n")
                elif(mapa[i][j] == '0'):
                    pddlProblem.write(f"(count-zero c-{i}-{j}) ")
                elif(mapa[i][j] == '1'):
                    pddlProblem.write(f"(count-one c-{i}-{j}) ")
                elif(mapa[i][j] == '2'):
                    pddlProblem.write(f"(count-two c-{i}-{j}) ")
                elif(mapa[i][j] == '3'):
                    pddlProblem.write(f"(count-three c-{i}-{j}) ")
                elif(mapa[i][j] == '4'):
                    pddlProblem.write(f"(count-four c-{i}-{j}) ")
                else:
                    pass
        pddlProblem.write("\t\t)\n\t)\n)\n")

input_mapa = sys.stdin.read().strip()
TH_mapa = criarTH(input_mapa)
parser(input_mapa)

os.system("/tmp/dir/software/planners/madagascar/M -Q -A 5 -B 0.5 -S 1 -F 2 -P 2 -r 30 -N -X -o saida.txt domain.pddl problem.pddl > temp.txt")

def formatacao(file_path):
    bulbs = []
    regex = re.compile(r"c-(\d+)-(\d+)")
    with open(file_path, 'r') as file:
        for line in file:
            match = regex.search(line)
            if match:
                x, y = match.groups()
                bulbs.append(f"(bulb {x} {y})")
    result = "; ".join(bulbs)
    print(result)

file_path = "saida.txt"
formatacao(file_path)