Feature: HU014: Como usuario de la app quiero que esta se ejecute en el sistema operativo Android y sin conexión, para utilizarlo en mi smartphone y no dejar de usarlo cuando no tenga conectividad a internet
    Scenario: E01: Instalar en sistema operativo Android
         TA01:
         Given que descargue la aplicación
         When  el dispositivo tenga el espacio necesario, el sistema operativo compatible y se haga click en instalar 
         Then  se ejecuta correctamente 
         Examples:
            | espacio  | sistema operativo | ejecuta        |
            | 30 MB    | Android           | correctamente  |
    
    Scenario: E02: Uso sin conexión a internet
         TA02:
         Given que quiera realizar la lectura por voz
         When  no está conectado a internet y por comando de voz inquide iniciar
         Then  se emite un mensaje por voz e inicia la lectura 
         Examples:
            | conexión a internet | comando de voz  | mensaje por voz       | lectura  |
            | no                  | iniciar         | "Iniciando lectura"   | inica    |
    
    Scenario: E03:  Instalar en sistema operativo Android
         TA03:
         Given que descargue la aplicación
         When  el dispositivo tenga el espacio necesario, el sistema operativo no compatible y se haga click en instalar 
         Then  no se ejecuta correctamente
         Examples:
            | espacio  | sistema operativo | ejecuta          |
            | 30 MB    | IOS               | incorrectamente  |
    
    
    