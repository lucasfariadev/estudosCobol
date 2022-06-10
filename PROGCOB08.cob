       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB08.
      ********************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = LUCAS FARIA LURF
      * OBJETIVO: RECEBER 02 NOTAS, MEDIA E IMPRIMIR
      * UTILIZAR COMANDOS IF/ELSE/ENDIF
      * DATA 08/06/2022
      ********************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1 PIC 9(02) VALUE ZEROS.
       77 WRK-NOTA2 PIC 9(02) VALUE ZEROS.
       77 WRK-MEDIA PIC 9(02)V9 VALUE ZEROS.
       PROCEDURE DIVISION.
      *********COLETA DE NOTAS****************
           DISPLAY "====================="
           DISPLAY "DIGITE A NOTA 1"
           ACCEPT WRK-NOTA1.
           DISPLAY "====================="
           DISPLAY "DIGITE A NOTA 2"
           ACCEPT WRK-NOTA2.
           DISPLAY "====================="
      ***********CALCULO DA MEDIA ***********
           DISPLAY "A MEDIA DO ALUNO É:"
            COMPUTE  WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2)/2.
           DISPLAY WRK-MEDIA.
      **********TESTE EVALUATE PARA VER APROVAÇÃO ****
              EVALUATE WRK-MEDIA
               WHEN 10
                   DISPLAY "ALUNO APROVADO! PARABÉNS!"
               WHEN 6 THRU 9,9
                   DISPLAY "ALUNO APROVADO!"
               WHEN 2 THRU 5,9
                   DISPLAY "ALUNO RECUPERACAO!"
               WHEN OTHER
                   DISPLAY "ALUNO REPROVADO!"
              END-EVALUATE.
           DISPLAY "====================="

           STOP RUN.
