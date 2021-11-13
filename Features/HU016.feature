Feature: HU016: Como usuario quiero dejar mis comentarios sobre el servicio de asesorías después de haber tenido la sesión, para que el equipo creador del servicio conozca sobre cuánto me está ayudando
    Scenario: E01: Dar comentario
         TA01:
         Given que se encuentre en la sección de comentario 
         When  la dicción del comentario sea clara y por comando de voz indique terminar
         Then  se emite un mensaje por voz y se guarda el comentario 
         Examples:
            | comentario     | comando de voz | mensaje por voz          | comentario  |
            | dicción clara  | terminar       | "Comentario realizado "  | se guarda   |
    
    Scenario: E02: Añadir otro comentario
         TA02:
         Given que se encuentre en la sección de comentario 
         When  por comando de voz indique añadir
         Then  se emite un mensaje por voz y se añade a los ya grabados
         Examples:
           | comando de voz    | mensaje por voz          | comentario |
           | añadir comentario | "Comentario realizado"   | se añade   |
    
    Scenario: E03: Eliminar comentario
         TA03:
         Given que se encuentre en la sección de comentario 
         When  por comando de voz indique que quiere eliminarlo
         Then  se emite un mensaje por voz  y se elimina el mensaje
         Examples:
            | comando de voz     | mensaje por voz         | comentario  |
            | eliminar           | "COMENTARIO ELEMINADO"  | se elimina  |

    Scenario: E04: Comentario con dicción imprecisa
         TA04:
         Given que se encuentre en la sección de comentario 
         When  la dicción del comentario no sea clara y por comando de voz indique terminar
         Then  se le emite un mensaje por voz y no se guarda el comentario
         Examples:
            | comentario        | comando de voz | mensaje por voz                    | comentario     |
            | dicción no clara  | terminar       | "Vuelva a realizar el comentario"  | no se guarda   |
    
    