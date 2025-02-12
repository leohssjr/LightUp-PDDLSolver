import os
import sys

def check_adj(matriz, x, y):
    if matriz[x][y] != '-':
        return None
    
    vizinhos = [
        (x-1, y), (x+1, y),
        (x, y-1), (x, y+1)
    ]
    
    adjacentes = []
    for i, j in vizinhos:
        if 0 <= i < len(matriz) and 0 <= j < len(matriz[0]):
            if matriz[i][j] in "01234": 
                adjacentes.append((int(matriz[i][j]), i, j))
    
    return adjacentes if adjacentes else None

def calcOn(mapa, i, j, caracteres_bloqueio):
    iluminados = set()
    for k in range(i, len(mapa)):
        if mapa[k][j] in caracteres_bloqueio:
            break
        if mapa[k][j] == '-':
            iluminados.add((k, j))

    for k in range(i - 1, -1, -1):
        if mapa[k][j] in caracteres_bloqueio:
            break
        if mapa[k][j] == '-':
            iluminados.add((k, j))

    for l in range(j, len(mapa[i])):
        if mapa[i][l] in caracteres_bloqueio:
            break
        if mapa[i][l] == '-':
            iluminados.add((i, l))

    for l in range(j - 1, -1, -1):
        if mapa[i][l] in caracteres_bloqueio:
            break
        if mapa[i][l] == '-':
            iluminados.add((i, l))
    return iluminados

def escrever_adj(mapa, i, j, pddlDomain):
    direcoes = [
        (1, 0),
        (-1, 0),
        (0, 1),
        (0, -1)
    ]

    for di, dj in direcoes:
        ni, nj = i + di, j + dj
        if 0 <= ni < len(mapa) and 0 <= nj < len(mapa[0]):
            if mapa[ni][nj] != '-' and mapa[ni][nj] != '#':
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

# arquivo domain
    with open("domain.pddl", "w") as pddlDomain:
        caracteres_bloqueio = ['#', '0', '1', '2', '3', '4']
        pddlDomain.write("""(define (domain lighUp-akari)

(:requirements :strips :typing :conditional-effects :negative-preconditions :equality)

(:types 
cell
)
                         
(:constants
""")
        for i in range(len(mapa)):
            for j in range(len(mapa[i])):
                pddlDomain.write(f"c-{i}-{j} ")
        pddlDomain.write("- cell\n)\n")
        pddlDomain.write("""\n(:predicates 
(lampada-em ?c - cell)
(iluminado ?c - cell)
(count-zero ?c - cell)
(count-one ?c - cell)
(count-two ?c - cell)
(count-three ?c - cell)
(count-four ?c - cell)
)\n\n""")

        for i in range(len(mapa)):
            for j in range(len(mapa[i])):
                if mapa[i][j] == '-':
                    res = check_adj(mapa, i, j)

                    if res:
                        nums_adj = [adj[0] for adj in res]

                        if 0 in nums_adj:
                            pass

                        elif 1 in nums_adj:
                            iluminados = calcOn(mapa, i, j, caracteres_bloqueio)
                            pddlDomain.write(f"""
        (:action bulb-c-{i}-{j}-1
        :parameters ()
        :precondition (and (not(iluminado c-{i}-{j})) (count-zero c-{res[0][1]}-{res[0][2]}) (not(count-one c-{res[0][1]}-{res[0][2]})))
        :effect (and  """)
                            
                            for k, l in iluminados:
                                pddlDomain.write(f"(iluminado c-{k}-{l}) ")

                            if (
                                (i > 0 and mapa[i-1][j] not in ['-', '#']) or
                                (i < len(mapa) - 1 and mapa[i+1][j] not in ['-', '#']) or
                                (j > 0 and mapa[i][j-1] not in ['-', '#']) or
                                (j < len(mapa[i]) - 1 and mapa[i][j+1] not in ['-', '#'])
                            ):
                                escrever_adj(mapa, i, j, pddlDomain)
                            pddlDomain.write("\n\t)\n\t)\n")

                        elif 2 in nums_adj:
                            iluminados = calcOn(mapa, i, j, caracteres_bloqueio)
                            pddlDomain.write(f"""
        (:action bulb-c-{i}-{j}-1
        :parameters ()
        :precondition (and (not(iluminado c-{i}-{j})) (count-zero c-{res[0][1]}-{res[0][2]}) (not(count-one c-{res[0][1]}-{res[0][2]})))
        :effect (and  """)
                            
                            for k, l in iluminados:
                                pddlDomain.write(f"(iluminado c-{k}-{l}) ")

                            if (
                                (i > 0 and mapa[i-1][j] not in ['-', '#']) or
                                (i < len(mapa) - 1 and mapa[i+1][j] not in ['-', '#']) or
                                (j > 0 and mapa[i][j-1] not in ['-', '#']) or
                                (j < len(mapa[i]) - 1 and mapa[i][j+1] not in ['-', '#'])
                            ):
                                escrever_adj(mapa, i, j, pddlDomain)
                            pddlDomain.write("\n\t)\n\t)\n")

                            pddlDomain.write(f"""
        (:action bulb-c-{i}-{j}-2
        :parameters ()
        :precondition (and (not(iluminado c-{i}-{j})) (count-one c-{res[0][1]}-{res[0][2]}) (not(count-two c-{res[0][1]}-{res[0][2]})))
        :effect (and  """)
                            
                            for k, l in iluminados:
                                pddlDomain.write(f"(iluminado c-{k}-{l}) ")

                            if (
                                (i > 0 and mapa[i-1][j] not in ['-', '#']) or
                                (i < len(mapa) - 1 and mapa[i+1][j] not in ['-', '#']) or
                                (j > 0 and mapa[i][j-1] not in ['-', '#']) or
                                (j < len(mapa[i]) - 1 and mapa[i][j+1] not in ['-', '#'])
                            ):
                                escrever_adj(mapa, i, j, pddlDomain)
                            
                            pddlDomain.write("\n\t)\n\t)\n")
                        
                        elif 3 in nums_adj:
                            iluminados = calcOn(mapa, i, j, caracteres_bloqueio)
                            pddlDomain.write(f"""
            (:action bulb-c-{i}-{j}-1
            :parameters ()
            :precondition (and (not(iluminado c-{i}-{j})) (count-zero c-{res[0][1]}-{res[0][2]}) (not(count-one c-{res[0][1]}-{res[0][2]})))
            :effect (and  """)
                            
                            for k, l in iluminados:
                                pddlDomain.write(f"(iluminado c-{k}-{l}) ")

                            if (
                                (i > 0 and mapa[i-1][j] not in ['-', '#']) or
                                (i < len(mapa) - 1 and mapa[i+1][j] not in ['-', '#']) or
                                (j > 0 and mapa[i][j-1] not in ['-', '#']) or
                                (j < len(mapa[i]) - 1 and mapa[i][j+1] not in ['-', '#'])
                            ):
                                escrever_adj(mapa, i, j, pddlDomain)
                            pddlDomain.write("\n\t)\n\t)\n")

                            pddlDomain.write(f"""
        (:action bulb-c-{i}-{j}-2
        :parameters ()
        :precondition (and (not(iluminado c-{i}-{j})) (count-one c-{res[0][1]}-{res[0][2]}) (not(count-two c-{res[0][1]}-{res[0][2]})))
        :effect (and  """)
                            
                            for k, l in iluminados:
                                pddlDomain.write(f"(iluminado c-{k}-{l}) ")

                            if (
                                (i > 0 and mapa[i-1][j] not in ['-', '#']) or
                                (i < len(mapa) - 1 and mapa[i+1][j] not in ['-', '#']) or
                                (j > 0 and mapa[i][j-1] not in ['-', '#']) or
                                (j < len(mapa[i]) - 1 and mapa[i][j+1] not in ['-', '#'])
                            ):
                                escrever_adj(mapa, i, j, pddlDomain)
                            pddlDomain.write("\n\t)\n\t)\n")

                            pddlDomain.write(f"""
        (:action bulb-c-{i}-{j}-3
        :parameters ()
        :precondition (and (not(iluminado c-{i}-{j})) (count-two c-{res[0][1]}-{res[0][2]}) (not(count-three c-{res[0][1]}-{res[0][2]})))
        :effect (and  """)
                            
                            for k, l in iluminados:
                                pddlDomain.write(f"(iluminado c-{k}-{l}) ")

                            if (
                                (i > 0 and mapa[i-1][j] not in ['-', '#']) or
                                (i < len(mapa) - 1 and mapa[i+1][j] not in ['-', '#']) or
                                (j > 0 and mapa[i][j-1] not in ['-', '#']) or
                                (j < len(mapa[i]) - 1 and mapa[i][j+1] not in ['-', '#'])
                            ):
                                escrever_adj(mapa, i, j, pddlDomain)
                            pddlDomain.write("\n\t)\n\t)\n")

                        elif 4 in nums_adj:
                            iluminados = calcOn(mapa, i, j, caracteres_bloqueio)
                            pddlDomain.write(f"""
            (:action bulb-c-{i}-{j}-1
            :parameters ()
            :precondition (and (not(iluminado c-{i}-{j})) (count-zero c-{res[0][1]}-{res[0][2]}) (not(count-one c-{res[0][1]}-{res[0][2]})))
            :effect (and  """)
                            
                            for k, l in iluminados:
                                pddlDomain.write(f"(iluminado c-{k}-{l}) ")

                            if (
                                (i > 0 and mapa[i-1][j] not in ['-', '#']) or
                                (i < len(mapa) - 1 and mapa[i+1][j] not in ['-', '#']) or
                                (j > 0 and mapa[i][j-1] not in ['-', '#']) or
                                (j < len(mapa[i]) - 1 and mapa[i][j+1] not in ['-', '#'])
                            ):
                                escrever_adj(mapa, i, j, pddlDomain)
                            pddlDomain.write("\n\t)\n\t)\n")

                            pddlDomain.write(f"""
        (:action bulb-c-{i}-{j}-2
        :parameters ()
        :precondition (and (not(iluminado c-{i}-{j})) (count-one c-{res[0][1]}-{res[0][2]}) (not(count-two c-{res[0][1]}-{res[0][2]})))
        :effect (and  """)
                            
                            for k, l in iluminados:
                                pddlDomain.write(f"(iluminado c-{k}-{l}) ")

                            if (
                                (i > 0 and mapa[i-1][j] not in ['-', '#']) or
                                (i < len(mapa) - 1 and mapa[i+1][j] not in ['-', '#']) or
                                (j > 0 and mapa[i][j-1] not in ['-', '#']) or
                                (j < len(mapa[i]) - 1 and mapa[i][j+1] not in ['-', '#'])
                            ):
                                escrever_adj(mapa, i, j, pddlDomain)
                            pddlDomain.write("\n\t)\n\t)\n")

                            pddlDomain.write(f"""
        (:action bulb-c-{i}-{j}-3
        :parameters ()
        :precondition (and (not(iluminado c-{i}-{j})) (count-two c-{res[0][1]}-{res[0][2]}) (not(count-three c-{res[0][1]}-{res[0][2]})))
        :effect (and  """)
                            
                            for k, l in iluminados:
                                pddlDomain.write(f"(iluminado c-{k}-{l}) ")

                            if (
                                (i > 0 and mapa[i-1][j] not in ['-', '#']) or
                                (i < len(mapa) - 1 and mapa[i+1][j] not in ['-', '#']) or
                                (j > 0 and mapa[i][j-1] not in ['-', '#']) or
                                (j < len(mapa[i]) - 1 and mapa[i][j+1] not in ['-', '#'])
                            ):
                                escrever_adj(mapa, i, j, pddlDomain)
                            pddlDomain.write("\n\t)\n\t)\n")

                            pddlDomain.write(f"""
        (:action bulb-c-{i}-{j}-4
        :parameters ()
        :precondition (and (not(iluminado c-{i}-{j})) (count-three c-{res[0][1]}-{res[0][2]}) (not(count-four c-{res[0][1]}-{res[0][2]})))
        :effect (and  """)
                            
                            for k, l in iluminados:
                                pddlDomain.write(f"(iluminado c-{k}-{l}) ")

                            if (
                                (i > 0 and mapa[i-1][j] not in ['-', '#']) or
                                (i < len(mapa) - 1 and mapa[i+1][j] not in ['-', '#']) or
                                (j > 0 and mapa[i][j-1] not in ['-', '#']) or
                                (j < len(mapa[i]) - 1 and mapa[i][j+1] not in ['-', '#'])
                            ):
                                escrever_adj(mapa, i, j, pddlDomain)
                            pddlDomain.write("\n\t)\n\t)\n")

                    else:
                        iluminados = calcOn(mapa, i, j, caracteres_bloqueio)
                        pddlDomain.write(f"""
        (:action bulb-c-{i}-{j}
        :parameters ()
        :precondition (and (not(iluminado c-{i}-{j})))
        :effect (and  """)

                        for k, l in iluminados:
                            pddlDomain.write(f"(iluminado c-{k}-{l}) ")

                        pddlDomain.write(")\n\t)\n")
        pddlDomain.write(")")


# arquivo problem
    with open("problem.pddl", "w") as pddlProblem:
        pddlProblem.write("""(define (problem p)
    (:domain lighUp-akari)

""")
        pddlProblem.write("\n\t(:init\n\t\t")
        for i in range(len(mapa)):
            for j in range(len(mapa[i])):
                if(mapa[i][j] == '0' or mapa[i][j] == '1' or mapa[i][j] == '2' or mapa[i][j] == '3' or mapa[i][j] == '4'):
                    pddlProblem.write(f"(count-zero c-{i}-{j}) ")
                # if(mapa[i][j] != '#'):
                #     pddlProblem.write(f"(count-zero c-{i}-{j}) ")
                
        pddlProblem.write("\n\t)\n")

        pddlProblem.write("\n\t(:goal (and \n\t\t")
        for i in range(len(mapa)):
            for j in range(len(mapa[i])):
                if(mapa[i][j] == '-'):
                    pddlProblem.write(f"(iluminado c-{i}-{j}) ")
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
                pddlProblem.write("\n\t\t")
        pddlProblem.write(")))\n")

input_mapa = sys.stdin.read().strip()

parser(input_mapa)
os.system("/tmp/dir/software/planners/downward-fdss23/fast-downward.py --alias seq-opt-fdss-2023 --overall-time-limit 180 domain.pddl problem.pddl")

def formatacao(file_path):
    try:
        with open(file_path, 'r') as file:
            lines = file.readlines()
        output = []
        for line in lines:
            line = line.strip()
            if line.startswith("(") and not line.startswith(";"):
                parts = line.split('-')
                x = parts[2]
                y = parts[3].split(')')[0]
                output.append(f"(bulb {x} {y})")
        print('; '.join(output).replace(' )', ')'))
    except FileNotFoundError:
        exit(120)
    except Exception as e:
        exit(120)
file_path = 'sas_plan'
formatacao(file_path)
