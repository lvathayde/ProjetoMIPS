.data
  # Comandos
  string_comando_cardapio_ad: .asciiz "cardapio_ad"
  string_comando_cardapio_rm: .asciiz "cardapio_rm"
  string_comando_cardapio_list: .asciiz "cardapio_list"
  string_comando_cardapio_format: .asciiz "cardapio_format"
  string_comando_mesa_iniciar: .asciiz "mesa_iniciar"
  string_comando_mesa_ad_item: .asciiz "mesa_ad_item"
  string_comando_mesa_rm_item: .asciiz "mesa_rm_item"
  string_comando_mesa_format: .asciiz "mesa_format"
  string_comando_mesa_parcial: .asciiz "mesa_parcial"
  string_comando_mesa_pagar: .asciiz "mesa_pagar"
  string_comando_mesa_fechar: .asciiz "mesa_fechar"
  string_comando_salvar: .asciiz "salvar"
  string_comando_recarregar: .asciiz "recarregar"
  string_comando_formatar: .asciiz "formatar"
  string_comando_help: .asciiz "help"
  string_comando_sair: .asciiz "sair"

  string_erro_sintaxe_cardapio_ad: .asciiz "Erro de sintaxe: cardapio_ad-<codigo_item>-<preco_item>-<nome_item>"
  string_erro_sintaxe_cardapio_rm: .asciiz "Erro de sintaxe: cardapio_rm-<codigo_item>"
  string_erro_sintaxe_mesa_iniciar: .asciiz "Erro de sintaxe: mesa_iniciar-<codigo_mesa>-<telefone>-<nome_responsavel>"
  string_erro_sintaxe_mesa_ad_item: .asciiz "Erro de sintaxe: mesa_ad_item-<codigo_mesa>-<codigo_item>"
  string_erro_sintaxe_mesa_rm_item: .asciiz "Erro de sintaxe: mesa_rm_item-<codigo_mesa>-<codigo_item>"
  string_erro_sintaxe_mesa_parcial: .asciiz "Erro de sintaxe: mesa_parcial-<codigo_mesa>"
  string_erro_sintaxe_mesa_pagar: .asciiz "Erro de sintaxe: mesa_pagar-<codigo_mesa>-<valor_pagar>"
  string_erro_sintaxe_mesa_fechar: .asciiz "Erro de sintaxe: mesa_fechar-<codigo_mesa>"

  string_comando_invalido: .asciiz "Comando invalido"

  string_exit: .asciiz "Obigado e volte sempre!"

  # Help string
  string_help: .asciiz "Comandos disponiveis:\ncomando: cardapio_ad-<codigo_item>-<preco_item>-<nome_item>\ndescricao: Adiciona um item ao cardapio\n\ncomando: cardapio_rm-<codigo_item>\ndescricao: Remove um item do cardapio\n\ncomando: cardapio_list\ndescricao: Lista todos os itens cadastrados no cardapio\n\ncomando: cardapio_format\ndescricao: Apaga todos os itens do cardapio\n\ncomando: mesa_iniciar-<codigo_mesa>-<telefone>-<nome_responsavel>\ndescricao: Inicia o atendimento de uma mesa\n\ncomando: mesa_ad_item-<codigo_mesa>-<codigo_item>\ndescricao: Adiciona um item a mesa\n\ncomando: mesa_rm_item-<codigo_mesa>-<codigo_item>\ndescricao: Remove um item da mesa\n\ncomando: mesa_format\ndescricao: Formata a mesa\n\ncomando: mesa_parcial-<codigo_mesa>\ndescricao: Lista os itens da mesa\n\ncomando: mesa_pagar-<codigo_mesa>-<valor_pagar>\ndescricao: Paga um valor da mesa\n\ncomando: mesa_fechar-<codigo_mesa>\ndescricao: Fecha a mesa\n\ncomando: salvar\ndescricao: Salva os dados em um arquivo\n\ncomando: recarregar\ndescricao: Recarrega os dados de um arquivo\n\ncomando: formatar\ndescricao: Formata o arquivo de dados\n\ncomando: help\ndescricao: Exibe os comandos disponiveis\n\ncomando: sair\ndescricao: Encerra o programa\n"

  string_cardapio_erro_codigo_invalido: .asciiz "Falha: codigo de item invalido"
  string_cardapio_ad_sucesso: .asciiz "Item adicionado com sucesso"
  string_cardapio_ad_erro_ja_cadastrado: .asciiz "Falha: numero de item ja cadastrado"

  string_cardapio_rm_sucesso: .asciiz "Item removido com sucesso"
  string_cardapio_rm_erro_nao_cadastrado: .asciiz "Codigo informado nao possui item cadastrado no cardapio"

  string_mesa_iniciar_sucesso: .asciiz "Atendimento iniciado com sucesso"
  string_mesa_ocupada: .asciiz "Falha: mesa ocupada"
  string_mesa_codigo_invalido: .asciiz "Falha: mesa inexistente"

  string_nome_do_arquivo: .asciiz "d://Users/hudo/Desktop/arquivoGian/restaurante.txt"
  string_salvar_sucesso: .asciiz "Dados salvos com sucesso"
  string_recarregar_sucesso: .asciiz "Dados recarregados com sucesso"  
  string_formatar_sucesso: .asciiz "Dados formatados com sucesso"

  string_cardapio_list_cabecalho: .asciiz "Codigo - Nome - Preco"
  string_mesa_parcial_cabecalho: .asciiz "Cod. - Nome - Quantidade - Preco"
  string_mesa_parcial_total_conta: .asciiz "Total da conta: "
  string_mesa_parcial_valor_pago: .asciiz "Valor pago: "
  string_mesa_parcial_saldo_devedor: .asciiz "Saldo devedor: "

  string_separador: .asciiz " - "
  string_reais: .asciiz "R$ "
  string_virgula: .asciiz ","

  string_mesa_nao_ocupada: .asciiz "Falha: mesa nao iniciou atendimento"
  string_item_nao_cadastrado: .asciiz "Falha: item nao cadastrado no cardapio"
  string_item_invalido: .asciiz "Falha: codigo do item invalido"
  string_item_nao_esta_na_conta: .asciiz "Falha: item nao consta na conta"
  string_item_removido_com_sucesso: .asciiz "Item removido com sucesso"

  string_mesa_fechar_sucesso: .asciiz "Mesa fechada com sucesso"
  string_valor_pago_menor_que_valor_total: .asciiz "Falha: saldo devedor ainda nao quitado. Valor restante: "

  string_pagamento_realizado_sucesso: .asciiz "Pagamento realizado com sucesso"

  string_prompt: .asciiz "swift's-shell>> "
  buffer_input: .space 320 # Buffer para leitura de strings

  buffer_comando: .space 80 # Buffer para armazenar o comando
  buffer_option_1: .space 80 # Buffer para armazenar a primeira opcao
  buffer_option_2: .space 80 # Buffer para armazenar a segunda opcao
  buffer_option_3: .space 80 # Buffer para armazenar a terceira opcao

  buffer_int_to_string: .space 6 # Buffer para conversao de inteiro para string

  .align 2
  cardapio: .space 1040 # Espaco reservado para guardar os itens do cardapio

  .align 2
  mesas: .space 1380 # Espaco reservado para guardar as informacoes das mesas

.macro print_int(%inteiro)
  li $v0, 1
  move $a0, %inteiro
  syscall 
.end_macro

.macro print_int_unsigned(%inteiro)
  li $v0, 36
  move $a0, %inteiro
  syscall 
.end_macro

.macro print_string_label(%string_label)
  li $v0, 4
  la $a0, %string_label
  syscall 
.end_macro

.macro print_string_address($string_address)
  li $v0, 4
  move $a0, $string_address
  syscall 
.end_macro

.macro break_line
  li $v0, 11
  li $a0, 10
  syscall
.end_macro

.text
  main:
    la $s0, cardapio # Carrega o endereco do cardapio
    la $s1, mesas # Carrega o endereco das mesas

    jal recarregar

    main_loop:
      print_string_label(string_prompt) # Imprime o prompt
      li $v0, 8 # Le a string
      la $a0, buffer_input # Carrega o endereco do buffer
      li $a1, 100 # Carrega o tamanho do buffer
      syscall

      la $a0, buffer_input # Carrega o endereco do buffer
      jal processar_comando # Chama a funcao processar_comando

      j main_loop


  # Funcao processar_comando, processa o comando digitado pelo usuario
  processar_comando:
    addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
    sw $ra, 0($sp) # Salva o endereco de retorno na pilha
    la $a0, buffer_input # Carrega o endereco do buffer de entrada
    la $a1, buffer_comando # Carrega o endereco do buffer de comando
    jal extrai_comando_ou_argumento # Chama a funcao extrai_comando_ou_argumento para extrair o comando digitado pelo usuario
    lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
    addi $sp, $sp, 4 # Incrementa o ponteiro de pilha

    la $t0, buffer_comando # Carrega o endereco do buffer de comando
    lb $t0, 0($t0) # Carrega o primeiro byte do buffer de comando
    beq $t0, 0, comando_invalido # Se o primeiro byte for 0, o comando e invalido
    beq $v1, 1, acabou

    addi $a0, $v0, 1 # Salva o endereco de onde comeca o argumento 1
    addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
    sw $ra, 0($sp) # Salva o endereco de retorno na pilha
    la $a1, buffer_option_1 # Carrega o endereco do buffer de opcao 1
    jal extrai_comando_ou_argumento # Chama a funcao extrai_comando_ou_argumento para extrair o argumento 1
    lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
    addi $sp, $sp, 4 # Incrementa o ponteiro de pilha

    la $t0, buffer_option_1 # Carrega o endereco do buffer de opcao 1
    lb $t0, 0($t0) # Carrega o primeiro byte do buffer de opcao 1
    beq $v1, 1, acabou

    addi $a0, $v0, 1 # Salva o endereco de onde comeca o argumento 2
    addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
    sw $ra, 0($sp) # Salva o endereco de retorno na pilha
    la $a1, buffer_option_2 # Carrega o endereco do buffer de opcao 2
    jal extrai_comando_ou_argumento # Chama a funcao extrai_comando_ou_argumento para extrair o argumento 2
    lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
    addi $sp, $sp, 4 # Incrementa o ponteiro de pilha

    la $t0, buffer_option_2 # Carrega o endereco do buffer de opcao 2
    lb $t0, 0($t0) # Carrega o primeiro byte do buffer de opcao 2
    beq $v1, 1, acabou

    addi $a0, $v0, 1 # Salva o endereco de onde comeca o argumento 3
    addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
    sw $ra, 0($sp) # Salva o endereco de retorno na pilha
    la $a1, buffer_option_3 # Carrega o endereco do buffer de opcao 3
    jal extrai_comando_ou_argumento # Chama a funcao extrai_comando_ou_argumento para extrair o argumento 3
    lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
    addi $sp, $sp, 4 # Incrementa o ponteiro de pilha

    acabou:
      # Compara o comando digitado pelo usuario com os comandos possiveis
      # Comando cardapio_ad
      addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
      sw $ra, 0($sp) # Salva o endereco de retorno na pilha
      la $a0, buffer_comando # Carrega o endereco do buffer de comando
      la $a1, string_comando_cardapio_ad # Carrega o endereco da string com o comando cardapio_ad
      jal strcmp # Chama a funcao strcmp para comparar o comando digitado pelo usuario com o comando cardapio_ad
      lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
      addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
      beq $v0, $0, chama_cardapio_ad # Se o comando digitado for igual ao comando cardapio_ad, chama a funcao cardapio_ad

      # Comando cardapio_rm
      addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
      sw $ra, 0($sp) # Salva o endereco de retorno na pilha
      la $a0, buffer_comando # Carrega o endereco do buffer de comando
      la $a1, string_comando_cardapio_rm # Carrega o endereco da string com o comando cardapio_rm
      jal strcmp # Chama a funcao strcmp para comparar o comando digitado pelo usuario com o comando cardapio_rm
      lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
      addi $sp, $sp, 4 # Incrementa o ponteiro de pilha   
      beq $v0, $0, chama_cardapio_rm # Se o comando digitado for igual ao comando cardapio_rm, chama a funcao cardapio_rm

      # Comando cardapio_list
      addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
      sw $ra, 0($sp) # Salva o endereco de retorno na pilha
      la $a0, buffer_comando # Carrega o endereco do buffer de comando
      la $a1, string_comando_cardapio_list # Carrega o endereco da string com o comando cardapio_list
      jal strcmp # Chama a funcao strcmp para comparar o comando digitado pelo usuario com o comando cardapio_list
      lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
      addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
      beq $v0, $0, chama_cardapio_list # Se o comando digitado for igual ao comando cardapio_list, chama a funcao cardapio_list

      # Comando cardapio_format
      addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
      sw $ra, 0($sp) # Salva o endereco de retorno na pilha
      la $a0, buffer_comando # Carrega o endereco do buffer de comando
      la $a1, string_comando_cardapio_format # Carrega o endereco da string com o comando cardapio_format
      jal strcmp # Chama a funcao strcmp para comparar o comando digitado pelo usuario com o comando cardapio_format
      lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
      addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
      beq $v0, $0, chama_cardapio_format # Se o comando digitado for igual ao comando cardapio_format, chama a funcao cardapio_format

      # Comando mesa_iniciar
      addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
      sw $ra, 0($sp) # Salva o endereco de retorno na pilha
      la $a0, buffer_comando # Carrega o endereco do buffer de comando
      la $a1, string_comando_mesa_iniciar # Carrega o endereco da string com o comando mesa_iniciar
      jal strcmp # Chama a funcao strcmp para comparar o comando digitado pelo usuario com o comando mesa_iniciar
      lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
      addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
      beq $v0, $0, chama_mesa_iniciar # Se o comando digitado for igual ao comando mesa_iniciar, chama a funcao mesa_iniciar

      # Comando mesa_ad_item
      addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
      sw $ra, 0($sp) # Salva o endereco de retorno na pilha
      la $a0, buffer_comando # Carrega o endereco do buffer de comando
      la $a1, string_comando_mesa_ad_item # Carrega o endereco da string com o comando mesa_ad_item
      jal strcmp # Chama a funcao strcmp para comparar o comando digitado pelo usuario com o comando mesa_ad_item
      lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
      addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
      beq $v0, $0, chama_mesa_ad_item # Se o comando digitado for igual ao comando mesa_ad_item, chama a funcao mesa_ad_item

      # Comando mesa_rm_item
      addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
      sw $ra, 0($sp) # Salva o endereco de retorno na pilha
      la $a0, buffer_comando # Carrega o endereco do buffer de comando
      la $a1, string_comando_mesa_rm_item # Carrega o endereco da string com o comando mesa_rm_item
      jal strcmp # Chama a funcao strcmp para comparar o comando digitado pelo usuario com o comando mesa_rm_item
      lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
      addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
      beq $v0, $0, chama_mesa_rm_item # Se o comando digitado for igual ao comando mesarm_item, chama a funcao mesarm_item

      # Comando mesa_format
      addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
      sw $ra, 0($sp) # Salva o endereco de retorno na pilha
      la $a0, buffer_comando # Carrega o endereco do buffer de comando
      la $a1, string_comando_mesa_format # Carrega o endereco da string com o comando mesa_format
      jal strcmp # Chama a funcao strcmp para comparar o comando digitado pelo usuario com o comando mesa_format
      lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
      addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
      beq $v0, $0, chama_mesa_format # Se o comando digitado for igual ao comando mesa_format, chama a funcao mesa_format

      # Comando mesa_parcial
      addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
      sw $ra, 0($sp) # Salva o endereco de retorno na pilha
      la $a0, buffer_comando # Carrega o endereco do buffer de comando
      la $a1, string_comando_mesa_parcial # Carrega o endereco da string com o comando mesa_parcial
      jal strcmp # Chama a funcao strcmp para comparar o comando digitado pelo usuario com o comando mesa_parcial
      lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
      addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
      beq $v0, $0, chama_mesa_parcial # Se o comando digitado for igual ao comando mesa_parcial, chama a funcao mesa_parcial

      # Comando mesa_pagar
      addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
      sw $ra, 0($sp) # Salva o endereco de retorno na pilha
      la $a0, buffer_comando # Carrega o endereco do buffer de comando
      la $a1, string_comando_mesa_pagar # Carrega o endereco da string com o comando mesa_pagar
      jal strcmp # Chama a funcao strcmp para comparar o comando digitado pelo usuario com o comando mesa_pagar
      lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
      addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
      beq $v0, $0, chama_mesa_pagar # Se o comando digitado for igual ao comando mesa_pagar, chama a funcao mesa_pagar

      # Comando mesa_fechar
      addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
      sw $ra, 0($sp) # Salva o endereco de retorno na pilha
      la $a0, buffer_comando # Carrega o endereco do buffer de comando
      la $a1, string_comando_mesa_fechar # Carrega o endereco da string com o comando mesa_fechar
      jal strcmp # Chama a funcao strcmp para comparar o comando digitado pelo usuario com o comando mesa_fechar
      lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
      addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
      beq $v0, $0, chama_mesa_fechar # Se o comando digitado for igual ao comando mesa_fechar, chama a funcao mesa_fechar

      # Comando salvar
      addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
      sw $ra, 0($sp) # Salva o endereco de retorno na pilha
      la $a0, buffer_comando # Carrega o endereco do buffer de comando
      la $a1, string_comando_salvar # Carrega o endereco da string com o comando salvar
      jal strcmp # Chama a funcao strcmp para comparar o comando digitado pelo usuario com o comando salvar
      lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
      addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
      beq $v0, $0, chama_salvar # Se o comando digitado for igual ao comando salvar, chama a funcao salvar

      # Comando recarregar
      addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
      sw $ra, 0($sp) # Salva o endereco de retorno na pilha
      la $a0, buffer_comando # Carrega o endereco do buffer de comando
      la $a1, string_comando_recarregar # Carrega o endereco da string com o comando recarregar
      jal strcmp # Chama a funcao strcmp para comparar o comando digitado pelo usuario com o comando recarregar
      lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
      addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
      beq $v0, $0, chama_recarregar # Se o comando digitado for igual ao comando recarregar, chama a funcao recarregar

      # Comando formatar
      addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
      sw $ra, 0($sp) # Salva o endereco de retorno na pilha
      la $a0, buffer_comando # Carrega o endereco do buffer de comando
      la $a1, string_comando_formatar # Carrega o endereco da string com o comando formatar
      jal strcmp # Chama a funcao strcmp para comparar o comando digitado pelo usuario com o comando formatar
      lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
      addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
      beq $v0, $0, chama_formatar # Se o comando digitado for igual ao comando formatar, chama a funcao formatar

      # Comando help
      addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
      sw $ra, 0($sp) # Salva o endereco de retorno na pilha
      la $a0, buffer_comando # Carrega o endereco do buffer de comando
      la $a1, string_comando_help # Carrega o endereco da string com o comando help
      jal strcmp # Chama a funcao strcmp para comparar o comando digitado pelo usuario com o comando help
      lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
      addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
      beq $v0, $0, chama_help # Se o comando digitado for igual ao comando help, chama a funcao help

      # Comando sair
      addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
      sw $ra, 0($sp) # Salva o endereco de retorno na pilha
      la $a0, buffer_comando # Carrega o endereco do buffer de comando
      la $a1, string_comando_sair # Carrega o endereco da string com o comando sair
      jal strcmp # Chama a funcao strcmp para comparar o comando digitado pelo usuario com o comando sair
      lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
      addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
      beq $v0, $0, chama_sair # Se o comando digitado for igual ao comando sair, chama a funcao sair


      comando_invalido:
        # Comando invalido
        print_string_label(string_comando_invalido) # Imprime a string comando invalido
        break_line
        jr $ra # Retorna para o endereco de retorno

      chama_cardapio_ad:
        la $t0, buffer_option_1 # Carrega o endereco da string com a opcao 1
        lb $t1, 0($t0) # Carrega o primeiro caractere da string com a opcao 1
        beq $t1, $0, erro_sintaxe_cardapio_ad # Se o primeiro caractere for \0, imprime mensagem de erro
        move $a0, $t0 # Move a string com a opcao 1 para o registrador a0

        la $t0, buffer_option_2 # Carrega o endereco da string com a opcao 2
        lb $t1, 0($t0) # Carrega o primeiro caractere da string com a opcao 2
        beq $t1, $0, erro_sintaxe_cardapio_ad # Se o primeiro caractere for \0, imprime mensagem de erro
        move $a1, $t0 # Move a string com a opcao 2 para o registrador a1 

        la $t0, buffer_option_3 # Carrega o endereco da string com a opcao 3
        lb $t1, 0($t0) # Carrega o primeiro caractere da string com a opcao 3
        beq $t1, $0, erro_sintaxe_cardapio_ad # Se o primeiro caractere for \0, imprime mensagem de erro
        move $a2, $t0 # Move a string com a opcao 3 para o registrador a2

        addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
        sw $ra, 0($sp) # Salva o endereco de retorno na pilha
        jal cardapio_ad # Chama a funcao cardapio_ad
        lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
        addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
        j fim_interpretador

        erro_sintaxe_cardapio_ad:
          print_string_label(string_erro_sintaxe_cardapio_ad) # Imprime a string de erro de sintaxe
          break_line
          j fim_interpretador

      chama_cardapio_rm:
        la $t0, buffer_option_1 # Carrega o endereco da string com a opcao 1
        lb $t1, 0($t0) # Carrega o primeiro caractere da string com a opcao 1
        beq $t1, $0, erro_sintaxe_cardapio_rm # Se o primeiro caractere for \0, imprime mensagem de erro
        move $a0, $t0 # Move a string com a opcao 1 para o registrador a0

        addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
        sw $ra, 0($sp) # Salva o endereco de retorno na pilha
        jal cardapio_rm # Chama a funcao cardapio_rm
        lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
        addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
        j fim_interpretador

        erro_sintaxe_cardapio_rm:
          print_string_label(string_erro_sintaxe_cardapio_rm) # Imprime a string de erro de sintaxe
          break_line
          j fim_interpretador

      chama_cardapio_list:
        addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
        sw $ra, 0($sp) # Salva o endereco de retorno na pilha
        jal cardapio_list # Chama a funcao cardapio_list
        lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
        addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
        j fim_interpretador

      chama_cardapio_format:
        addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
        sw $ra, 0($sp) # Salva o endereco de retorno na pilha
        jal cardapio_format # Chama a funcao cardapio_format
        lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
        addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
        j fim_interpretador

      chama_mesa_iniciar:
        la $t0, buffer_option_1 # Carrega o endereco da string com a opcao 1
        lb $t1, 0($t0) # Carrega o primeiro caractere da string com a opcao 1
        beq $t1, $0, erro_sintaxe_mesa_iniciar # Se o primeiro caractere for \0, imprime mensagem de erro
        move $a0, $t0 # Move a string com a opcao 1 para o registrador a0

        la $t0, buffer_option_2 # Carrega o endereco da string com a opcao 2
        lb $t1, 0($t0) # Carrega o primeiro caractere da string com a opcao 2
        beq $t1, $0, erro_sintaxe_mesa_iniciar # Se o primeiro caractere for \0, imprime mensagem de erro
        move $a1, $t0 # Move a string com a opcao 2 para o registrador a1

        la $t0, buffer_option_3 # Carrega o endereco da string com a opcao 3
        lb $t1, 0($t0) # Carrega o primeiro caractere da string com a opcao 3
        beq $t1, $0, erro_sintaxe_mesa_iniciar # Se o primeiro caractere for \0, imprime mensagem de erro
        move $a2, $t0 # Move a string com a opcao 3 para o registrador a2

        addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
        sw $ra, 0($sp) # Salva o endereco de retorno na pilha
        jal mesa_iniciar # Chama a funcao mesa_iniciar
        lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
        addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
        j fim_interpretador

        erro_sintaxe_mesa_iniciar:
          print_string_label(string_erro_sintaxe_mesa_iniciar) # Imprime a string de erro de sintaxe
          break_line
          j fim_interpretador

      chama_mesa_ad_item:
        la $t0, buffer_option_1 # Carrega o endereco da string com a opcao 1
        lb $t1, 0($t0) # Carrega o primeiro caractere da string com a opcao 1
        beq $t1, $0, erro_sintaxe_mesa_ad_item # Se o primeiro caractere for \0, imprime mensagem de erro
        move $a0, $t0 # Move a string com a opcao 1 para o registrador a0

        la $t0, buffer_option_2 # Carrega o endereco da string com a opcao 2
        lb $t1, 0($t0) # Carrega o primeiro caractere da string com a opcao 2
        beq $t1, $0, erro_sintaxe_mesa_ad_item # Se o primeiro caractere for \0, imprime mensagem de erro
        move $a1, $t0 # Move a string com a opcao 2 para o registrador a1

        addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
        sw $ra, 0($sp) # Salva o endereco de retorno na pilha
        jal mesa_ad_item # Chama a funcao mesa_ad_item
        lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
        addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
        j fim_interpretador

        erro_sintaxe_mesa_ad_item:
          print_string_label(string_erro_sintaxe_mesa_ad_item) # Imprime a string de erro de sintaxe
          break_line
          j fim_interpretador

      chama_mesa_rm_item:
        la $t0, buffer_option_1 # Carrega o endereco da string com a opcao 1
        lb $t1, 0($t0) # Carrega o primeiro caractere da string com a opcao 1
        beq $t1, $0, erro_sintaxe_mesa_rm_item # Se o primeiro caractere for \0, imprime mensagem de erro
        move $a0, $t0 # Move a string com a opcao 1 para o registrador a0

        la $t0, buffer_option_2 # Carrega o endereco da string com a opcao 2
        lb $t1, 0($t0) # Carrega o primeiro caractere da string com a opcao 2
        beq $t1, $0, erro_sintaxe_mesa_rm_item # Se o primeiro caractere for \0, imprime mensagem de erro
        move $a1, $t0 # Move a string com a opcao 2 para o registrador a1

        addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
        sw $ra, 0($sp) # Salva o endereco de retorno na pilha
        jal mesa_rm_item # Chama a funcao mesa_rm_item
        lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
        addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
        j fim_interpretador

        erro_sintaxe_mesa_rm_item:
          print_string_label(string_erro_sintaxe_mesa_rm_item) # Imprime a string de erro de sintaxe
          break_line
          j fim_interpretador

      chama_mesa_format:
        addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
        sw $ra, 0($sp) # Salva o endereco de retorno na pilha
        jal mesa_format # Chama a funcao mesa_format
        lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
        addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
        j fim_interpretador

      chama_mesa_parcial:
        la $t0, buffer_option_1 # Carrega o endereco da string com a opcao 1
        lb $t1, 0($t0) # Carrega o primeiro caractere da string com a opcao 1
        beq $t1, $0, erro_sintaxe_mesa_parcial # Se o primeiro caractere for \0, imprime mensagem de erro
        move $a0, $t0 # Move a string com a opcao 1 para o registrador a0

        addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
        sw $ra, 0($sp) # Salva o endereco de retorno na pilha
        jal mesa_parcial # Chama a funcao mesa_parcial
        lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
        addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
        j fim_interpretador

        erro_sintaxe_mesa_parcial:
          print_string_label(string_erro_sintaxe_mesa_parcial) # Imprime a string de erro de sintaxe
          break_line
          j fim_interpretador

      chama_mesa_pagar:
        la $t0, buffer_option_1 # Carrega o endereco da string com a opcao 1
        lb $t1, 0($t0) # Carrega o primeiro caractere da string com a opcao 1
        beq $t1, $0, erro_sintaxe_mesa_pagar # Se o primeiro caractere for \0, imprime mensagem de erro
        move $a0, $t0 # Move a string com a opcao 1 para o registrador a0

        la $t0, buffer_option_2 # Carrega o endereco da string com a opcao 2
        lb $t1, 0($t0) # Carrega o primeiro caractere da string com a opcao 2
        beq $t1, $0, erro_sintaxe_mesa_pagar # Se o primeiro caractere for \0, imprime mensagem de erro
        move $a1, $t0 # Move a string com a opcao 2 para o registrador a1

        addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
        sw $ra, 0($sp) # Salva o endereco de retorno na pilha
        jal mesa_pagar # Chama a funcao mesa_pagar
        lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
        addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
        j fim_interpretador

        erro_sintaxe_mesa_pagar:
          print_string_label(string_erro_sintaxe_mesa_pagar) # Imprime a string de erro de sintaxe
          break_line
          j fim_interpretador

      chama_mesa_fechar:
        la $t0, buffer_option_1 # Carrega o endereco da string com a opcao 1
        lb $t1, 0($t0) # Carrega o primeiro caractere da string com a opcao 1
        beq $t1, $0, erro_sintaxe_mesa_fechar # Se o primeiro caractere for \0, imprime mensagem de erro
        move $a0, $t0 # Move a string com a opcao 1 para o registrador a0

        addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
        sw $ra, 0($sp) # Salva o endereco de retorno na pilha
        jal mesa_fechar # Chama a funcao mesa_fechar
        lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
        addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
        j fim_interpretador

        erro_sintaxe_mesa_fechar:
          print_string_label(string_erro_sintaxe_mesa_fechar) # Imprime a string de erro de sintaxe
          break_line
          j fim_interpretador

      chama_salvar:
        addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
        sw $ra, 0($sp) # Salva o endereco de retorno na pilha
        jal salvar # Chama a funcao salvar
        lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
        addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
        j fim_interpretador
      
      chama_recarregar:
        addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
        sw $ra, 0($sp) # Salva o endereco de retorno na pilha
        jal recarregar # Chama a funcao salvar
        lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
        addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
        j fim_interpretador

      chama_formatar:
        addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
        sw $ra, 0($sp) # Salva o endereco de retorno na pilha
        jal formatar # Chama a funcao formatar
        lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
        addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
        j fim_interpretador

      chama_help:
        print_string_label(string_help) # Imprime a string de ajuda
        break_line
        j fim_interpretador
      
      chama_sair:
        j exit

      fim_interpretador:
        # Limpar os buffers de comando, opcao 1, opcao 2 e opcao 3
        la $a0, buffer_comando # Carrega o endereco do buffer de comando
        li $a1, 80 # Carrega o tamanho do buffer de comando
        addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
        sw $ra, 0($sp) # Salva o endereco de retorno na pilha
        jal limpar_buffer # Chama a funcao limpar_buffer
        lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
        addi $sp, $sp, 4 # Incrementa o ponteiro de pilha

        la $a0, buffer_option_1 # Carrega o endereco do buffer de opcao 1
        li $a1, 80 # Carrega o tamanho do buffer de opcao 1
        addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
        sw $ra, 0($sp) # Salva o endereco de retorno na pilha
        jal limpar_buffer # Chama a funcao limpar_buffer
        lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
        addi $sp, $sp, 4 # Incrementa o ponteiro de pilha

        la $a0, buffer_option_2 # Carrega o endereco do buffer de opcao 2
        li $a1, 80 # Carrega o tamanho do buffer de opcao 2
        addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
        sw $ra, 0($sp) # Salva o endereco de retorno na pilha
        jal limpar_buffer # Chama a funcao limpar_buffer
        lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
        addi $sp, $sp, 4 # Incrementa o ponteiro de pilha

        la $a0, buffer_option_3 # Carrega o endereco do buffer de opcao 3
        li $a1, 80 # Carrega o tamanho do buffer de opcao 3
        addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
        sw $ra, 0($sp) # Salva o endereco de retorno na pilha
        jal limpar_buffer # Chama a funcao limpar_buffer
        lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
        addi $sp, $sp, 4 # Incrementa o ponteiro de pilha

        jr $ra # Retorna para o endereco de retorno

  # Funcao limpar_buffer, limpa o buffer de entrada
  # Argumentos:
  # $a0: endereco do buffer de entrada
  # $a1: tamanho do buffer de entrada
  limpar_buffer:
    move $t0, $a0 # Salva o endereco do buffer
    add $t1, $a0, $a1 # Soma o endereco do buffer com o tamanho do buffer
    limpar_buffer_loop:
      beq $t0, $t1, limpar_buffer_fim # Se o endereco do buffer for igual ao endereco final, termina o loop
      sb $0, 0($t0) # Limpa o byte do buffer
      addi $t0, $t0, 1 # Incrementa o endereco do buffer
      j limpar_buffer_loop # Volta para o inicio do loop

    limpar_buffer_fim:
      jr $ra # Retorna para o endereco de retorno

  # Funcao extrai_comando_ou_argumento, extrai o comando digitado pelo usuario
  # Argumentos:
  # $a0: endereco do buffer de entrada
  # $a1: endereco do buffer de saida
  # Retorna:
  # $v0: endereco de onde parou de ler o buffer de entrada
  # $v1: booleano, indicando se a string de entrada acabou (\n ou \0) (1: acabou, 0: nao acabou)
  extrai_comando_ou_argumento:
    move $t0, $a0 # Salva o endereco do buffer de entrada em $t0
    move $t1, $a1 # Salva o endereco do buffer de saida em $t1
    li $v1, 0 # Inicializa o booleano com 0

    extrai_comando_ou_argumento_loop:
      lb $t2, 0($t0) # Carrega o byte do buffer de entrada
      beq $t2, 45, extrai_comando_ou_argumento_loop_fim # Se o byte for igual a '-', vai para o fim do loop
      beq $t2, 10, extrai_comando_ou_argumento_loop_fim_acabou # Se o byte for igual a '\n', vai para o fim do loop
      beq $t2, $0, extrai_comando_ou_argumento_loop_fim_acabou # Se o byte for igual a '\0', vai para o fim do loop
      sb $t2, 0($t1) # Salva o byte no buffer de comando
      addi $t0, $t0, 1 # Incrementa o endereco do buffer de entrada
      addi $t1, $t1, 1 # Incrementa o endereco do buffer de comando
      j extrai_comando_ou_argumento_loop # Volta para o inicio do loop
    extrai_comando_ou_argumento_loop_fim_acabou:
      li $v1, 1 # Seta o booleano para 1
    
    extrai_comando_ou_argumento_loop_fim:
      sb $0, 0($t1) # Salva o byte '\0' no buffer de comando
      move $v0, $t0 # Salva o endereco de onde parou de ler o buffer de entrada em $v0
      jr $ra # Retorna para o endereco de retorno
  

  # Funcao cardapio_ad, adiciona um item ao cardapio
  # Argumentos:
  # $a0: codigo
  # $a1: preco (em centavos)
  # $a2: nome
  cardapio_ad:
    addi $sp, $sp, -4 # Alocando espaco na pilha para salvar o endereco de retorno
    sw $ra, 0($sp) # Salvando o endereco de retorno na pilha

    jal verifica_codigo_cardapio_invalido # Chama funcao para verificar se o codigo eh valido

    lw $ra, 0($sp) # Recuperando o endereco de retorno da pilha
    addi $sp, $sp, 4 # Devolvendo o espaco da pilha
    
    move $t1, $v0 # Salva o boooleano se o codigo eh valido ou nao em $t1 (1: valido, 0: invalido)
    beq $t1, $0, cardapio_ad_erro_codigo_invalido # Se o codigo for invalido, imprime a mensagem de erro e sai da funcao
    move $t0, $v1 # Salva o valor de retorno em $t0

    # Verificar se o codigo ja esta cadastrado
    move $t1, $s0 # Carrega o endereco do cardapio em $t1
    addi $t4, $s0, 1040 # Carrega o endereco do final do cardapio em $t4

    verifica_codigo_cadastrado_loop:
      beq $t1, $t4, cardapio_ad_codigo_nao_cadastrado # Se o endereco atual for igual ao final do cardapio, o codigo nao esta cadastrado, continua a execucao

      lb $t3, 0($t1) # Carrega o valor do codigo em $t3

      beq $t3, $t0, cardapio_ad_codigo_ja_cadastrado # Se o valor do codigo for igual ao codigo a ser cadastrado, o codigo ja esta cadastrado, imprime a mensagem de erro e sai da funcao

      addi $t1, $t1, 52 # Carrega o endereco do proximo codigo em $t1

      j verifica_codigo_cadastrado_loop # Reinicia o loop

    cardapio_ad_codigo_nao_cadastrado:
      # Adicionar o item ao cardapio
      li $t5, 52 # Carrega o tamanho de um item no cardapio em $t5
      subi $t2, $t0, 1 # Subtrai 1 do codigo
      mul $t3, $t2, $t5 # Multiplica o codigo por 52

      add $t1, $s0, $t3 # Carrega o endereco do item no cardapio em $t1

      sb $t0, 0($t1) # Salva o codigo no cardapio

      addi $sp, $sp, -8 # Alocando espaco na pilha para salvar o endereco de retorno
      sw $ra, 0($sp) # Salvando o endereco de retorno na pilha
      sw $a1, 4($sp) # Salvando o preco na pilha

      # Adiciona o nome do item ao cardapio
      addi $a0, $t1, 1 # Carrega o endereco do nome em $a0
      addi $a1, $a2, 0 # Carrega o endereco do nome recebido em $a1
      jal strcpy # Chama a funcao strcpy para copiar o nome para o cardapio

      lw $ra, 0($sp) # Recuperando o endereco de retorno da pilha
      lw $a1, 4($sp) # Recuperando o preco da pilha
      addi $sp, $sp, 8 # Devolvendo o espaco da pilha

      # Adiciona o preco do item ao cardapio
      addi $t1, $t1, 48 # Carrega o endereco do preco em $t1

      addi $sp, $sp, -8 # Alocando espaco na pilha para salvar o endereco de retorno
      sw $ra, 0($sp) # Salvando o endereco de retorno na pilha
      sw $t1, 4($sp) # Salvando o endereco do preco na pilha

      # Transformando o preco para inteiro
      move $a0, $a1 # Carrega o preco em $a0
      jal string_to_int # Chama a funcao string_to_int para converter o preco para inteiro

      lw $ra, 0($sp) # Recuperando o endereco de retorno da pilha
      lw $t1, 4($sp) # Recuperando o endereco do preco da pilha
      addi $sp, $sp, 8 # Devolvendo o espaco da pilha

      move $t4, $v0 # Salva o valor convertido em $t4
      sw $t4, 0($t1) # Salva o preco no cardapio

      print_string_label(string_cardapio_ad_sucesso) # Imprime a mensagem de sucesso
      break_line
      jr $ra # Sai da funcao

    cardapio_ad_erro_codigo_invalido:
      print_string_label(string_cardapio_erro_codigo_invalido)
      break_line
      jr $ra

    cardapio_ad_codigo_ja_cadastrado:
      print_string_label(string_cardapio_ad_erro_ja_cadastrado)
      break_line
      jr $ra

  # Funcao cardapio_rm, remove um item do cardapio pelo codigo
  # Argumentos:
  # $a0: codigo
  cardapio_rm:
    # Verificar se o codigo e valido
    addi $sp, $sp, -4 # Alocando espaco na pilha para salvar o endereco de retorno
    sw $ra, 0($sp) # Salvando o endereco de retorno na pilha

    jal verifica_codigo_cardapio_invalido # Chama a funcao verifica_codigo_cardapio_invalido para verificar se o codigo eh valido, retorna o valor em $v0, $v1

    lw $ra, 0($sp) # Recuperando o endereco de retorno da pilha
    addi $sp, $sp, 4 # Devolvendo o espaco da pilha

    move $t1, $v0 # Salva o booleano se o codigo eh valido em $t1 (1: valido, 0: invalido) 
    move $t0, $v1 # Salva o valor do codigo em $t0

    beq $t1, $0, cardapio_rm_erro_codigo_invalido # Se o codigo for invalido, imprime a mensagem de erro e sai da funcao

    # Verificar se o codigo ja esta cadastrado
    move $t1, $s0 # Carrega o endereco do cardapio em $t1
    addi $t4, $s0, 1040 # Carrega o endereco do final do cardapio em $t4

    verifica_codigo_cadastrado_loop_rm:
      beq $t1, $t4, cardapio_rm_codigo_nao_cadastrado # Se o endereco atual for igual ao final do cardapio, o codigo nao esta cadastrado, continua a execucao

      lb $t3, 0($t1) # Carrega o valor do codigo em $t3

      beq $t3, $t0, cardapio_rm_codigo_ja_cadastrado # Se o valor do codigo for igual ao codigo a ser cadastrado, o codigo ja esta cadastrado, imprime a mensagem de erro e sai da funcao

      addi $t1, $t1, 52 # Carrega o endereco do proximo codigo em $t1

      j verifica_codigo_cadastrado_loop_rm # Reinicia o loop

    cardapio_rm_codigo_ja_cadastrado:
      li $t5, 52 # Carrega o tamanho de um item no cardapio em $t5
      subi $t2, $t0, 1 # Subtrai 1 do codigo
      mul $t3, $t2, $t5 # Multiplica o codigo por 55

      add $t1, $s0, $t3 # Carrega o endereco do item no cardapio em $t1

      addi $t4, $t1, 52 # Carrega o endereco do final do item no cardapio em $t4

      cardapio_rm_loop:
        beq $t1, $t4, cardapio_rm_loop_end # Se o endereco atual for igual ao final do item, o codigo nao esta cadastrado, continua a execucao
        sb $0,  0($t1) # Salva o codigo no cardapio
        addi $t1, $t1, 1 # Carrega o endereco do proximo byte em $t1
        j cardapio_rm_loop_end

      cardapio_rm_loop_end:
        print_string_label(string_cardapio_rm_sucesso)
        break_line
        jr $ra

    cardapio_rm_erro_codigo_invalido:
        print_string_label(string_cardapio_erro_codigo_invalido)
        break_line
        jr $ra
    cardapio_rm_codigo_nao_cadastrado:
        print_string_label(string_cardapio_rm_erro_nao_cadastrado)
        break_line
        jr $ra

  # Funcao cardapio_list, imprime todos os itens que possuem dados do cardapio
  cardapio_list:
    # Imprime o cabecalho
    print_string_label(string_cardapio_list_cabecalho)
    break_line

    # Imprime os itens do cardapio
    move $t1, $s0 # Carrega o endereco do cardapio em $t1
    addi $t2, $s0, 1040 # Carrega o endereco do final do cardapio em $t2

    cardapio_list_loop:
      beq $t1, $t2, cardapio_list_fim # Se o endereco atual for igual ao final do cardapio, termina a execucao

      move $t4, $t1 # Salva o endereco atual em $t4

      lb $t3, 0($t4) # Carrega o valor do codigo em $t3

      beq $t3, $0, cardapio_list_proximo

      print_int($t3) # Imprime o codigo

      print_string_label(string_separador) # Imprime o separador

      addi $t4, $t4, 1 # Carrega o endereco do nome em $t4
      print_string_address($t4) # Imprime o nome

      print_string_label(string_separador) # Imprime o separador

      addi $t4, $t4, 47 # Carrega o endereco do preco em $t4
      lw $t3, 0($t4) # Carrega o preco em $t3
      addi $sp, $sp, -24 # Aloca espaco na pilha para guardar o $ra, $t0, $t1, $t2, $t3, $t4
      sw $ra, 0($sp) # Salva o endereco de retorno na pilha
      sw $t0, 4($sp) # Salva o $t0 na pilha
      sw $t1, 8($sp) # Salva o $t1 na pilha
      sw $t2, 12($sp) # Salva o $t2 na pilha
      sw $t3, 16($sp) # Salva o $t3 na pilha
      sw $t4, 20($sp) # Salva o $t4 na pilha
      move $a0, $t3 # Carrega o preco em $a0
      jal print_reais
      lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
      lw $t0, 4($sp) # Carrega o $t0 da pilha
      lw $t1, 8($sp) # Carrega o $t1 da pilha
      lw $t2, 12($sp) # Carrega o $t2 da pilha
      lw $t3, 16($sp) # Carrega o $t3 da pilha
      lw $t4, 20($sp) # Carrega o $t4 da pilha
      addi $sp, $sp, 24 # Desaloca espaco na pilha
      break_line

      cardapio_list_proximo:
        addi $t1, $t1, 52 # Carrega o endereco do proximo codigo em $t1

        j cardapio_list_loop  # Reinicia o loop

    cardapio_list_fim:
      break_line
      jr $ra # Retorna para a funcao que chamou

  # Funcao cardapio_format, formata o cardapio limpando todos os dados do cardapio
  cardapio_format:
    move $t1, $s0 # Carrega o endereco do cardapio em $t1
    addi $t2, $s0, 1040 # Carrega o endereco do final do cardapio em $t2

    cardapio_format_loop:
      beq $t1, $t2, cardapio_format_fim # Se o endereco atual for igual ao final do cardapio, termina a execucao

      sb $0, 0($t1) # Preenche o byte atual com 0

      addi $t1, $t1, 1 # Carrega o endereco do proximo byte

      j cardapio_format_loop  # Reinicia o loop

    cardapio_format_fim:
      jr $ra # Retorna para a funcao que chamou

  # Funcao mesa_iniciar, inicia o atendimento de uma mesa
  # Argumentos:
  # $a0: Codigo da mesa
  # $a1: Telefone do responsavel
  # $a2: Nome do responsavel
  mesa_iniciar:
    # Verificar se o codigo de mesa eh valido
    addi $sp, $sp, -4 # Aloca espaco na pilha para salvar o endereco de retorno
    sw $ra, 0($sp) # Salva o endereco de retorno na pilha
    jal verifica_codigo_mesa_invalido # Verifica se o codigo da mesa eh valido
    lw $ra, 0($sp) # Carrega o endereco da mesa em $sp
    addi $sp, $sp, 4 # Desaloca o espaco da pilha

    beq $v0, $0, mesa_iniciar_erro_codigo_invalido # Se o codigo da mesa for invalido, termina a execucao
    move $t0, $v1 # Salva o codigo da mesa em $t0

    # Verificar se a mesa ta ocupada
    li $t1, 92 # Carrega o tamanho de uma mesa em $t1
    subi $t2, $t0, 1 # Carrega o index da mesa em $t2
    mul $t3, $t1, $t2 # Carrega o deslocamento do endereco da mesa em $t3

    add $t4, $s1, $t3 # Carrega o endereco da mesa em $t4
    lb $t5, 1($t4) # Carrega o valor boolano se a mesa esta ocupada ou nao em $t5 (0: desocupada, 1: ocupada)

    bne $t5, $0, mesa_iniciar_erro_mesa_ocupada # Se a mesa estiver ocupada, termina a execucao

    # Se nao estiver, ocupar a mesa
    sb $t0, 0($t4) # Guarda o codigo da mesa
    li $t6, 1 # Carrega o valor booleano 1 em $t6
    sb $t6, 1($t4) # Ocupa a mesa

    addi $sp, $sp, -4 # Aloca espaco na pilha para salvar o endereco de retorno
    sw $ra, 0($sp) # Salva o endereco de retorno na pilha

    # Guarda o telefone do responsavel
    addi $a0, $t4, 2 # Carrega o endereco do telefone do responsavel em $t7
    jal strcpy # Copia o telefone do responsavel para o endereco da mesa

    lw $ra, 0($sp) # Carrega o endereco da mesa em $sp
    addi $sp, $sp, 4 # Desaloca o espaco da pilha

    addi $sp, $sp, -4 # Aloca espaco na pilha para salvar o endereco de retorno
    sw $ra, 0($sp) # Salva o endereco de retorno na pilha

    # Guarda o nome do responsavel
    addi $a0, $t4, 14 # Carrega o endereco do nome do responsavel em $t7
    move $a1, $a2 # Carrega o endereco do nome do responsavel em $a1
    jal strcpy # Copia o nome do responsavel para o endereco da mesa

    lw $ra, 0($sp) # Carrega o endereco da mesa em $sp
    addi $sp, $sp, 4 # Desaloca o espaco da pilha

    print_string_label(string_mesa_iniciar_sucesso) # Imprime a mensagem de mesa iniciada
    break_line 
    jr $ra # Retorna para a funcao que chamou

    mesa_iniciar_erro_codigo_invalido:
      print_string_label(string_mesa_codigo_invalido) # Imprime a mensagem de codigo de mesa invalido
      break_line 
      jr $ra

    mesa_iniciar_erro_mesa_ocupada:
      print_string_label(string_mesa_ocupada) # Imprime a mensagem de mesa ocupada
      break_line
      jr $ra
  
  # Funcao mesa_ad_item que adiciona um item ao pedido de uma mesa
  # Argumentos:
  # $a0: Codigo da mesa
  # $a1: Codigo do item
  mesa_ad_item:
    # Verifica se o codigo da mesa e valido
    addi $sp, $sp, -4 # Aloca espaco na pilha para salvar o endereco de retorno
    sw $ra, 0($sp) # Salva o endereco de retorno na pilha
    jal verifica_codigo_mesa_invalido # Converte o codigo da mesa para inteiro
    lw $ra, 0($sp) # Carrega o endereco da mesa em $sp
    addi $sp, $sp, 4 # Desaloca o espaco da pilha
    
    beq $v0, $0, mesa_ad_item_erro_codigo_mesa_invalido # Se o codigo da mesa for invalido, termina a execucao
    move $t0, $v1 # Salva o codigo da mesa em $t0

    # Verifica se a mesa esta ocupada
    li $t1, 92 # Carrega o tamanho de uma mesa em $t1
    subi $t2, $t0, 1 # Carrega o index da mesa em $t2
    mul $t1, $t1, $t2 # Carrega o deslocamento do endereco da mesa em $t1
    add $t1, $s1, $t1 # Carrega o endereco da mesa em $t1
    lb $t2, 1($t1) # Carrega o valor boolano se a mesa esta ocupada ou nao em $t1 (0: desocupada, 1: ocupada)
    beq $t2, $0, mesa_ad_item_erro_mesa_nao_ocupada # Se a mesa estiver desocupada, termina a execucao

    # Verifica se o codigo do item e valido
    addi $sp, $sp, -12 # Aloca espaco na pilha para salvar o endereco de retorno
    sw $ra, 0($sp) # Salva o endereco de retorno na pilha
    sw $t1, 4($sp) # Salva o endereco da mesa na pilha
    sw $t0, 8($sp) # Salva o codigo do item na pilha

    move $a0, $a1 # Carrega o endereco do codigo do item em $a0
    jal verifica_codigo_cardapio_invalido # Converte o codigo do item para inteiro
    
    lw $ra, 0($sp) # Carrega o endereco da mesa em $sp
    lw $t1, 4($sp) # Carrega o endereco da mesa em $t1
    lw $t0, 8($sp) # Carrega o codigo do item em $t0
    addi $sp, $sp, 12 # Desaloca o espaco da pilha
    
    beq $v0, $0, mesa_ad_item_erro_codigo_item_invalido # Se o codigo do item for invalido, termina a execucao
    move $t2, $v1 # Salva o codigo do item em $t2

    # Verifica se o item existe no cardapio
    li $t9, 52 # Carrega o tamanho de um item do cardapio em $t9
    subi $t3, $t2, 1 # Carrega o index do item em $t2
    mul $t3, $t9, $t3 # Carrega o deslocamento do endereco do item em $t3
    add $t3, $s0, $t3 # Carrega o endereco do item em $t3
    lb $t4, 0($t3) # Carrega o valor do codigo do item, se for 0, o item nao existe
    beq $t4, $0, mesa_ad_item_erro_item_nao_cadastrado # Se o item nao existir, termina a execucao

    # Verifica se o item ja foi adicionado ao pedido da mesa
    # O endereco da mesa esta em $t1
    # O codigo do item esta em $t2
    addi $t4, $t1, 52 # Carrega o endereco do array de pedidos da mesa em $t4
    move $t6, $t4 # Salva o endereco do array de pedidos da mesa em $t6
    addi $t5, $t6, 40 # Carrega o endereco final do array de pedidos da mesa em $t5
    mesa_ad_item_verifica_item_loop:
      beq $t6, $t5, mesa_ad_item_item_nao_adicionado # Se o item nao foi adicionado, adiciona o item 
      lb $t7, 0($t6) # Carrega o codigo do item em $t7
      beq $t7, $t2, mesa_ad_item_ja_adicionado # Se o item ja foi adicionado, incrementa a quantidade
      addi $t6, $t6, 2 # Incrementa o endereco do array de pedidos da mesa
      j mesa_ad_item_verifica_item_loop # Verifica o proximo item

    # Se foi, incrementa a quantidade do item no pedido
    mesa_ad_item_ja_adicionado:
      lb $t7, 1($t6) # Carrega a quantidade do item em $t7
      addi $t7, $t7, 1 # Incrementa a quantidade do item
      sb $t7, 1($t6) # Salva a quantidade do item
      j mesa_ad_item_fim # Vai para o fim da funcao

    # Se nao, adiciona o item ao pedido da mesa
    mesa_ad_item_item_nao_adicionado:
      # Procura o primeiro espaco vazio no array de pedidos da mesa
      move $t6, $t4 # Carrega o endereco do array de pedidos da mesa em $t6
      addi $t5, $t6, 40 # Carrega o endereco final do array de pedidos da mesa em $t5
      mesa_ad_item_procura_espaco_vazio_loop:
        beq $t6, $t5, mesa_ad_item_adiciona_item # Se chegou no final do array, adiciona o item
        lb $t7, 0($t6) # Carrega o codigo do item em $t7
        beq $t7, $0, mesa_ad_item_adiciona_item # Se encontrou um espaco vazio, adiciona o item
        addi $t6, $t6, 2 # Incrementa o endereco do array de pedidos da mesa
        j mesa_ad_item_procura_espaco_vazio_loop # Verifica o proximo item
      mesa_ad_item_adiciona_item:
        sb $t2, 0($t6) # Salva o codigo do item no array de pedidos da mesa
        li $t7, 1 # Carrega o valor 1 em $t7
        sb $t7, 1($t6) # Salva a quantidade do item no array de pedidos da mesa
        j mesa_ad_item_fim # Vai para o fim da funcao

    # Aumentar o valor total do pedido da mesa, imprimir a mensagem de sucesso e retornar
    mesa_ad_item_fim:
      # Incrementa o valor total do pedido da mesa
      # O endereco do item esta em $t3
      addi $t8, $t3, 48 # Carrega o endereco do valor do item em $t8
      lw $t8, 0($t8) # Carrega o valor do item em $t8
      lw $t9, 44($t1) # Carrega o valor total do pedido da mesa em $t9
      add $t9, $t9, $t8 # Incrementa o valor total do pedido da mesa
      sw $t9, 44($t1) # Salva o valor total do pedido da mesa
      print_string_label(string_cardapio_ad_sucesso)
      break_line
      # Imprime a mensagem de item adicionado com sucesso
      jr $ra


    mesa_ad_item_erro_codigo_mesa_invalido:
      print_string_label(string_mesa_codigo_invalido)
      break_line
      jr $ra
    mesa_ad_item_erro_mesa_nao_ocupada:
      print_string_label(string_mesa_nao_ocupada)
      break_line
      jr $ra
    mesa_ad_item_erro_codigo_item_invalido:
      print_string_label(string_item_invalido)
      break_line
      jr $ra
    mesa_ad_item_erro_item_nao_cadastrado:
      print_string_label(string_item_nao_cadastrado)
      break_line
      jr $ra
  
  # Funcao mesa_rm_item que remove um item do pedido de uma mesa do restaurante
  # $a0: codigo da mesa
  # $a1: codigo do item
  mesa_rm_item:
    # Verifica se o codigo da mesa e valido
    addi $sp, $sp, -4 # Aloca espaco na pilha para salvar o endereco de retorno
    sw $ra, 0($sp) # Salva o endereco de retorno na pilha
    jal verifica_codigo_mesa_invalido # Chama a funcao que verifica se o codigo da mesa e valido
    lw $ra, 0($sp) # Carrega o endereco da mesa em $sp
    addi $sp, $sp, 4 # Desaloca o espaco da pilha

    beq $v0, $0, mesa_rm_item_erro_codigo_mesa_invalido # Se o codigo da mesa for invalido, imprime a mensagem de erro e retorna
    move $t0, $v1 # Salva o codigo da mesa em $t0
    
    # Verifica se a mesa esta ocupada
    li $t1, 92 # Carrega o tamanho de uma mesa em $t1
    subi $t2, $t0, 1 # Carrega o index da mesa em $t2
    mul $t1, $t1, $t2 # Carrega o deslocamento do endereco da mesa em $t1
    add $t1, $s1, $t1 # Carrega o endereco da mesa em $t1
    lb $t2, 1($t1) # Carrega o valor boolano se a mesa esta ocupada ou nao em $t1 (0: desocupada, 1: ocupada)
    beq $t2, $0, mesa_rm_item_erro_mesa_nao_ocupada # Se a mesa estiver desocupada, termina a execucao

    # Verifica se o codigo do item e valido
    addi $sp, $sp, -12 # Aloca espaco na pilha para salvar o endereco de retorno
    sw $ra, 0($sp) # Salva o endereco de retorno na pilha
    sw $t1, 4($sp) # Salva o endereco da mesa na pilha
    sw $t0, 8($sp) # Salva o codigo do item na pilha

    move $a0, $a1 # Carrega o endereco do codigo do item em $a0
    jal verifica_codigo_cardapio_invalido # Verifica se o codigo do item e valido

    lw $ra, 0($sp) # Carrega o endereco da mesa em $sp
    lw $t1, 4($sp) # Carrega o endereco da mesa em $t1
    lw $t0, 8($sp) # Carrega o codigo do item em $t0
    addi $sp, $sp, 12 # Desaloca o espaco da pilha

    beq $v0, $0, mesa_rm_item_erro_codigo_item_invalido # Se o codigo do item for invalido, termina a execucao
    move $t2, $v1 # Salva o codigo do item em $t2

    # Verifica se o item consta no pedido da mesa
    # O endereco da mesa esta em $t1
    # O codigo do item esta em $t2
    addi $t3, $t1, 52 # Carrega o endereco do primeiro item do pedido da mesa em $t3
    move $t4, $t3 # Salva o endereco do primeiro item do pedido da mesa em $t4
    addi $t6, $t1, 40 # Carrega o endereco final do array de pedidos da mesa
    mesa_rm_item_loop:
      beq $t4, $t6, mesa_rm_item_erro_item_nao_cadastrado # Se o item nao for encontrado, termina a execucao
      lb $t5, 0($t4) # Carrega o codigo do item em $t5
      beq $t5, $t2, mesa_rm_item_item_encontrado # Se o item for encontrado, termina a execucao
      addi $t4, $t4, 2 # Incrementa o endereco do item do pedido da mesa
      j mesa_rm_item_loop # Volta para o inicio do loop

    mesa_rm_item_item_encontrado:
      # O endereco da mesa esta em $t1
      # O codigo do item esta em $t2
      # O endereco do item no pedido da mesa esta em $t4
      # Verifica a quantidade do item
      lb $t5, 1($t4) # Carrega a quantidade do item em $t5
      beq $t5, 1, mesa_rm_item_remove_item # Se a quantidade do item for 1, remove o item do pedido da mesa

      # Se for mais de um, decrementa a quantidade e diminui do total
      subi $t5, $t5, 1 # Decrementa a quantidade do item
      sb $t5, 1($t4) # Salva a quantidade do item
      j mesa_rm_item_remove_item_end # Pula o remove item

      mesa_rm_item_remove_item:
        # Se tiver 1, remove o item do pedido da mesa, e diminui do total
        lb $0, 0($t4) # Limpa o codigo do item
        lb $0, 1($t4) # Limpa a quantidade do item
      mesa_rm_item_remove_item_end:
        # Diminuir o preco total da mesa
        li $t6, 52 # Carregando o tamanho de um item em $t6
        subi $t7, $t2, 1 # Carregando o index do item em $t7
        mul $t6, $t6, $t7 # Carregando o deslocamento do endereco do item em $t6
        add $t6, $s0, $t6 # Carregando o endereco do item em $t6
        lw $t6, 48($t6) # Carregando o preco do item em $t7
        lw $t7, 44($t1) # Carregando o preco total da mesa em $t7
        sub $t7, $t7, $t6 # Diminuindo o preco total da mesa
        sw $t7, 44($t1) # Salvando o novo preco total da mesa

        print_string_label(string_item_removido_com_sucesso)
        break_line
        jr $ra

    mesa_rm_item_erro_codigo_mesa_invalido:
      print_string_label(string_mesa_codigo_invalido)
      break_line
      jr $ra

    mesa_rm_item_erro_mesa_nao_ocupada:
      print_string_label(string_mesa_nao_ocupada)
      break_line
      jr $ra

    mesa_rm_item_erro_codigo_item_invalido:
      print_string_label(string_item_invalido)
      break_line
      jr $ra

    mesa_rm_item_erro_item_nao_cadastrado:
      print_string_label(string_item_nao_esta_na_conta)
      break_line
      jr $ra

  # Funcao mesa_format, formata as mesas, limpando todos os dados delas
  mesa_format:
  move $t1, $s1 # Carrega o endereco das mesas em $t1
  addi $t2, $s1, 1380 # Carrega o endereco do final da mesa em $t2

    mesa_format_loop:
      beq $t1, $t2, mesa_format_fim # Se o endereco atual for igual ao final da mesa, termina a execucao

      sb $0, 0($t1) # Preenche o byte atual com 0

      addi $t1, $t1, 1 # Carrega o endereco do proximo byte

      j mesa_format_loop  # Reinicia o loop

    mesa_format_fim:
      jr $ra # Retorna para a funcao que chamou 

  # Funcao mesa_parcial, mostra um relatorio de consumo parcial da mesa
  # listando todos os pedidos feitos, suas quantidades, o valor da conta, o saldo pago
  # e o saldo devedor
  # Argumentos:
  # $a0: codigo da mesa
  mesa_parcial:
    # Verifica se o codigo da mesa e valido
    addi $sp, $sp, -4 # Guarda espaco na pilha para salvar o valor de $ra
    sw $ra, 0($sp) # Salva o valor de $ra na pilha
    jal verifica_codigo_mesa_invalido # Verifica se o codigo da mesa e valido
    lw $ra, 0($sp) # Recupera o valor de $ra da pilha
    addi $sp, $sp, 4 # Devolve o espaco da pilha

    beq $v0, $0, mesa_parcial_erro_codigo_mesa_invalido # Se o codigo da mesa for invalido, termina a execucao
    move $t0, $v1 # Salva o codigo da mesa em $t0

    # Verifica se a mesa esta ocupada
    addi $sp, $sp, -4 # Guarda espaco na pilha para salvar o valor de $t0
    sw $ra, 0($sp) # Salva o valor de $t0 na pilha
    move $a0, $t0 # Salva o codigo da mesa em $a0
    jal retorna_endereco_base_mesa
    lw $ra, 0($sp) # Recupera o valor de $t0 da pilha
    addi $sp, $sp, 4 # Devolve o espaco da pilha
    move $t1, $v0 # Salva o endereco da mesa em $t1

    lb $t2, 1($t1) # Carrega o status da mesa em $t2
    beq $t2, $0, mesa_parcial_erro_mesa_nao_ocupada

    # Imprime o relatorio de consumo parcial da mesa, se nenhum pedido foi feito, imprime uma mensagem dizendo que a mesa nao fez nenhum pedido ainda
    addi $t4, $t1, 52 # Carrega o endereco do array de pedidos da mesa em $t4
    addi $t5, $t4, 40 # Carrega o endereco do final da mesa em $t5

    print_string_label(string_mesa_parcial_cabecalho)
    break_line

    mesa_parcial_imprime_pedidos_loop:
      # Verifica se o endereco atual e o final do array de pedidos da mesa
      beq $t4, $t5, mesa_parcial_imprime_pedidos_fim # Se o endereco atual for igual ao final do array de pedidos da mesa sai do loop
      lb $t6, 0($t4) # Carrega o codigo do item do pedido em $t6
      beq $t6, $0, mesa_parcial_imprime_pedidos_loop_proximo_item # Se o codigo do item do pedido for 0 pula para o proximo item

      # IMPRESSOES: CODIGO - NOME - QUANTIDADE - PRECO
      print_int($t6) # Imprime o codigo do item
      print_string_label(string_separador) # Imprime o separador

      addi $sp, $sp, -12 # Guarda espaco na pilha para salvar o $ra, $t0 e $t1
      sw $t0, 0($sp) # Salva o valor de $t0 na pilha
      sw $t1, 4($sp) # Salva o valor de $t1 na pilha
      sw $ra, 8($sp) # Salva o valor de $ra na pilha
      move $a0, $t6 # Salva o codigo do item em $a0
      jal retorna_endereco_base_item
      lw $t0, 0($sp) # Recupera o valor de $t0 da pilha
      lw $t1, 4($sp) # Recupera o valor de $t1 da pilha
      lw $ra, 8($sp) # Recupera o valor de $ra da pilha
      addi $sp, $sp, 12 # Devolve o espaco da pilha      
      move $t7, $v0 # Carrega o endereco base do item em $t7

      addi $t8, $t7, 1 # Carrega o endereco do nome do item em $t8
      print_string_address($t8)
      print_string_label(string_separador) # Imprime o separador

      lb $t8, 1($t4) # Carrega a quantidade do item em $t8
      print_int($t8) # Imprime a quantidade do item
      print_string_label(string_separador) # Imprime o separador

      lw $t9, 48($t7) # Carrega o preco do item em $t8
      mulu $t9, $t9, $t8 # Multiplica o preco do item pela quantidade do item
      addi $sp, $sp, -28 # Guarda espaco na pilha para salvar o $ra, $t0, $t1, $t2, $t3, $t4 e $t5
      sw $t0, 0($sp) # Salva o valor de $t0 na pilha
      sw $t1, 4($sp) # Salva o valor de $t1 na pilha
      sw $t2, 8($sp) # Salva o valor de $t2 na pilha
      sw $t3, 12($sp) # Salva o valor de $t3 na pilha
      sw $t4, 16($sp) # Salva o valor de $t4 na pilha
      sw $t5, 20($sp) # Salva o valor de $t5 na pilha
      sw $ra, 24($sp) # Salva o valor de $ra na pilha
      move $a0, $t9 # Salva o preco do item em $a0
      jal print_reais
      lw $t0, 0($sp) # Recupera o valor de $t0 da pilha
      lw $t1, 4($sp) # Recupera o valor de $t1 da pilha
      lw $t2, 8($sp) # Recupera o valor de $t2 da pilha
      lw $t3, 12($sp) # Recupera o valor de $t3 da pilha
      lw $t4, 16($sp) # Recupera o valor de $t4 da pilha
      lw $t5, 20($sp) # Recupera o valor de $t5 da pilha
      lw $ra, 24($sp) # Recupera o valor de $ra da pilha
      addi $sp, $sp, 28 # Devolve o espaco da pilha
      break_line

      mesa_parcial_imprime_pedidos_loop_proximo_item:
        addi $t4, $t4, 2 # Carrega o endereco do proximo item
        j mesa_parcial_imprime_pedidos_loop # Reinicia o loop
      
    mesa_parcial_imprime_pedidos_fim: 
      # Imprime valor total da conta
      print_string_label(string_mesa_parcial_total_conta)
      lw $t3, 44($t1) # Carrega o valor total da conta em $t3
      addi $sp, $sp, -16 # Guarda espaco na pilha para salvar o $ra, $t1, $t3 e $t4
      sw $t1, 0($sp) # Salva o valor de $t1 na pilha
      sw $t3, 4($sp) # Salva o valor de $t3 na pilha
      sw $t4, 8($sp) # Salva o valor de $t4 na pilha
      sw $ra, 12($sp) # Salva o valor de $ra na pilha
      move $a0, $t3 # Salva o valor total da conta em $a0
      jal print_reais
      lw $t1, 0($sp) # Recupera o valor de $t1 da pilha
      lw $t3, 4($sp) # Recupera o valor de $t3 da pilha
      lw $t4, 8($sp) # Recupera o valor de $t4 da pilha
      lw $ra, 12($sp) # Recupera o valor de $ra da pilha
      addi $sp, $sp, 16 # Devolve o espaco da pilha
      break_line
      
      # Imprime valor pago
      print_string_label(string_mesa_parcial_valor_pago)
      lw $t4, 48($t1) # Carrega o valor pago em $t3
      addi $sp, $sp, -12 # Guarda espaco na pilha para salvar o $ra, $t3 e $t4
      sw $t3, 0($sp) # Salva o valor de $t3 na pilha
      sw $t4, 4($sp) # Salva o valor de $t4 na pilha
      sw $ra, 8($sp) # Salva o valor de $ra na pilha
      move $a0, $t4 # Salva o valor pago em $a0
      jal print_reais
      lw $t3, 0($sp) # Recupera o valor de $t3 da pilha
      lw $t4, 4($sp) # Recupera o valor de $t4 da pilha
      lw $ra, 8($sp) # Recupera o valor de $ra da pilha
      addi $sp, $sp, 12 # Devolve o espaco da pilha
      break_line

      # Imprime valor devedor 
      sub $t3, $t3, $t4 # Calcula o valor devedor
      print_string_label(string_mesa_parcial_saldo_devedor)
      addi $sp, $sp, -4 # Guarda espaco na pilha para salvar o $ra
      sw $ra, 0($sp) # Salva o valor de $ra na pilha
      move $a0, $t3 # Salva o valor devedor em $a0
      jal print_reais
      lw $ra, 0($sp) # Recupera o valor de $ra da pilha
      addi $sp, $sp, 4 # Devolve o espaco da pilha
      break_line

      jr $ra

    mesa_parcial_erro_codigo_mesa_invalido:
      print_string_label(string_mesa_codigo_invalido)
      break_line
      jr $ra

    mesa_parcial_erro_mesa_nao_ocupada:
      print_string_label(string_mesa_nao_ocupada)
      break_line
      jr $ra

  # Funcao mesa_pagar que recebe o codigo da mesa e o valor pago e atualiza o valor total da conta e o valor pago da mesa
  # Argumentos:
  # $a0: codigo da mesa
  # $a1: valor pago
  mesa_pagar:
    # Verificar se o codigo da mesa e valido
    addi $sp, $sp, -4 # Guarda espaco na pilha para salvar o $ra
    sw $ra, 0($sp) # Salva o valor de $ra na pilha
    jal verifica_codigo_mesa_invalido
    lw $ra, 0($sp) # Recupera o valor de $ra da pilha
    addi $sp, $sp, 4 # Devolve o espaco da pilha

    beq $v0, $0, mesa_pagar_erro_codigo_mesa_invalido # Se o codigo da mesa for invalido imprime a mensagem de erro e sai da funcao
    move $t0, $v1 # Carrega o codigo da mesa em $t0

    # Verificar se a mesa esta ocupada
    addi $sp, $sp, -8 # Guarda espaco na pilha para salvar o $ra e $t0
    sw $t0, 0($sp) # Salva o valor de $t0 na pilha
    sw $ra, 4($sp) # Salva o valor de $ra na pilha
    move $a0, $t0 # Salva o codigo da mesa em $a0
    jal retorna_endereco_base_mesa
    lw $t0, 0($sp) # Recupera o valor de $t0 da pilha
    lw $ra, 4($sp) # Recupera o valor de $ra da pilha
    addi $sp, $sp, 8 # Devolve o espaco da pilha
    
    move $t1, $v0 # Carrega o endereco base da mesa em $t1

    lb $t2, 1($t1) # Carrega o status da mesa em $t2
    beq $t2, $0, mesa_pagar_erro_mesa_nao_ocupada # Se a mesa nao estiver ocupada imprime a mensagem de erro e sai da funcao

    # Verificar se o valor pago e maior que o valor total da conta
    # Atualizar o valor pago da mesa
    addi $sp, $sp, -16 # Guarda espaco na pilha para salvar o $ra, $t0, $t1 e $t2
    sw $t0, 0($sp) # Salva o valor de $t0 na pilha
    sw $t1, 4($sp) # Salva o valor de $t1 na pilha
    sw $t2, 8($sp) # Salva o valor de $t2 na pilha
    sw $ra, 12($sp) # Salva o valor de $ra na pilha
    move $a0, $a1 # Salva o valor pago em $a0
    jal string_to_int # Converte o valor pago para inteiro
    lw $t0, 0($sp) # Recupera o valor de $t0 da pilha
    lw $t1, 4($sp) # Recupera o valor de $t1 da pilha
    lw $t2, 8($sp) # Recupera o valor de $t2 da pilha
    lw $ra, 12($sp) # Recupera o valor de $ra da pilha
    addi $sp, $sp, 16 # Devolve o espaco da pilha

    move $t3, $v0 # Carrega o valor pago em $t3

    lw $t4, 48($t1) # Carrega o valor pago atual da mesa em $t4

    add $t4, $t4, $t3 # Soma o valor pago atual com o valor pago

    sw $t4, 48($t1) # Salva o valor pago atualizado na mesa

    print_string_label(string_pagamento_realizado_sucesso) 
    break_line
    jr $ra

    mesa_pagar_erro_codigo_mesa_invalido:
      print_string_label(string_mesa_codigo_invalido)
      break_line
      jr $ra

    mesa_pagar_erro_mesa_nao_ocupada:
      print_string_label(string_mesa_nao_ocupada)
      break_line
      jr $ra 

  # Funcao mesa_fechar, fecha a mesa, a mesa so pode ser fechada se o saldo devedor seja igual a zero
  # Argumentos:
  # $a0: codigo da mesa
  mesa_fechar:
    # Verificar se o codigo da mesa e valido
    addi $sp, $sp, -4 # Guarda espaco na pilha para salvar o $ra
    sw $ra, 0($sp) # Salva o valor de $ra na pilha
    jal verifica_codigo_mesa_invalido
    lw $ra, 0($sp) # Recupera o valor de $ra da pilha
    addi $sp, $sp, 4 # Devolve o espaco da pilha

    beq $v0, $0, mesa_fechar_erro_codigo_mesa_invalido # Se o codigo da mesa for invalido imprime a mensagem de erro e sai da funcao
    move $t0, $v1 # Carrega o codigo da mesa em $t0

    # Verificar se a mesa esta ocupada
    addi $sp, $sp, -4 # Guarda espaco na pilha para salvar o $ra
    sw $ra, 0($sp) # Salva o valor de $ra na pilha
    move $a0, $t0 # Salva o codigo da mesa em $a0
    jal retorna_endereco_base_mesa
    lw $ra, 0($sp) # Recupera o valor de $ra da pilha
    addi $sp, $sp, 4 # Devolve o espaco da pilha
    move $t0, $v0 # Carrega o endereco base da mesa em $t0

    lb $t1, 1($t0) # Carrega o status da mesa em $t1
    beq $t1, $0, mesa_fechar_erro_mesa_nao_ocupada # Se a mesa nao estiver ocupada imprime a mensagem de erro e sai da funcao

    # Verificar se o valor pago e maior ou igual ao valor total da conta
    lw $t2, 44($t0) # Carrega o valor total da conta em $t2
    lw $t3, 48($t0) # Carrega o valor pago da conta em $t3
    sub $t4, $t2, $t3 # Calcula o valor total da conta menos o valor pago

    slt $t5, $0, $t4 # Seta 1 se o resultado de total - pago for maior que zero
    bne $t5, $0, mesa_fechar_erro_valor_pago_menor_que_valor_total # Se o valor pago for menor que o valor total imprime a mensagem de erro e sai da funcao

    # Preenche a mesa com zeros
    addi $t1, $t0, 92 # Carrega o endereco final da mesa em $t1
    mesa_fechar_preenche_0_loop:
      beq $t0, $t1, mesa_fechar_preenche_0_loop_fim # Se o endereco atual for igual ao endereco final sai do loop
      sb $0, 0($t0) # Preenche o endereco atual com zero
      addi $t0, $t0, 1 # Incrementa o endereco atual
      j mesa_fechar_preenche_0_loop # Volta para o inicio do loop
    mesa_fechar_preenche_0_loop_fim:
      # Imprime a mensagem de sucesso
      print_string_label(string_mesa_fechar_sucesso)
    mesa_fechar_erro_codigo_mesa_invalido:
      print_string_label(string_mesa_codigo_invalido)
      break_line
      jr $ra

    mesa_fechar_erro_mesa_nao_ocupada:
      print_string_label(string_mesa_nao_ocupada)
      break_line
      jr $ra

    mesa_fechar_erro_valor_pago_menor_que_valor_total:
      print_string_label(string_valor_pago_menor_que_valor_total)
      addi $sp, $sp, -4 # Guarda espaco na pilha para salvar o $ra
      sw $ra, 0($sp) # Salva o valor de $ra na pilha
      move $a0, $t4 # Carrega o valor total da conta menos o valor pago em $a0
      jal print_reais
      lw $ra, 0($sp) # Recupera o valor de $ra da pilha
      addi $sp, $sp, 4 # Devolve o espaco da pilha
      break_line
      jr $ra
    

  # Funcao salvar que salva um arquivo com os dados do sistema
  salvar:
    # Abre o arquivo para escrita
    li $v0, 13 # Carrega o codigo da funcao open em $v0
    la $a0, string_nome_do_arquivo # Carrega o endereco da string com o nome do arquivo em $a0
    li $a1, 1 # Carrega o modo de escrita do arquivo em $a1
    li $a2, 0 # Carrega as permissoes do arquivo em $a2
    syscall
    move $t0, $v0 # Salva o descritor do arquivo em $t0

    # Escreve os dados do sistema no arquivo
    li $v0, 15 # Carrega o codigo da funcao write em $v0
    move $a0, $t0 # Carrega o descritor do arquivo em $a0
    la $a1, cardapio # Carrega o endereco do cardapio em $a1
    li $a2, 2420 # Carrega o tamanho do cardapio em $a2
    syscall # Salva o arquivo

    # Fecha o arquivo
    li $v0, 16 # Carrega o codigo da funcao close em $v0
    move $a0, $t0 # Carrega o descritor do arquivo em $a0
    syscall # Fecha o arquivo

    print_string_label(string_salvar_sucesso)
    break_line

    jr $ra # Retorna para a funcao que chamou

  # Funcao recarregar que carrega os dados do sistema de um arquivo
  recarregar:
    # Abre o arquivo para leitura
    li $v0, 13 # Carrega o codigo da funcao open em $v0
    la $a0, string_nome_do_arquivo # Carrega o endereco da string com o nome do arquivo em $a0
    li $a1, 0 # Carrega o modo de leitura do arquivo em $a1
    syscall
    move $t0, $v0 # Salva o descritor do arquivo em $t0

    # Caso o arquivo nao exista, sai da funcao
    li $t1, 0xFFFFFFFF # Carrega o valor -1 em $t1
    beq $t0, $t1, recarregar_erro_arquivo_nao_encontrado # Se o descritor do arquivo for igual a -1 sai da funcao

    # Le os dados do arquivo
    li $v0, 14 # Carrega o codigo da funcao read em $v0
    move $a0, $t0 # Carrega o descritor do arquivo em $a0
    la $a1, cardapio # Carrega o endereco do cardapio em $a1
    li $a2, 2420 # Carrega o tamanho do cardapio em $a2
    syscall # Le o arquivo

    # Fecha o arquivo
    li $v0, 16 # Carrega o codigo da funcao close em $v0
    move $a0, $t0 # Carrega o descritor do arquivo em $a0
    syscall # Fecha o arquivo

    print_string_label(string_recarregar_sucesso)
    break_line

    jr $ra # Retorna para a funcao que chamou

    recarregar_erro_arquivo_nao_encontrado:
      jr $ra

  # Funcao formatar, formata o limpando todos os dados do sistema
  formatar:
    move $t1, $s0 # Carrega o endereco do cardapio em $t1
    addi $t2, $s0, 2420 # Carrega o endereco do final do cardapio em $t2

    formatar_loop:
      beq $t1, $t2, formatar_fim # Se o endereco atual for igual ao final do cardapio, termina a execucao

      sb $0, 0($t1) # Preenche o byte atual com 0

      addi $t1, $t1, 1 # Carrega o endereco do proximo byte

      j formatar_loop  # Reinicia o loop

    formatar_fim:
      print_string_label(string_formatar_sucesso)
      break_line
      jr $ra # Retorna para a funcao que chamou

  # Funcao que recebe uma string com um inteiro escrito e retorna o valor como inteiro
  # $a0: endereco de memoria da string
  # Retorna:
  # $v0: o numero inteiro
  string_to_int:
    addi $v0, $0, 0 # Iniciar o acumulador em 0
    addi $t1, $0, 10 # Carregando 10 ('\n') para comparar com o caractere 
    
    string_to_int_loop:
      lb $t0, 0($a0) # Carregando o caractere atual da string
      beq $t0, $0, string_to_int_loop_end # Se o caractere for '\0' sai do loop
      beq $t0, $t1, string_to_int_loop_end # Se o caractere for '\n' sai do loop

      mul $t2, $v0, $t1 # Multiplicando o acumulador por 10 (aproveitando que o valor de $t1 ja eh 10)
      subi $t3, $t0, 48 # Convertendo o caractere para inteiro
      add $v0, $t2, $t3 # Atualizando o valor do acumulador
      
      addi $a0, $a0, 1 # Incrementando o endereco da string
      j string_to_int_loop

    string_to_int_loop_end:
      jr $ra
  
  # Funcao strcpy, copia uma string para um endereco de memoria
  # Argumentos:
  # $a0: endereco de memoria da string de destino
  # $a1: endereco de memoria da string de origem
  # Retorna:
  # $v0: endereco de memoria da string de destino
  strcpy:
    move $t0, $a0                   # Move o endereo da string de destino para $t0
    # Loop para copiar os caracteres da string de origem para a string de destino
    loop:
        lb $t2, 0($a1)                # Carrega um byte da string de origem em $t2
        sb $t2, 0($t0)                # Armazena o byte na string de destino
        beq $t2, $zero, copia         # Verifica se chegou ao final da string de origem
        addi $t0, $t0, 1              # Avanca para o proximo byte na string de destino
        addi $a1, $a1, 1              # Avanca para o proximo byte na string de origem
        j loop                        # Repete o loop

    copia:
        move $v0, $t0     	# Move o endereco da string de destino para $v0
        jr $ra            	# Retorna para a chamada da funcao

  # Funcao retorna_endereco_base_mesa recebe o codigo da mesa e retorna o endereco base da mesa
  # Argumentos:
  # $a0: codigo da mesa
  retorna_endereco_base_mesa:
    li $t0, 92 # Carrega o tamanho de uma mesa
    subi $t1, $a0, 1 # Subtrai 1 do codigo para obter o indice da mesa
    mul $t1, $t1, $t0 # Multiplica o indice da mesa pelo tamanho de uma mesa
    add $t1, $t1, $s1 # Soma o endereco das mesas com o indice da mesa
    move $v0, $t1 # Retorna o endereco da mesa
    jr $ra # Retorna para a funcao que chamou

  # Funcao retorna_endereco_base_item recebe o codigo do item e retorna o endereco base do item
  # Argumentos:
  # $a0: codigo do item
  retorna_endereco_base_item:
    li $t0, 52 # Carrega o tamanho de um item do cardapio
    subi $t1, $a0, 1 # Subtrai 1 do codigo para obter o indice do item no cardapio
    mul $t1, $t1, $t0 # Multiplica o indice do item pelo tamanho de um item do cardapio
    add $t1, $t1, $s0 # Soma o endereco do cardapio com o indice do item
    move $v0, $t1 # Retorna o endereco do item
    jr $ra # Retorna para a funcao que chamou

  # Funcao verifica_codigo_cardapio_invalido verifica se o codigo do item do cardapio eh valido
  # Argumentos:
  # $a0: endereco de memoria da string com o codigo do item
  # Retorna:
  # $v0: 1 se o codigo for valido, 0 se nao for
  # $v1: codigo do item
  verifica_codigo_cardapio_invalido:
    addi $sp, $sp, -4 # Alocando espaco na pilha para salvar o endereco de retorno
    sw $ra, 0($sp) # Salvando o endereco de retorno na pilha
    jal string_to_int # Convertendo a string para inteiro
    lw $ra, 0($sp) # Carregando o endereco de retorno da pilha
    addi $sp, $sp, 4 # Desalocando espaco da pilha

    move $v1, $v0 # Carregando o valor convertido para $a0
    li $v0, 1 # Inicializando o retorno com 0

    slti $t1, $v1, 1 # Verifica se o codigo eh menor que 1
    bne $t1, $0, verifica_codigo_cardapio_invalido_erro # Se for, imprime a mensagem de erro e sai da funcao

    slti $t1, $v1, 21 # Verifica se o codigo eh menor que 21
    beq $t1, $0, verifica_codigo_cardapio_invalido_erro # Se for maior ou igual a 21, imprime a mensagem de erro e sai da funcao

    j verifica_codigo_cardapio_invalido_end

    verifica_codigo_cardapio_invalido_erro:
      li $v0, 0 # Atualiza o retorno para 0

    verifica_codigo_cardapio_invalido_end:
      jr $ra # Retorna para a funcao que chamou

  # Funcao verifica_codigo_mesa_invalido verifica se o codigo da mesa eh valido
  # Argumentos:
  # $a0: endereco de memoria da string com o codigo da mesa
  # Retorna:
  # $v0: 1 se o codigo for valido, 0 se nao for
  # $v1: codigo da mesa
  verifica_codigo_mesa_invalido:
    addi $sp, $sp, -4 # Alocando espaco na pilha para salvar o endereco de retorno
    sw $ra, 0($sp) # Salvando o endereco de retorno na pilha
    jal string_to_int # Convertendo a string para inteiro
    lw $ra, 0($sp) # Carregando o endereco de retorno da pilha
    addi $sp, $sp, 4 # Desalocando espaco da pilha

    move $v1, $v0 # Carregando o valor convertido para $a0
    li $v0, 1 # Inicializando o retorno com 0

    slti $t1, $v1, 1 # Verifica se o codigo eh menor que 1
    bne $t1, $0, verifica_codigo_mesa_invalido_erro # Se for, imprime a mensagem de erro e sai da funcao

    slti $t1, $v1, 16 # Verifica se o codigo eh menor que 16
    beq $t1, $0, verifica_codigo_mesa_invalido_erro # Se for maior ou igual a 16, imprime a mensagem de erro e sai da funcao

    j verifica_codigo_mesa_invalido_end

    verifica_codigo_mesa_invalido_erro:
      li $v0, 0 # Atualiza o retorno para 0

    verifica_codigo_mesa_invalido_end:
      jr $ra # Retorna para a funcao que chamou

  # Funcao print_reais, que recebe um numero inteiro e imprime no formato R$ 0,00
  # Argumentos:
  # $a0: numero inteiro
  print_reais:
    addi $sp, $sp, -4 # Alocando espaco na pilha para salvar o endereco de retorno
    sw $ra, 0($sp) # Salvando o endereco de retorno na pilha
    jal int_to_string
    lw $ra, 0($sp) # Carregando o endereco de retorno da pilha
    addi $sp, $sp, 4 # Desalocando espaco da pilha

    move $t0, $v0 # Carregando o endereco da string para $a0
    move $t1, $v1 # Carregando o tamanho da string para $a1

    print_string_label(string_reais)  # Imprime "R$ "

    slti $t2, $t1, 3 # Verifica se o tamanho da string eh menor que 3
    beq $t2, $0, print_reais_tamanho_maior_igual_3 # Se for maior ou igual a 3, imprime a string e sai da funcao
    
    li $t2, 2 # Carrega o numero 2 para comparar com o tamanho da string
    beq $t1, $t2, print_reais_tamanho_igual_2 # Se o tamanho for igual a 2, imprime "R$ 0," depois imprime a string e sai da funcao

    li $t2, 1 # Carrega o numero 2 para comparar com o tamanho da string
    beq $t1, $t2, print_reais_tamanho_igual_2 # Se o tamanho for igual a 1, imprime "R$ 0,0" depois imprime a string e sai da funcao


    print_reais_tamanho_maior_igual_3:
      # Se o tamanho for >= 3: imprime o numero ate o caractere tamanho-2, depois imprime "," depois imprime os dois ultimos caracteres
      li $v0, 11 # Carrega o codigo da syscall para imprimir um caractere
      subi $t3, $t1, 2 # Carrega o tamanho da string - 2
      add $t3, $t0, $t3 # Carrega o endereco do ultimo caractere

      print_reais_tamanho_maior_igual_3_loop:
        beq $t0, $t3, print_reais_tamanho_maior_igual_3_loop_end # Se chegou no ultimo caractere para imprimir, sai do loop
        lb $a0, 0($t0) # Carrega o caractere para imprimir
        syscall
        addi $t0, $t0, 1 # Incrementa o endereco do caractere
        j print_reais_tamanho_maior_igual_3_loop
      print_reais_tamanho_maior_igual_3_loop_end:
        print_string_label(string_virgula) # Imprime ","
        li $v0, 11 # Carrega o codigo da syscall para imprimir um caractere
        lb $a0, 0($t3) # Carrega o penultimo caractere para imprimir
        syscall
        lb $a0, 1($t3) # Carrega o ultimo caractere para imprimir
        syscall
        jr $ra # Retorna para a funcao que chamou
    print_reais_tamanho_igual_2:
      # Se o tamanho for 2:depois imprime "0," depois imprime os dois ultimos caracteres
      print_int($0)
      print_string_label(string_virgula) # Imprime ","
      print_string_address($t0) # Imprime o resto da strin
      jr $ra
    print_reais_tamanho_igual_1:
      # Se o tamanho for 1: imprime "R$ " depois imprime "0,0" depois imprime o ultimo caractere
      print_int($0)
      print_string_label(string_virgula) # Imprime ","
      print_int($0)
      print_string_address($t0) # Imprime o resto da strin
      jr $ra

  # Funcao int_to_string, que recebe um numero inteiro e transforma em uma string
  # Argumentos:
  # $a0: numero inteiro
  # Retorna:
  # $v0: endereco de memoria da string
  # $v1: tamanho da string
  int_to_string:
    li $t0, 5 # Carrega o tamanho maximo da string
    li $t1, 10000 # Carrega o divisor
    li $t2, 2 # Carrega o tamanho minimo da string
    move $t3, $a0 # Carrega o numero para $t3
    int_to_string_size_loop:
      beq $t0, $t2, int_to_string_size_loop_end # Se o tamanho da string for igual a 2, sai do loop
      div $a0, $t1 # Divide o numero pelo divisor
      mflo $t4 # Carrega o quociente para $t4
      mfhi $t3 # Carrega o resto para $t3

      bne $t4, $0, int_to_string_size_loop_end # Se o quociente for diferente de 0, sai do loop

      subi $t0, $t0, 1 # Decrementa o tamanho da string
      div $t1, $t1, 10 # Divide o divisor por 10

      j int_to_string_size_loop # Volta para o inicio do loop
    int_to_string_size_loop_end:
      move $v1, $t0 # Carrega o tamanho da string para $v1
      la $t3, buffer_int_to_string # Carrega o endereco do buffer para $t3
      move $t4, $a0 # Carrega o numero para $t4
      int_to_string_loop:
        beq $t1, $0, int_to_string_loop_end # Se o divisor for igual a 0, sai do loop
        div $t4, $t1 # Divide o numero pelo divisor
        mflo $t5 # Carrega o quociente para $t5
        mfhi $t4 # Carrega o resto para $t4
        addi $t5, $t5, 48 # Converte o quociente para o caractere correspondente
        sb $t5, 0($t3) # Salva o caractere no buffer
        addi $t3, $t3, 1 # Incrementa o endereco do buffer
        div $t1, $t1, 10 # Divide o divisor por 10
        j int_to_string_loop # Volta para o inicio do loop
      int_to_string_loop_end:
        sb $0, 0($t3) # Salva o caractere nulo no buffer
        la $v0, buffer_int_to_string # Carrega o endereco do buffer para $v0
        jr $ra # Retorna para a funcao que chamou

  # Funcao que recebe dois enderecos de strings e retorna um inteiro
  # Argumentos:
  # $a0: endereco da primeira string
  # $a1: endereco da segunda string
  # Retorna:
  # $v0: resultado
  # Resultado:
  # inteiro negativo: se o primeiro caractere diferente tem um valor decimal menor em $a0 do que em $a1  
  # 0: se as strings sao iguais
  # inteiro positivo: se o primeiro caractere diferente tem um valor decimal maior em $a0 do que em $a1
 strcmp:
    # Initialize return register $v0
    li $v0, 0

    # Loop for comparing characters
    strcmp_loop:
        # Load characters from the strings
        lb $t0, 0($a0)
        lb $t1, 0($a1)

        # Compare characters
        beq $t0, $t1, check_null    # If characters are equal, go to check_null
        j end_less_greater          # If characters are different, jump to end_less_greater

    check_null:
        # If characters are equal and the first character is NULL, exit the loop
        beqz $t0, strcmp_end

        # Move to the next character in the strings
        addi $a0, $a0, 1
        addi $a1, $a1, 1
        j strcmp_loop                      # Repeat the loop

    end_less_greater:
        # If characters are different, set $v0 accordingly
        blt $t0, $t1, less_than    # If $t0 < $t1, set $v0 to -1
        bgt $t0, $t1, greater_than # If $t0 > $t1, set $v0 to 1
        j end_equal                # If characters are equal, jump to end_equal

    less_than:
        # If $t0 < $t1, set $v0 to -1 and exit the loop
        li $v0, -1
        j strcmp_end

    greater_than:
        # If $t0 > $t1, set $v0 to 1 and exit the loop
        li $v0, 1
        j strcmp_end

    end_equal:
        # If characters are equal, continue to the next characters
        addi $a0, $a0, 1
        addi $a1, $a1, 1
        j strcmp_loop

    strcmp_end:
        jr $ra                    # Return to the calling function 

  # Funcao que recebe um endereco de string e retorna o tamanho da string
  # Argumentos:
  # $a0: endereco da string
  # Retorna:
  # $v0: tamanho da string
  strlen:
    move $v0, $a0 # Carrega o endereco inicial da string para $v0
    strlen_loop:
      lb $t0, 0($a0) # Carregar o byte da string
      beq $t0, $0, strlen_loop_end # Se o caractere em $t0 for 0, terminar a funcao
      addi $a0, $a0, 1 # Incrementar o endereco da string
      j strlen_loop # Voltar para o inicio do loop
    strlen_loop_end:
      sub $v0, $a0, $v0 # Subtrair os enderecos para saber o tamanho
      jr $ra

  exit:
    print_string_label(string_exit) # Imprime "exit"
    li $v0, 10 # Escolher a funcao do syscall (exit)
    syscall # Encerrar o programa
