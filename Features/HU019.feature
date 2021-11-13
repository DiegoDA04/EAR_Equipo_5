Feature: HU019: Como usuario de la app quiero que se guarden estadísticas de mis lecturas en mi cuenta, para tener un seguimiento específico y establecer metas al respecto
    Scenario: E01: Guardar horas de lectura
         TA01:
         Given que se encuentra en la ventana de guardar horas de lectura
         When  seleccione la lectura a guadar leída y por comando de voz indique guardar
         Then  se muestra un mensaje de y se suma al promedio de horas de lectura
         Examples:
            | lectura          | leída | comando por voz | mensaje por voz             | hora de lectura |
            | Les Miserables   | sí    | guardar         | "Hora de lectura guardada " | suma            |
    
    Scenario: E02: Guardar lecturas
         TA02:
         Given que se encuentra en la ventana de guardar lectura
         When  seleccione la lectura a guadar leída y por comando de voz indique guardar
         Then  se muestra un mensaje y se suma al promedio de lecturas realizadas
         Examples:
            | lectura         | leída  | comando de voz | mensaje por voz     | lectura realizada |
            | Les Miserables  | sí     | guardar       | "Lectura guardada"   | suma              |
    
    Scenario: E03: Guardar lecturas no iniciadas
         TA03:
         Given que se encuentra en la ventana de guardar lectura
         When  seleccione la lectura a guadar no leída y por comando de voz indique guardar
         Then  se muestra un mensaje de  y no se guarda la lectura para el promedio y/u horas lecturas realizadas
         Examples:
          | lectura         | leída  | comando de voz | mensaje por voz                                      | lectura realizada |
          | Les Miserables  | no     | guardar        | "Lectura no guardada. Debe leer la lectura primero"  | suma              |