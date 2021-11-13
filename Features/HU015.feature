Feature: HU015: Como usuario quiero reservar las asesorías de entrevistas de acuerdo con mi disponibilidad, para tener mayor seguridad de asistir a la sesión y no tener que ajustar mis horarios
    Scenario: E01:  Reserva en una fecha correcta
         TA01:
         Given que esté en la sección de reservar asesorías
         When  seleccione el día y hora correctas y por comando de voz indique reservar 
         Then  se emite una mensaje con éxito para la reserva
         Examples:
            | día               | hora     | comando de voz  | mensaje por voz         | reserva   |
            | lunes-viernes     | 9am-4pm  | reservar        | "Reserva exitosa"       | se guarda |
    
    Scenario: E02: Reserva en un día no hábil
         TA02:
         Given que esté en la sección de reservar asesorías
         When  seleccione el día no hábil y hora permitida y por comando de voz indique reservar 
         Then  se emite un mensaje de voz  y no se guarda la reserva
         Examples:
            | día             | hora    | comando de voz | mensaje por voz                          | reserva       |
            | sábado-domingo  | 9am-4pm | reservar       |"No se puede reservar en un día no hábil" | no se guarda  |
    
    Scenario: E03: Reservar en un día no existente en el mes
         TA03:
         Given que esté en la sección de reservar asesorías
         When  seleccione el día hábil y hora no permitida y por comando de voz indique reservar 
         Then  se emite un mensaje por voz y no se guarda la reserva
         Examples:
            | día             | hora     | comando por voz | mensaje por voz                             | reserva      |
            | lunes-viernes   | 5pm-8pm  | reservar        | "No se puede reservar en una hora no hábil" | no se guarda | 
    