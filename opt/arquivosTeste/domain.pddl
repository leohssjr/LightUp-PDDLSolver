(define (domain lighUp-akari)

(:requirements :strips :typing :conditional-effects :negative-preconditions :equality)

(:types 
cell
)
                         
(:constants
c-0-0 c-0-1 c-0-2 c-0-3 c-0-4 c-0-5 c-0-6 c-1-0 c-1-1 c-1-2 c-1-3 c-1-4 c-1-5 c-1-6 c-2-0 c-2-1 c-2-2 c-2-3 c-2-4 c-2-5 c-2-6 c-3-0 c-3-1 c-3-2 c-3-3 c-3-4 c-3-5 c-3-6 c-4-0 c-4-1 c-4-2 c-4-3 c-4-4 c-4-5 c-4-6 c-5-0 c-5-1 c-5-2 c-5-3 c-5-4 c-5-5 c-5-6 c-6-0 c-6-1 c-6-2 c-6-3 c-6-4 c-6-5 c-6-6 - cell
)

(:predicates 
(lampada-em ?c - cell)
(iluminado ?c - cell)
(count-zero ?c - cell)
(count-one ?c - cell)
(count-two ?c - cell)
(count-three ?c - cell)
(count-four ?c - cell)
)


        (:action bulb-c-0-0
        :parameters ()
        :precondition (and (not(iluminado c-0-0)))
        :effect (and  (iluminado c-0-1) (iluminado c-4-0) (iluminado c-0-0) (iluminado c-2-0) (iluminado c-3-0) (iluminado c-5-0) (iluminado c-6-0) (iluminado c-1-0) )
	)

        (:action bulb-c-0-1-1
        :parameters ()
        :precondition (and (not(iluminado c-0-1)) (count-zero c-0-2) (not(count-one c-0-2)))
        :effect (and  (iluminado c-0-1) (iluminado c-1-1) (iluminado c-2-1) (iluminado c-0-0) 
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

        (:action bulb-c-0-1-2
        :parameters ()
        :precondition (and (not(iluminado c-0-1)) (count-one c-0-2) (not(count-two c-0-2)))
        :effect (and  (iluminado c-0-1) (iluminado c-1-1) (iluminado c-2-1) (iluminado c-0-0) 
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

        (:action bulb-c-0-3-1
        :parameters ()
        :precondition (and (not(iluminado c-0-3)) (count-zero c-0-2) (not(count-one c-0-2)))
        :effect (and  (iluminado c-0-4) (iluminado c-4-3) (iluminado c-0-3) (iluminado c-0-6) (iluminado c-2-3) (iluminado c-3-3) (iluminado c-0-5) (iluminado c-5-3) (iluminado c-1-3) 
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

        (:action bulb-c-0-3-2
        :parameters ()
        :precondition (and (not(iluminado c-0-3)) (count-one c-0-2) (not(count-two c-0-2)))
        :effect (and  (iluminado c-0-4) (iluminado c-4-3) (iluminado c-0-3) (iluminado c-0-6) (iluminado c-2-3) (iluminado c-3-3) (iluminado c-0-5) (iluminado c-5-3) (iluminado c-1-3) 
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
        :precondition (and (not(iluminado c-0-4)))
        :effect (and  (iluminado c-2-4) (iluminado c-0-4) (iluminado c-0-3) (iluminado c-1-4) (iluminado c-0-6) (iluminado c-0-5) )
	)

        (:action bulb-c-0-5
        :parameters ()
        :precondition (and (not(iluminado c-0-5)))
        :effect (and  (iluminado c-0-4) (iluminado c-1-5) (iluminado c-0-3) (iluminado c-0-6) (iluminado c-0-5) )
	)

        (:action bulb-c-0-6
        :parameters ()
        :precondition (and (not(iluminado c-0-6)))
        :effect (and  (iluminado c-0-4) (iluminado c-4-6) (iluminado c-0-3) (iluminado c-0-6) (iluminado c-2-6) (iluminado c-5-6) (iluminado c-0-5) (iluminado c-3-6) (iluminado c-1-6) )
	)

        (:action bulb-c-1-0
        :parameters ()
        :precondition (and (not(iluminado c-1-0)))
        :effect (and  (iluminado c-4-0) (iluminado c-1-2) (iluminado c-0-0) (iluminado c-1-5) (iluminado c-1-1) (iluminado c-2-0) (iluminado c-1-4) (iluminado c-3-0) (iluminado c-5-0) (iluminado c-6-0) (iluminado c-1-0) (iluminado c-1-6) (iluminado c-1-3) )
	)

        (:action bulb-c-1-1
        :parameters ()
        :precondition (and (not(iluminado c-1-1)))
        :effect (and  (iluminado c-0-1) (iluminado c-1-2) (iluminado c-2-1) (iluminado c-1-5) (iluminado c-1-1) (iluminado c-1-4) (iluminado c-1-0) (iluminado c-1-6) (iluminado c-1-3) )
	)

        (:action bulb-c-1-2-1
        :parameters ()
        :precondition (and (not(iluminado c-1-2)) (count-zero c-0-2) (not(count-one c-0-2)))
        :effect (and  (iluminado c-1-2) (iluminado c-1-5) (iluminado c-1-1) (iluminado c-1-4) (iluminado c-2-2) (iluminado c-1-0) (iluminado c-1-6) (iluminado c-3-2) (iluminado c-1-3) 
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

        (:action bulb-c-1-2-2
        :parameters ()
        :precondition (and (not(iluminado c-1-2)) (count-one c-0-2) (not(count-two c-0-2)))
        :effect (and  (iluminado c-1-2) (iluminado c-1-5) (iluminado c-1-1) (iluminado c-1-4) (iluminado c-2-2) (iluminado c-1-0) (iluminado c-1-6) (iluminado c-3-2) (iluminado c-1-3) 
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
        :precondition (and (not(iluminado c-1-3)))
        :effect (and  (iluminado c-1-2) (iluminado c-4-3) (iluminado c-1-5) (iluminado c-1-1) (iluminado c-0-3) (iluminado c-1-4) (iluminado c-2-3) (iluminado c-1-0) (iluminado c-3-3) (iluminado c-5-3) (iluminado c-1-6) (iluminado c-1-3) )
	)

        (:action bulb-c-1-4
        :parameters ()
        :precondition (and (not(iluminado c-1-4)))
        :effect (and  (iluminado c-2-4) (iluminado c-1-2) (iluminado c-0-4) (iluminado c-1-5) (iluminado c-1-1) (iluminado c-1-4) (iluminado c-1-0) (iluminado c-1-6) (iluminado c-1-3) )
	)

        (:action bulb-c-1-5
        :parameters ()
        :precondition (and (not(iluminado c-1-5)))
        :effect (and  (iluminado c-1-2) (iluminado c-1-5) (iluminado c-1-1) (iluminado c-1-4) (iluminado c-0-5) (iluminado c-1-0) (iluminado c-1-6) (iluminado c-1-3) )
	)

        (:action bulb-c-1-6
        :parameters ()
        :precondition (and (not(iluminado c-1-6)))
        :effect (and  (iluminado c-1-2) (iluminado c-1-5) (iluminado c-1-1) (iluminado c-4-6) (iluminado c-1-4) (iluminado c-0-6) (iluminado c-2-6) (iluminado c-5-6) (iluminado c-3-6) (iluminado c-1-0) (iluminado c-1-6) (iluminado c-1-3) )
	)

        (:action bulb-c-2-0
        :parameters ()
        :precondition (and (not(iluminado c-2-0)))
        :effect (and  (iluminado c-2-4) (iluminado c-4-0) (iluminado c-2-2) (iluminado c-2-1) (iluminado c-0-0) (iluminado c-2-0) (iluminado c-3-0) (iluminado c-2-3) (iluminado c-5-0) (iluminado c-6-0) (iluminado c-1-0) )
	)

        (:action bulb-c-2-1
        :parameters ()
        :precondition (and (not(iluminado c-2-1)))
        :effect (and  (iluminado c-0-1) (iluminado c-2-4) (iluminado c-2-1) (iluminado c-1-1) (iluminado c-2-0) (iluminado c-2-3) (iluminado c-2-2) )
	)

        (:action bulb-c-2-2
        :parameters ()
        :precondition (and (not(iluminado c-2-2)))
        :effect (and  (iluminado c-2-4) (iluminado c-1-2) (iluminado c-2-1) (iluminado c-2-0) (iluminado c-2-3) (iluminado c-2-2) (iluminado c-3-2) )
	)

        (:action bulb-c-2-3
        :parameters ()
        :precondition (and (not(iluminado c-2-3)))
        :effect (and  (iluminado c-2-4) (iluminado c-2-1) (iluminado c-4-3) (iluminado c-0-3) (iluminado c-2-0) (iluminado c-2-3) (iluminado c-3-3) (iluminado c-2-2) (iluminado c-5-3) (iluminado c-1-3) )
	)

        (:action bulb-c-2-6
        :parameters ()
        :precondition (and (not(iluminado c-2-6)))
        :effect (and  (iluminado c-4-6) (iluminado c-0-6) (iluminado c-2-6) (iluminado c-5-6) (iluminado c-3-6) (iluminado c-1-6) )
	)

        (:action bulb-c-3-0
        :parameters ()
        :precondition (and (not(iluminado c-3-0)))
        :effect (and  (iluminado c-4-0) (iluminado c-0-0) (iluminado c-2-0) (iluminado c-3-0) (iluminado c-5-0) (iluminado c-6-0) (iluminado c-1-0) )
	)

        (:action bulb-c-3-2-1
        :parameters ()
        :precondition (and (not(iluminado c-3-2)) (count-zero c-4-2) (not(count-one c-4-2)))
        :effect (and  (iluminado c-3-2) (iluminado c-1-2) (iluminado c-3-3) (iluminado c-2-2) 
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

        (:action bulb-c-3-2-2
        :parameters ()
        :precondition (and (not(iluminado c-3-2)) (count-one c-4-2) (not(count-two c-4-2)))
        :effect (and  (iluminado c-3-2) (iluminado c-1-2) (iluminado c-3-3) (iluminado c-2-2) 
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

        (:action bulb-c-3-6
        :parameters ()
        :precondition (and (not(iluminado c-3-6)))
        :effect (and  (iluminado c-4-6) (iluminado c-0-6) (iluminado c-2-6) (iluminado c-5-6) (iluminado c-3-6) (iluminado c-1-6) (iluminado c-3-5) )
	)

        (:action bulb-c-4-0
        :parameters ()
        :precondition (and (not(iluminado c-4-0)))
        :effect (and  (iluminado c-4-0) (iluminado c-0-0) (iluminado c-2-0) (iluminado c-3-0) (iluminado c-5-0) (iluminado c-6-0) (iluminado c-1-0) (iluminado c-4-1) )
	)

        (:action bulb-c-4-1-1
        :parameters ()
        :precondition (and (not(iluminado c-4-1)) (count-zero c-4-2) (not(count-one c-4-2)))
        :effect (and  (iluminado c-6-1) (iluminado c-4-0) (iluminado c-4-1) (iluminado c-5-1) 
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

        (:action bulb-c-4-1-2
        :parameters ()
        :precondition (and (not(iluminado c-4-1)) (count-one c-4-2) (not(count-two c-4-2)))
        :effect (and  (iluminado c-6-1) (iluminado c-4-0) (iluminado c-4-1) (iluminado c-5-1) 
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

        (:action bulb-c-4-3-1
        :parameters ()
        :precondition (and (not(iluminado c-4-3)) (count-zero c-4-2) (not(count-one c-4-2)))
        :effect (and  (iluminado c-4-4) (iluminado c-4-3) (iluminado c-0-3) (iluminado c-4-6) (iluminado c-2-3) (iluminado c-4-5) (iluminado c-3-3) (iluminado c-5-3) (iluminado c-1-3) 
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

        (:action bulb-c-4-3-2
        :parameters ()
        :precondition (and (not(iluminado c-4-3)) (count-one c-4-2) (not(count-two c-4-2)))
        :effect (and  (iluminado c-4-4) (iluminado c-4-3) (iluminado c-0-3) (iluminado c-4-6) (iluminado c-2-3) (iluminado c-4-5) (iluminado c-3-3) (iluminado c-5-3) (iluminado c-1-3) 
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

        (:action bulb-c-4-5
        :parameters ()
        :precondition (and (not(iluminado c-4-5)))
        :effect (and  (iluminado c-4-4) (iluminado c-5-5) (iluminado c-6-5) (iluminado c-4-3) (iluminado c-4-6) (iluminado c-4-5) (iluminado c-3-5) )
	)

        (:action bulb-c-4-6
        :parameters ()
        :precondition (and (not(iluminado c-4-6)))
        :effect (and  (iluminado c-4-4) (iluminado c-4-3) (iluminado c-4-6) (iluminado c-0-6) (iluminado c-4-5) (iluminado c-2-6) (iluminado c-5-6) (iluminado c-3-6) (iluminado c-1-6) )
	)

        (:action bulb-c-5-0
        :parameters ()
        :precondition (and (not(iluminado c-5-0)))
        :effect (and  (iluminado c-4-0) (iluminado c-5-5) (iluminado c-0-0) (iluminado c-5-3) (iluminado c-5-4) (iluminado c-2-0) (iluminado c-5-1) (iluminado c-3-0) (iluminado c-5-0) (iluminado c-5-6) (iluminado c-6-0) (iluminado c-1-0) (iluminado c-5-2) )
	)

        (:action bulb-c-5-1
        :parameters ()
        :precondition (and (not(iluminado c-5-1)))
        :effect (and  (iluminado c-5-5) (iluminado c-6-1) (iluminado c-5-4) (iluminado c-5-1) (iluminado c-5-0) (iluminado c-5-6) (iluminado c-5-3) (iluminado c-4-1) (iluminado c-5-2) )
	)

        (:action bulb-c-5-2-1
        :parameters ()
        :precondition (and (not(iluminado c-5-2)) (count-zero c-4-2) (not(count-one c-4-2)))
        :effect (and  (iluminado c-6-2) (iluminado c-5-5) (iluminado c-5-4) (iluminado c-5-1) (iluminado c-5-0) (iluminado c-5-6) (iluminado c-5-3) (iluminado c-5-2) 
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

        (:action bulb-c-5-2-2
        :parameters ()
        :precondition (and (not(iluminado c-5-2)) (count-one c-4-2) (not(count-two c-4-2)))
        :effect (and  (iluminado c-6-2) (iluminado c-5-5) (iluminado c-5-4) (iluminado c-5-1) (iluminado c-5-0) (iluminado c-5-6) (iluminado c-5-3) (iluminado c-5-2) 
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

        (:action bulb-c-5-4
        :parameters ()
        :precondition (and (not(iluminado c-5-4)))
        :effect (and  (iluminado c-4-4) (iluminado c-5-5) (iluminado c-5-4) (iluminado c-6-4) (iluminado c-5-1) (iluminado c-5-0) (iluminado c-5-6) (iluminado c-5-3) (iluminado c-5-2) )
	)

        (:action bulb-c-5-5
        :parameters ()
        :precondition (and (not(iluminado c-5-5)))
        :effect (and  (iluminado c-5-5) (iluminado c-6-5) (iluminado c-5-4) (iluminado c-5-1) (iluminado c-4-5) (iluminado c-5-0) (iluminado c-5-6) (iluminado c-5-3) (iluminado c-3-5) (iluminado c-5-2) )
	)

        (:action bulb-c-5-6-1
        :parameters ()
        :precondition (and (not(iluminado c-5-6)) (count-zero c-6-6) (not(count-one c-6-6)))
        :effect (and  (iluminado c-5-5) (iluminado c-5-4) (iluminado c-4-6) (iluminado c-5-1) (iluminado c-0-6) (iluminado c-2-6) (iluminado c-5-6) (iluminado c-5-0) (iluminado c-3-6) (iluminado c-5-3) (iluminado c-1-6) (iluminado c-5-2) 
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

        (:action bulb-c-5-6-2
        :parameters ()
        :precondition (and (not(iluminado c-5-6)) (count-one c-6-6) (not(count-two c-6-6)))
        :effect (and  (iluminado c-5-5) (iluminado c-5-4) (iluminado c-4-6) (iluminado c-5-1) (iluminado c-0-6) (iluminado c-2-6) (iluminado c-5-6) (iluminado c-5-0) (iluminado c-3-6) (iluminado c-5-3) (iluminado c-1-6) (iluminado c-5-2) 
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
        :precondition (and (not(iluminado c-6-0)))
        :effect (and  (iluminado c-6-2) (iluminado c-4-0) (iluminado c-0-0) (iluminado c-6-1) (iluminado c-2-0) (iluminado c-3-0) (iluminado c-5-0) (iluminado c-6-0) (iluminado c-1-0) )
	)

        (:action bulb-c-6-1
        :parameters ()
        :precondition (and (not(iluminado c-6-1)))
        :effect (and  (iluminado c-6-2) (iluminado c-6-1) (iluminado c-5-1) (iluminado c-6-0) (iluminado c-4-1) )
	)

        (:action bulb-c-6-5-1
        :parameters ()
        :precondition (and (not(iluminado c-6-5)) (count-zero c-6-6) (not(count-one c-6-6)))
        :effect (and  (iluminado c-5-5) (iluminado c-6-5) (iluminado c-6-4) (iluminado c-4-5) (iluminado c-3-5) 
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

        (:action bulb-c-6-5-2
        :parameters ()
        :precondition (and (not(iluminado c-6-5)) (count-one c-6-6) (not(count-two c-6-6)))
        :effect (and  (iluminado c-5-5) (iluminado c-6-5) (iluminado c-6-4) (iluminado c-4-5) (iluminado c-3-5) 
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