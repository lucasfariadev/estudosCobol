       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB15.
      ********************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = LUCAS FARIA LURF
      * OBJETIVO: RECEBER VENDAS AT� PARAR
      * UTILIZAR COMANDOS PERFORM - UNTIL
      * DATA 08/06/2022
      ********************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-VENDAS PIC 9(06)V99 VALUE ZEROS.
       77 WRK-QT     PIC 9(03)    VALUE ZEROS.
       77 WRK-ACUM   PIC 9(09)    VALUE ZEROS.
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           IF WRK-VENDAS > 0
               PERFORM 0200-PROCESSAR UNTIL WRK-VENDAS = 0
           END-IF.
           PERFORM 0300-FINALIZAR.

       0100-INICIALIZAR.
      *********COLETA DE NUMERO****************
       DISPLAY "DIGITE UM NUMERO"
       ACCEPT WRK-VENDAS.

       0200-PROCESSAR.
      ***********CALCULO DA MULTIPLICA��O ***********
           ADD 1 TO WRK-QT.
           ADD WRK-VENDAS TO WRK-ACUM.
           PERFORM 0100-INICIALIZAR.


      **********TESTE IF PARA VER APROVA��O ****
       0300-FINALIZAR.
           DISPLAY "MUITO OBRIGADO POR UTILIZAR O PROGRAMA".
           DISPLAY "CARRINHO COM: " WRK-ACUM " ITENS".
           DISPLAY "FINAL DE PROCESSAMENTO".
           STOP RUN.
