Feature: HU013: Como usuario quiero escanear textos escritos, para guardarlos en audio y escucharlos en mi tiempo libre
    Scenario: E01: Escanear texto legible
         TA01:
         Given que esté en la funcionalidad de escaneo de texto
         When  cuando la escritura sea legible 
         Then  se emite un mensaje por voz y se genera el audio de esta
         Examples:
            | escritura | mensaje por voz      | audio      |
            | legible   | "Escaneo con éxito"  | se genera  |
    
    Scenario: E02: Escanear texto no legible
         TA02:
         Given que esté escaneando un texto
         When  la escritura no sea legible
         Then  se emite un mensaje por voz y no se genera el audio de esta
         Examples:
            | escritura   | mensaje por voz                      | audio         |
            | no legible  |"Escaneo sin éxito por ilegibilidad"  | no se genera  |
    
    Scenario: E03: Guardar audio en formato adecuado
         TA03:
         Given que se haya generado el audio del texto escaneado con éxito
         When  el usuario elija un formato 
         Then  se emite un mensaje por voz y se guarda el audio.
         Examples:
            | formato   | mensaje por voz                       | audio      |
            | MP3 o WAV | "Guardando audio en formato elegido"  | se guarda  |
    
     Scenario: E04: Guardar audio que no exceda el peso permitido
         TA04:
         Given que se encuentre en la sección de lectura en tiempo libre
         When  el audio no supere el peso permitido
         Then  se emite un mensaje por voz y se guarda el audio
         Examples:
            | peso     | mensaje por voz    | audio      |
            | 60 MB    | "Guardando audio"  | se guarda  |
    
     Scenario: E05: Guardar audio que exceda el peso permitido
         TA05:
         Given que se encuentre en la sección de lectura en tiempo libre
         When  el audio supere el peso permitido
         Then  se emite un mensaje por voz y no se guarda el audio
         Examples:
            | peso  | mensaje por voz   | audio         |
            | 70 MB | "Guardando audio" | no se guarda  |