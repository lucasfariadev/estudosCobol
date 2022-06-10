       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB08.
      ********************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = LUCAS FARIA LURF
      * OBJETIVO: RECEBER PRODUTO, VALOR E CALCULAR FRETE
      * UTILIZAR COMANDOS EVALUATE
      * DATA 08/06/2022
      ********************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-PRODUTO PIC X(20) VALUE SPACES.
       77 WRK-UF PIC X(02) VALUE SPACES.
       77 WRK-VALORUF PIC 9(06)99 VALUE ZEROS.
       77 WRK-VALOR PIC 9(06)V99 VALUE ZEROS.
       77 WRK-FRETE PIC 9(04)V99 VALUE ZEROS.
       PROCEDURE DIVISION.
      *********COLETA DE DADOS****************
           DISPLAY "====================="
           DISPLAY "DIGITE O PRUDOTO"
           ACCEPT WRK-PRODUTO.
           DISPLAY "====================="
           DISPLAY "DIGITE O VALOR"
           ACCEPT WRK-VALOR.
           DISPLAY "====================="
           DISPLAY "DIGITE O ESTADO/DESTINO"
           ACCEPT WRK-UF.
           DISPLAY "====================="
      ***********CALCULO DO FRETE ***********
           EVALUATE WRK-UF
               WHEN 'SP'
                   COMPUTE WRK-FRETE = 1,05 * WRK-VALOR
               WHEN 'RJ'
                   COMPUTE WRK-FRETE = 1,10 * WRK-VALOR
               WHEN 'MG'
                   COMPUTE WRK-FRETE = 1,15 * WRK-VALOR
               WHEN OTHER
               DISPLAY "DESCULPE, NÃO PODEMOS ENTREGAR"
           END-EVALUATE.
           DISPLAY "=========================="
      **********RESULTADO COM VALOR****
           IF WRK-FRETE NOT EQUAL 0
               DISPLAY "FICAREMOS FELIZES EM TE ENTREGAR " WRK-PRODUTO
               DISPLAY "O VALOR COM FRETE PARA " WRK-UF " SERÁ:"
               DISPLAY WRK-FRETE
               DISPLAY "=========================="
           END-IF.
           STOP RUN.
