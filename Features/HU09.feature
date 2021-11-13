Feature: HU09: Como usuario de la app quiero configurar la velocidad de lectura por voz entre 0.75, 1.00 y 1.25, para tener una lectura más detenida o ahorrar tiempo cuando esté apurado
    Scenario: E01: Configurar a velocidad lenta
         TA01:
         Given se encuentra escuchando la lectura por voz 
         When  se quiera cambiar a una velocidad lenta y por comando de voz se indique 
         Then  se emite un mensaje por voz y continúa la lectura
         Examples:
            | velocidad   | comando por voz  | mensaje por voz             | lectura   |
            | 0,75        | cambiar          | "Cambiando a velocidad 0,5" | continua  |
    
    Scenario: E02: Configurar a velocidad normal
         TA02:
         Given que se encuentra escuchando la lectura por voz
         When  se quiera cambiar a una velocidad normal y por comando de voz se indique 
         Then  se emite un mensaje por voz 1,0 y continúa la lectura
         Examples:
            | velocidad    | comando de voz  | mensaje por voz             | lectura   |
            | 1,00         | cambiar         | "Cambiando a velocidad 1,0" | continua  |
    
    Scenario: E03: Configurar a velocidad rápida
         TA03:
         Given que se encuentra escuchando la lectura por voz
         When  se quiera cambiar a una velocidad rápida y por comando de voz se indique 
         Then  se emite un mensaje por voz y continúa la lectura
         Examples:
            | velocidad    | comando de voz  | mensaje por voz              | lectura   |
            | 1,25         | cambiar         | "Cambiando a velocidad 1,25" | continua  |
