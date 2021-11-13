Feature: HU012: Como usuario quiero que las configuraciones de lectura se realicen por medio de comandos de voz, para evitar dificultades al momento de navegar por la aplicación
    Scenario: E01: Configuración de velocidad de lectura por voz
         TA01:
         Given  que esté escuchando la lectura por voz
         When   se quiera cambiar la velocidad y por comando de voz indique cambiar
         Then   se emite un mensaje de voz y se configura la velocidad
         Examples:
            | comando de voz     | comando de voz | mensaje por voz          | velocidad     |
            | cambiar velocidad  | cambiar        | "Configurando velocidad" | se configura  |
    
    Scenario: E02:  Configuración de tipo de voz para la lectura
         TA02:
         Given  que esté escuchando la lectura por voz
         When   se quiera configurar el tipo de voz y por comando de voz indique configurar
         Then   se  emite un mensaje de voz y se configura la voz de acuerdo a la elección
         Examples:
            | comando de voz         | comando de voz | mensaje por voz               | Tipo de voz   |
            | configurar tipo de voz | configurar     |"Configurando el tipo de voz"  | se configura  |
    
    Scenario: E03: Indicación equivocada
         TA03:
         Given que esté escuchando la lectura por voz
         When  se quiera configurar el tipo de voz, la dicción no sea clara y por comando de voz indique configurar
         Then  se emite un mensaje por voz y se da la opción para iniciar con la indicación 
         Examples:
            | comando de voz         | dicción   | comando de voz | mensaje de voz                     | indicación |
            | configurar tipo de voz | no clara  | configurar     | "Vuelva a realizar la indicación"  | iniciar    |
    
     Scenario: E04: Comando para salir de la aplicación
         TA04:
         Given que esté escuchando la lectura por voz
         When  se quiera configurar el tipo de voz, la dicción no sea clara y por comando de voz indique configurar
         Then  se emite un mensaje por voz y se corta la lectura
         Examples:
            | dicción  | comando de voz  | mensaje                      | lectura   |
            | no clara | salir           | "Saliendo de la aplicación"  | se corta  |