       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB10.
      ********************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = LUCAS FARIA LURF
      * OBJETIVO: RECEBER USUARIO E NIVEL
      * UTILIZAR VARIAVEL NIVEL 88 - LOGICA
      * DATA 08/06/2022
      ********************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-USUARIO PIC X(20) VALUE SPACES.
       77 WRK-SENHA PIC 9(06) VALUES ZEROS.
       77 WRK-NIVEL PIC 9(02) VALUE ZEROS.
           88 ADM VALUE 01.
           88 USER VALUE 02.
       PROCEDURE DIVISION.
      *********COLETA DE DADOS****************
           DISPLAY "======LOGIN======".
           DISPLAY "USUARIO:".
           ACCEPT WRK-USUARIO.
           DISPLAY "=================".
           DISPLAY "NIVEL".
           ACCEPT WRK-NIVEL.
           DISPLAY "================="
      ***********CALCULO DO FRETE ***********
           IF ADM
               DISPLAY "SISTEMA ADM"
               DISPLAY "========="
               DISPLAY "DIGITE A SENHA:"
               ACCEPT WRK-SENHA
               IF WRK-SENHA EQUALS 121314
                   DISPLAY "ADMINISTRADOR LOGADO"
               ELSE
                   DISPLAY "SENHA INCORRETA"
               END-IF

           ELSE
               IF USER
                   DISPLAY 'USUARIO LOGADO'
               ELSE
                   DISPLAY 'USUARIO NÃO CADASTRADO NO SISTEMA'
           END-IF.
           STOP RUN.
