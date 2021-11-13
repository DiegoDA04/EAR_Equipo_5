Feature: HU020: Como usuario de la aplicación quiero que mi cuenta se encuentre protegida, para evitar que otras personas acceden a esta y usurpen mi identidad
    Scenario: E01: Autenticación de usuario y contraseña
         TA01:
         Given que se esté autenticándome en la app
         When  ingrese su usuario y contraseña correctos y por comando de voz indique ingresar 
         Then  se emite un mensaje por voz de confirmación y permita el acceso a la aplicación
         Examples:
            | usuario    | contraseña | comando de voz | mensaje por voz                  | aplicación       |
            | Maria18D04 | aeiou      | ingresar       | "Usuario y contraseña correctos" | acceso concedido |
    
    Scenario: E02: Autenticación desde otro dispositivo
         TA02:
         Given que se esté autenticando desde otro dispositivo
         When  ingrese su usuario y contraseña correctos y por comando de voz indique ingresar
         Then  se emite un mensaje de advertencia sobre la autenticación en un dispositivo desconocido y permite el accceso a la aplicación
         Examples:
           | usuario    | contraseña | comando de voz | mensaje por voz                                     | aplicación       |
           | Maria18D04 | aeiou      | ingresar       | "Inicio de sesión en un dispositivo de uso inusual" | acceso concedido |
    
    Scenario: E03: Autenticación con datos incorrectos
         TA03:
         Given que se esté autenticado
         When  ingrese por voz su usuario y/o contraseña incorrectos y por comando de voz indique ingresar
         Then  se emite un mensaje por voz que indica qué datos se ingresaron incorrectamente y no se le da acceso a la aplicación
         Examples:
          | usuario    | contraseña | comando de voz | mensaje por voz                                        | aplicación      |
          | maria04d18 | uoiea      | ingresar       | "Usuario y contraseña incorrectos. Ingrese nuevamente" | acceso denegado |

