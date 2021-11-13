Feature: HU021: Como usuario de la app quiero que los audios de mis lecturas se guarden en mi cuenta, para acceder a ellas desde un dispositivo ajeno
    Scenario: E01: Guardar audio de texto escaneado
         TA01:
         Given  que se encuentre escaneando el texto
         When   quiera guardar el audio en su cuenta registrada y por comando de voz indique guardar 
         Then   se emite un mensaje por voz y se guarda en su cuenta
         Examples:
            | comando por voz | cuenta     | mensaje por voz             | texto     |
            | guardar         | registrada | "Se ha guardado con éxito"  | se guarda |
    
    Scenario: E02: Guardar audio de texto disponible en la app
         TA02:
         Given que se encuentre se encuentra en la sección de textos disponibles
         When  quiera guardar el audio en su cuenta en su cuenta no registrada y por comando de voz indique guardar 
         Then  se emite un mensaje por voz y se guarda en su cuenta
         Examples:
            | comando de voz | cuenta        | mensaje por voz             | texto        |
            | guardar        | no registrada | "Se ha guardado sin éxito"  | no se guarda |