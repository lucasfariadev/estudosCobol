       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB12.
      ********************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = LUCAS FARIA LURF
      * OBJETIVO: RECEBER 02 NOTAS, MEDIA E IMPRIMIR
      * UTILIZAR COMANDOS IF/ELSE/ENDIF
      * DATA 08/06/2022
      ********************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1 PIC 9(02) VALUE ZEROS.
       77 WRK-NOTA2 PIC 9(02) VALUE ZEROS.
       77 WRK-MEDIA PIC 9(02)V9 VALUE ZEROS.
       PROCEDURE DIVISION.
       0001-PRINCIPAL.

       0100-INICIALIZAR.
      *********COLETA DE NOTAS****************
           DISPLAY "=====================".
           DISPLAY "DIGITE A NOTA 1".
           ACCEPT WRK-NOTA1.
           DISPLAY "=====================".
           DISPLAY "DIGITE A NOTA 2".
           ACCEPT WRK-NOTA2.
           DISPLAY "=====================".
       0200-PROCESSAR.
      ***********CALCULO DA MEDIA ***********
           DISPLAY "A MEDIA DO ALUNO É:".
            COMPUTE  WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2)/2.
           DISPLAY WRK-MEDIA.
      **********TESTE IF PARA VER APROVAÇÃO ****
              IF WRK-MEDIA >= 6
                  DISPLAY "ALUNO APROVADO!"
              ELSE
                  IF WRK-MEDIA >=4
                      DISPLAY "ALUNO EM RECUPERAÇÃO"
                  ELSE
                      DISPLAY "ALUNO REPROVADO!"
                  END-IF
              END-IF.
           DISPLAY "=====================".
       0300-FINALIZAR.
           DISPLAY "MUITO OBRIGADO POR UTILIZAR O PROGRAMA".
           DISPLAY "FINAL DE PROCESSAMENTO".
           STOP RUN.
