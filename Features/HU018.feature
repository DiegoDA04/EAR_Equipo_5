Feature: HU018: Como usuario quiero realizar consultas rápidas con notas de voz sin necesidad de reservar una asesoría, para evitar esperar al día de la asesoría por una consulta sencilla
    Scenario: E01: Consulta con ingreso de datos correctos del especialista
         TA01:
         Given que se encuentre en la sección de consulta rápida
         When  ingrese el nombre del especialista, realice su consulta con dicción clara y por comando de voz indique listo
         Then  se emite un mensaje de voz y se guarda la consulta
         Examples:
            | nombre del especialista | consulta       | comando de voz | mensaje por voz      | consulta  |
            | Rosa Cobeñas            | dicción clara  | listo          | "Consulta con éxito" | se guarda |
    
    Scenario: E02: Consulta con ingreso de datos del especialista
         TA02:
         Given que se encuentre en la sección de consulta rápida
         When  por voz ingrese el nombre incorrecto del especialista, realice su consulta con dicción clara y por comando de voz indique listo
         Then  se emite un mensaje por voz como advertencia  y no se guarda la consulta
         Examples:
           | nombre del especialista  | consulta       | comando de voz | mensaje por voz                                         | consulta  |
           | Talia Cobeñas            | dicción clara  | listo          | "Consulta sin éxito. Nombre de especialista incorrecto" | se guarda |

    Scenario: E03: Dicción no clara al momento de realizar la consulta
         TA03:
         Given que se encuentre en la sección de consulta rápida
         When  por voz ingrese el nombre correcto del especialista, realice su consulta con dicción no clara y por comando de voz indique listo
         Then  se emite un mensaje de voz como advertencia y se le da la opción de grabar otra vez
         Examples:
            | nombre del especialista | consulta          | comando de voz | mensaje por voz                        | consulta     |
            | Rosa Cobeñas            | dicción no clara  | listo          | "Consulta sin éxito. Dicción no clara" | no se guarda |