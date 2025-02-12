(define (domain lighUp-akari)

(:requirements :strips :typing :conditional-effects :negative-preconditions :equality)

(:types 
line column cell - objects
)

(:predicates
(iluminado-linha ?l - line)
(iluminado-coluna ?cl - column)
(count-zero ?c - cell)
(count-one ?c - cell)
(count-two ?c - cell)
(count-three ?c - cell)
(count-four ?c - cell)
)


(:action bulb-c-0-0
:parameters ()
:precondition (and(not(iluminado-linha l1))(not(iluminado-coluna c1)))
:effect (and (iluminado-linha l1)(iluminado-coluna c1))
)

(:action bulb-c-0-1
:parameters ()
:precondition (and(not(iluminado-linha l1))(not(iluminado-coluna c2)))
:effect (and (iluminado-linha l1)(iluminado-coluna c2)
        (when (count-zero c-0-2)
                (and
                (not(count-zero c-0-2)) (count-one c-0-2)))
        (when (count-one c-0-2)
                (and
                (not(count-one c-0-2)) (count-two c-0-2)))
        (when (count-two c-0-2)
                (and
                (not(count-two c-0-2)) (count-three c-0-2)))
        (when (count-three c-0-2)
                (and
                (not(count-three c-0-2)) (count-four c-0-2)))
        )
)

(:action bulb-c-0-3
:parameters ()
:precondition (and(not(iluminado-linha l2))(not(iluminado-coluna c6)))
:effect (and (iluminado-linha l2)(iluminado-coluna c6)
        (when (count-zero c-0-2)
                (and
                (not(count-zero c-0-2)) (count-one c-0-2)))
        (when (count-one c-0-2)
                (and
                (not(count-one c-0-2)) (count-two c-0-2)))
        (when (count-two c-0-2)
                (and
                (not(count-two c-0-2)) (count-three c-0-2)))
        (when (count-three c-0-2)
                (and
                (not(count-three c-0-2)) (count-four c-0-2)))
        )
)

(:action bulb-c-0-4
:parameters ()
:precondition (and(not(iluminado-linha l2))(not(iluminado-coluna c7)))
:effect (and (iluminado-linha l2)(iluminado-coluna c7))
)

(:action bulb-c-0-5
:parameters ()
:precondition (and(not(iluminado-linha l2))(not(iluminado-coluna c9)))
:effect (and (iluminado-linha l2)(iluminado-coluna c9))
)

(:action bulb-c-0-6
:parameters ()
:precondition (and(not(iluminado-linha l2))(not(iluminado-coluna c11)))
:effect (and (iluminado-linha l2)(iluminado-coluna c11))
)

(:action bulb-c-1-0
:parameters ()
:precondition (and(not(iluminado-linha l3))(not(iluminado-coluna c1)))
:effect (and (iluminado-linha l3)(iluminado-coluna c1))
)

(:action bulb-c-1-1
:parameters ()
:precondition (and(not(iluminado-linha l3))(not(iluminado-coluna c2)))
:effect (and (iluminado-linha l3)(iluminado-coluna c2))
)

(:action bulb-c-1-2
:parameters ()
:precondition (and(not(iluminado-linha l3))(not(iluminado-coluna c4)))
:effect (and (iluminado-linha l3)(iluminado-coluna c4)
        (when (count-zero c-0-2)
                (and
                (not(count-zero c-0-2)) (count-one c-0-2)))
        (when (count-one c-0-2)
                (and
                (not(count-one c-0-2)) (count-two c-0-2)))
        (when (count-two c-0-2)
                (and
                (not(count-two c-0-2)) (count-three c-0-2)))
        (when (count-three c-0-2)
                (and
                (not(count-three c-0-2)) (count-four c-0-2)))
        )
)

(:action bulb-c-1-3
:parameters ()
:precondition (and(not(iluminado-linha l3))(not(iluminado-coluna c6)))
:effect (and (iluminado-linha l3)(iluminado-coluna c6))
)

(:action bulb-c-1-4
:parameters ()
:precondition (and(not(iluminado-linha l3))(not(iluminado-coluna c7)))
:effect (and (iluminado-linha l3)(iluminado-coluna c7))
)

(:action bulb-c-1-5
:parameters ()
:precondition (and(not(iluminado-linha l3))(not(iluminado-coluna c9)))
:effect (and (iluminado-linha l3)(iluminado-coluna c9))
)

(:action bulb-c-1-6
:parameters ()
:precondition (and(not(iluminado-linha l3))(not(iluminado-coluna c11)))
:effect (and (iluminado-linha l3)(iluminado-coluna c11))
)

(:action bulb-c-2-0
:parameters ()
:precondition (and(not(iluminado-linha l4))(not(iluminado-coluna c1)))
:effect (and (iluminado-linha l4)(iluminado-coluna c1))
)

(:action bulb-c-2-1
:parameters ()
:precondition (and(not(iluminado-linha l4))(not(iluminado-coluna c2)))
:effect (and (iluminado-linha l4)(iluminado-coluna c2))
)

(:action bulb-c-2-2
:parameters ()
:precondition (and(not(iluminado-linha l4))(not(iluminado-coluna c4)))
:effect (and (iluminado-linha l4)(iluminado-coluna c4))
)

(:action bulb-c-2-3
:parameters ()
:precondition (and(not(iluminado-linha l4))(not(iluminado-coluna c6)))
:effect (and (iluminado-linha l4)(iluminado-coluna c6))
)

(:action bulb-c-2-4
:parameters ()
:precondition (and(not(iluminado-linha l4))(not(iluminado-coluna c7)))
:effect (and (iluminado-linha l4)(iluminado-coluna c7)
        (when (count-zero c-3-4)
                (and
                (not(count-zero c-3-4)) (count-one c-3-4)))
        (when (count-one c-3-4)
                (and
                (not(count-one c-3-4)) (count-two c-3-4)))
        (when (count-two c-3-4)
                (and
                (not(count-two c-3-4)) (count-three c-3-4)))
        (when (count-three c-3-4)
                (and
                (not(count-three c-3-4)) (count-four c-3-4)))
        )
)

(:action bulb-c-2-6
:parameters ()
:precondition (and(not(iluminado-linha l5))(not(iluminado-coluna c11)))
:effect (and (iluminado-linha l5)(iluminado-coluna c11))
)

(:action bulb-c-3-0
:parameters ()
:precondition (and(not(iluminado-linha l6))(not(iluminado-coluna c1)))
:effect (and (iluminado-linha l6)(iluminado-coluna c1))
)

(:action bulb-c-3-2
:parameters ()
:precondition (and(not(iluminado-linha l7))(not(iluminado-coluna c4)))
:effect (and (iluminado-linha l7)(iluminado-coluna c4)
        (when (count-zero c-4-2)
                (and
                (not(count-zero c-4-2)) (count-one c-4-2)))
        (when (count-one c-4-2)
                (and
                (not(count-one c-4-2)) (count-two c-4-2)))
        (when (count-two c-4-2)
                (and
                (not(count-two c-4-2)) (count-three c-4-2)))
        (when (count-three c-4-2)
                (and
                (not(count-three c-4-2)) (count-four c-4-2)))
        )
)

(:action bulb-c-3-3
:parameters ()
:precondition (and(not(iluminado-linha l7))(not(iluminado-coluna c6)))
:effect (and (iluminado-linha l7)(iluminado-coluna c6)
        (when (count-zero c-3-4)
                (and
                (not(count-zero c-3-4)) (count-one c-3-4)))
        (when (count-one c-3-4)
                (and
                (not(count-one c-3-4)) (count-two c-3-4)))
        (when (count-two c-3-4)
                (and
                (not(count-two c-3-4)) (count-three c-3-4)))
        (when (count-three c-3-4)
                (and
                (not(count-three c-3-4)) (count-four c-3-4)))
        )
)

(:action bulb-c-3-5
:parameters ()
:precondition (and(not(iluminado-linha l8))(not(iluminado-coluna c10)))
:effect (and (iluminado-linha l8)(iluminado-coluna c10)
        (when (count-zero c-3-4)
                (and
                (not(count-zero c-3-4)) (count-one c-3-4)))
        (when (count-one c-3-4)
                (and
                (not(count-one c-3-4)) (count-two c-3-4)))
        (when (count-two c-3-4)
                (and
                (not(count-two c-3-4)) (count-three c-3-4)))
        (when (count-three c-3-4)
                (and
                (not(count-three c-3-4)) (count-four c-3-4)))
        )
)

(:action bulb-c-3-6
:parameters ()
:precondition (and(not(iluminado-linha l8))(not(iluminado-coluna c11)))
:effect (and (iluminado-linha l8)(iluminado-coluna c11))
)

(:action bulb-c-4-0
:parameters ()
:precondition (and(not(iluminado-linha l9))(not(iluminado-coluna c1)))
:effect (and (iluminado-linha l9)(iluminado-coluna c1))
)

(:action bulb-c-4-1
:parameters ()
:precondition (and(not(iluminado-linha l9))(not(iluminado-coluna c3)))
:effect (and (iluminado-linha l9)(iluminado-coluna c3)
        (when (count-zero c-4-2)
                (and
                (not(count-zero c-4-2)) (count-one c-4-2)))
        (when (count-one c-4-2)
                (and
                (not(count-one c-4-2)) (count-two c-4-2)))
        (when (count-two c-4-2)
                (and
                (not(count-two c-4-2)) (count-three c-4-2)))
        (when (count-three c-4-2)
                (and
                (not(count-three c-4-2)) (count-four c-4-2)))
        )
)

(:action bulb-c-4-3
:parameters ()
:precondition (and(not(iluminado-linha l10))(not(iluminado-coluna c6)))
:effect (and (iluminado-linha l10)(iluminado-coluna c6)
        (when (count-zero c-4-2)
                (and
                (not(count-zero c-4-2)) (count-one c-4-2)))
        (when (count-one c-4-2)
                (and
                (not(count-one c-4-2)) (count-two c-4-2)))
        (when (count-two c-4-2)
                (and
                (not(count-two c-4-2)) (count-three c-4-2)))
        (when (count-three c-4-2)
                (and
                (not(count-three c-4-2)) (count-four c-4-2)))
        )
)

(:action bulb-c-4-4
:parameters ()
:precondition (and(not(iluminado-linha l10))(not(iluminado-coluna c8)))
:effect (and (iluminado-linha l10)(iluminado-coluna c8)
        (when (count-zero c-3-4)
                (and
                (not(count-zero c-3-4)) (count-one c-3-4)))
        (when (count-one c-3-4)
                (and
                (not(count-one c-3-4)) (count-two c-3-4)))
        (when (count-two c-3-4)
                (and
                (not(count-two c-3-4)) (count-three c-3-4)))
        (when (count-three c-3-4)
                (and
                (not(count-three c-3-4)) (count-four c-3-4)))
        )
)

(:action bulb-c-4-5
:parameters ()
:precondition (and(not(iluminado-linha l10))(not(iluminado-coluna c10)))
:effect (and (iluminado-linha l10)(iluminado-coluna c10))
)

(:action bulb-c-4-6
:parameters ()
:precondition (and(not(iluminado-linha l10))(not(iluminado-coluna c11)))
:effect (and (iluminado-linha l10)(iluminado-coluna c11))
)

(:action bulb-c-5-0
:parameters ()
:precondition (and(not(iluminado-linha l11))(not(iluminado-coluna c1)))
:effect (and (iluminado-linha l11)(iluminado-coluna c1))
)

(:action bulb-c-5-1
:parameters ()
:precondition (and(not(iluminado-linha l11))(not(iluminado-coluna c3)))
:effect (and (iluminado-linha l11)(iluminado-coluna c3))
)

(:action bulb-c-5-2
:parameters ()
:precondition (and(not(iluminado-linha l11))(not(iluminado-coluna c5)))
:effect (and (iluminado-linha l11)(iluminado-coluna c5)
        (when (count-zero c-4-2)
                (and
                (not(count-zero c-4-2)) (count-one c-4-2)))
        (when (count-one c-4-2)
                (and
                (not(count-one c-4-2)) (count-two c-4-2)))
        (when (count-two c-4-2)
                (and
                (not(count-two c-4-2)) (count-three c-4-2)))
        (when (count-three c-4-2)
                (and
                (not(count-three c-4-2)) (count-four c-4-2)))
        )
)

(:action bulb-c-5-3
:parameters ()
:precondition (and(not(iluminado-linha l11))(not(iluminado-coluna c6)))
:effect (and (iluminado-linha l11)(iluminado-coluna c6)
        (when (count-zero c-6-3)
                (and
                (not(count-zero c-6-3)) (count-one c-6-3)))
        (when (count-one c-6-3)
                (and
                (not(count-one c-6-3)) (count-two c-6-3)))
        (when (count-two c-6-3)
                (and
                (not(count-two c-6-3)) (count-three c-6-3)))
        (when (count-three c-6-3)
                (and
                (not(count-three c-6-3)) (count-four c-6-3)))
        )
)

(:action bulb-c-5-4
:parameters ()
:precondition (and(not(iluminado-linha l11))(not(iluminado-coluna c8)))
:effect (and (iluminado-linha l11)(iluminado-coluna c8))
)

(:action bulb-c-5-5
:parameters ()
:precondition (and(not(iluminado-linha l11))(not(iluminado-coluna c10)))
:effect (and (iluminado-linha l11)(iluminado-coluna c10))
)

(:action bulb-c-5-6
:parameters ()
:precondition (and(not(iluminado-linha l11))(not(iluminado-coluna c11)))
:effect (and (iluminado-linha l11)(iluminado-coluna c11)
        (when (count-zero c-6-6)
                (and
                (not(count-zero c-6-6)) (count-one c-6-6)))
        (when (count-one c-6-6)
                (and
                (not(count-one c-6-6)) (count-two c-6-6)))
        (when (count-two c-6-6)
                (and
                (not(count-two c-6-6)) (count-three c-6-6)))
        (when (count-three c-6-6)
                (and
                (not(count-three c-6-6)) (count-four c-6-6)))
        )
)

(:action bulb-c-6-0
:parameters ()
:precondition (and(not(iluminado-linha l12))(not(iluminado-coluna c1)))
:effect (and (iluminado-linha l12)(iluminado-coluna c1))
)

(:action bulb-c-6-1
:parameters ()
:precondition (and(not(iluminado-linha l12))(not(iluminado-coluna c3)))
:effect (and (iluminado-linha l12)(iluminado-coluna c3))
)

(:action bulb-c-6-2
:parameters ()
:precondition (and(not(iluminado-linha l12))(not(iluminado-coluna c5)))
:effect (and (iluminado-linha l12)(iluminado-coluna c5)
        (when (count-zero c-6-3)
                (and
                (not(count-zero c-6-3)) (count-one c-6-3)))
        (when (count-one c-6-3)
                (and
                (not(count-one c-6-3)) (count-two c-6-3)))
        (when (count-two c-6-3)
                (and
                (not(count-two c-6-3)) (count-three c-6-3)))
        (when (count-three c-6-3)
                (and
                (not(count-three c-6-3)) (count-four c-6-3)))
        )
)

(:action bulb-c-6-4
:parameters ()
:precondition (and(not(iluminado-linha l13))(not(iluminado-coluna c8)))
:effect (and (iluminado-linha l13)(iluminado-coluna c8)
        (when (count-zero c-6-3)
                (and
                (not(count-zero c-6-3)) (count-one c-6-3)))
        (when (count-one c-6-3)
                (and
                (not(count-one c-6-3)) (count-two c-6-3)))
        (when (count-two c-6-3)
                (and
                (not(count-two c-6-3)) (count-three c-6-3)))
        (when (count-three c-6-3)
                (and
                (not(count-three c-6-3)) (count-four c-6-3)))
        )
)

(:action bulb-c-6-5
:parameters ()
:precondition (and(not(iluminado-linha l13))(not(iluminado-coluna c10)))
:effect (and (iluminado-linha l13)(iluminado-coluna c10)
        (when (count-zero c-6-6)
                (and
                (not(count-zero c-6-6)) (count-one c-6-6)))
        (when (count-one c-6-6)
                (and
                (not(count-one c-6-6)) (count-two c-6-6)))
        (when (count-two c-6-6)
                (and
                (not(count-two c-6-6)) (count-three c-6-6)))
        (when (count-three c-6-6)
                (and
                (not(count-three c-6-6)) (count-four c-6-6)))
        )
)
)