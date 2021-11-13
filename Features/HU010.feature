Feature: HU010: Como usuario quiero configurar el volumen de la voz, para no causar molestias por el ruido cuando me encuentre en un lugar público o no tener que estar muy cerca con el dispositivo para poder escuchar claramente lo que lee
    Scenario: E01:Configurar a volumen bajo
         TA01:
         Given que se encuentra escuchando la lectura por voz
         When  se quiera cambiar a un volumen bajo y por comando de voz se indique por comando de voz indique cambiar
         Then  se emite un mensaje por voz y continúa la lectura
         Examples:
            | volumen      | comando de voz | mensaje por voz   | lectura   |
            | menor de 50  | cambiar        | "Bajando volumen" | continua  |
    
    Scenario: E02: Configurar a volumen normal
         TA02:
         Given que se encuentra escuchando la lectura por voz
         When  se quiera cambiar a un volumen normal y por comando de voz se indique por comando de voz indique cambiar
         Then  se emite un mensaje por voz y continúa la lectura
         Examples:
             | volumen  | comando de voz   | mensaje por voz       | lectura   |
             | 50       | cambiar          |"Restaurando volumen"  | continua  |
    
    Scenario: E03: Configurar a volumen alto
         TA03:
         Given que se encuentra escuchando la lectura por voz
         When  se quiera cambiar a un volumen alto y por comando de voz se indique por comando de voz indique cambiar
         Then  se emite un mensaje por voz y continúa la lectura
         Examples:
            | volumen      | comando de voz  | mensaje por voz    | lectura   |
            | mayor de 60  | cambiar         | "Subiendo volumen" | continua  |