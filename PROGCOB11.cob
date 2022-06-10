       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB11.
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
       77 WRK-LARGURA PIC 9(03)V99 VALUE ZEROS.
       77 WRK-COMPRIMENTO PIC 9(03)V99 VALUES ZEROS.
       77 WRK-AREA PIC 9(04)V99 VALUES ZEROS.
       PROCEDURE DIVISION.
      *********COLETA DE DADOS****************
           DISPLAY "CALCULADOR DE ÁREA".
           DISPLAY "==================".
           DISPLAY "DIGITE A LARGURA:".
           ACCEPT WRK-LARGURA.
           DISPLAY "DIGITE O COMPRIMENTO:".
           ACCEPT WRK-COMPRIMENTO.
      ***********CALCULO DA AREA ***********
           IF WRK-LARGURA > 0 AND WRK-COMPRIMENTO > 0
               COMPUTE WRK-AREA = WRK-LARGURA * WRK-COMPRIMENTO
               DISPLAY "==========="
               DISPLAY "AREA É IGUAL A:"
               DISPLAY WRK-AREA
           ELSE
               DISPLAY 'FALTA INFORMAR ALGO'
           END-IF.
           STOP RUN.
