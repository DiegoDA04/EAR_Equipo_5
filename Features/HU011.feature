Feature: HU011: Como usuario quiero elegir el tipo de voz masculino o femenino, para sentirme cómoda con la herramienta cuando emita una voz de género a fin a la mía
    Scenario: E01: Elección del tipo de voz femenina
         TA01:
         Given que está a punto de iniciar la lectura y quiera elegir el tipo de voz que lo hará
         When  quiera elegir el tipo de voz femenina y por comando de voz se indique listo
         Then  se emite un mensaje por voz y comienza la lectura
         Examples:
            | lectura      | tipo de voz  | comando de voz | mensaje por voz             | lectura   |
            | no iniciada  | masculina    | listo          | "Lectura con voz femenina"  | comienza  |
    
    Scenario: E02: Elección del tipo de voz masculina
         TA02:
         Given  que está a punto de iniciar la lectura quiera elegir el tipo de voz que lo hará
         When   quiera elegir el tipo de voz masculina y por comando de voz se indique listo
         Then   se emite un mensaje por voz y comienza la lectura
         Examples:
            | lectura      | tipo de voz | comando de voz | mensaje por voz              | lectura   |
            | no iniciada  | masculina   | listo          | "Lectura con voz masculina"  | comienza  |    

    Scenario: E03:  Cambio del tipo de voz durante la lectura
         TA03:
         Given que está a punto la lectura ya inició y se quiera cambiar el tipo de voz
         When  quiera elegir el tipo de voz femenina o femenina y por comando de voz se indique listo 
         Then  se emite un mensaje por voz y continua la lectura
            | lectura   | tipo de voz           | comando de voz | mensaje por voz          | lectura   |
            | iniciada  | masculina o feminina  | cambiar        | "Cambiando tipo de voz"  | continua  |
    
     Scenario: E04: Cambio de voz casi por terminar la lectura
         TA04:
         Given  Dado que está a punto de terminar la lectura y se quiera cambiar el tipo de voz
         When   quiera elegir el tipo de voz femenina o femenina y por comando de voz se indique listo 
         Then   se emite un mensaje por voz y continúa la lectura
         Examples:
            | lectura       | tipo de voz          | comando de voz | mensaje por voz                                       | lectura  |
            | por terminar  | masculina o feminina | cambiar        | "La lectura está por terminar, no se puede cambiar"   | continua |