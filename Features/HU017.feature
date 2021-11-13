Feature: HU017: Como usuario quiero que las fechas de asesorías reservadas sean flexibles al cambio, para postergarlas en un tiempo cercano cuando se me presenten urgencias en el día que reservé y no pierda la atención
    Scenario: E01: Modificar fecha
         TA01:
         Given que esté en la sección de reservar asesorías
         When  se seleccione el día y/u hora y por comando de voz indique modificar 
         Then  se emite un mensaje y se modifica la fecha y/u hora 
         Examples:
            | día           | hora    | comando de voz | mensaje  por voz                     | reserva     |
            | lunes-viernes | 9am-4pm | modificar      | "Día y/u hora de reserva modificada" | se modifica |
    
    Scenario: E02: Cambiar por día no hábil
         TA02:
         Given que esté en la sección de reservar asesorías
         When  la fecha sea un día no hábil y la hora sea permitida y por comando de voz indique cambiar 
         Then  se emite un mensaje de voz y no se cambia la fecha
         Examples:
            | día              | hora     | comando de voz   | mensaje por voz                 | reserva        | 
            | sábado-domingo   | 9am-4pm  | cambiar          | "Día no hábil para la reserva"  | no se modifica |
    
    Scenario: E03: Cambiar por día no existente en el mes
         TA03:
         Given  que esté en la sección de reservar asesorías
         When   la fecha sea un día sea hábil y la hora no sea permitida y por comando de voz indique cambiar 
         Then   se emite un mensaje de voz  y no se cambia el día
         Examples: 
            | día              | hora     | comando de voz   | mensaje por voz                      | reserva        | 
            | lunes-viernes    | 5pm-8am  | cambiar          | "Hora no permitida para la reserva"  | no se modifica |
