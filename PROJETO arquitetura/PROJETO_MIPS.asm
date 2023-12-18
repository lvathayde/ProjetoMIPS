.data
  # Strings de comando
  string_comando_conta_cadastrar: .asciiz "conta_cadastrar"
  string_comando_conta_format: .asciiz "conta_format"
  string_comando_debito_extrato: .asciiz "debito_extrato"
  string_comando_credito_extrato: .asciiz "credito_extrato"
  string_comando_transferir_debito: .asciiz "transferir_debito"
  string_comando_transferir_credito: .asciiz "transferir_credito"
  string_comando_pagar_fatura: .asciiz "pagar_fatura"
  string_comando_sacar: .asciiz "sacar"
  string_comando_depositar: .asciiz "depositar"
  string_comando_alterar_limite: .asciiz "alterar_limite"
  string_comando_conta_fechar: .asciiz "conta_fechar"
  string_comando_data_hora: .asciiz "data_hora" 
  string_comando_salvar: .asciiz "salvar"
  string_comando_recarregar: .asciiz "recarregar"
  string_comando_formatar: .asciiz "formatar"
  string_comando_help: .asciiz "help"
  string_comando_sair: .asciiz "sair"



 ################# STRINGS PARA INTERAÇÃO COM O USU�?RIO #################
 
  #erros genéricos 
  string_erro_cliente_n_existe: .asciiz "Falha: cliente inexistente" 		#usado por diversos comandos.
  string_erro_saldo_insuficiente: .asciiz "Falha: saldo insuficente"		#usando pelas transferencias, pgmento de fatura
  string_comando_invalido: .asciiz "Comando invalido" 				#usando quando o usuário entrar algo que não eh um comando válido.
  string_exit: .asciiz "Obigado e volte sempre!"				#bye bye
  string_separador: .asciiz " - "
  string_reais: .asciiz "R$ "
  string_virgula: .asciiz ","
  
  
  #erros do conta_cadastrar
  string_erro_sintaxe_conta_cadastrar: .asciiz "Erro de sintaxe: conta_cadastrar-<CPF>-<numero_da_conta>-<nome_do_cliente>" 	#Acho q talvez a gente não use
  string_erro_cpf_usado_conta_cadastrar: .asciiz "Já existe conta neste CPF"
  string_erro_numero_usado_conta_cadastrar: .asciiz "Número da conta já em uso"

  #mensagens do conta_format
  string_erro_invalida_conta_format: .asciiz "Numero de conta não existe"
  string_confirmacao_format: .asciiz "Tem certeza que quer formatar a conta? "
  
  #erros dos extratos
  string_erro_extrato_debito: .asciiz "Número de conta inválido"
  string_erro_extrato_credito: .asciiz "Número de conta inválido"  
  
  #mensagens das transferencias
  string_sucesso_transferencia: .asciiz "Pagamento realizado com sucesso"			#para os 2 tipos de transferencias
  string_erro_transferencia_limite_insuficiente: .asciiz "Falha: limite insuficente"		#para transferencia no crédito
  
  #erros pagar_fatura
  string_erro_pagar_fatura_conta_invalida: .asciiz "Falha: cliente inexistente"

  #erro sacar
  string_erro_sacar_saldo_insuficiente: .asciiz "Falha: saldo insuficiente"
  
  #erro conta_fechar
  string_erro_conta_fechar_cpf_n_existe: .asciiz "Falha: CPF não possui cadastro"
  string_erro_conta_fechar_saldo_n_0: .asciiz "Falha: saldo devedor ainda não quitado. Saldo da conta corrente R$ " 		#tem que colocar o QUANTO TA DEVENDO
  string_erro_conta_fechar_divida_n_0: .asciiz "Falha: saldo devedor ainda não quitado. Limite de crédito devido: R$ "		#tem que colocar o QUANTO TA DEVENDO
  
  #erro data_hora
  string_erro_data_hora: .asciiz "Falha: data e/ou horas inválidas"
  
  #String help
  string_help_conta: .asciiz "Comandos disponíveis:\n\comando: conta_cadastrar-<option1>-<option2>-<option3>\n\descricao: Realiza o cadastro de um cliente. <option1> deve fornecer o CPF do cliente (XXXXXXXXX); <option2> deve fornecer o número da conta corrente do cliente (XXXXXX); <option3> deve fornecer o nome do cliente.\n\n\comando: conta_format-<option1>\n\descricao: Apaga todos os registros de transações do cliente. <option1> deve fornecer a conta do cliente no formato XXXXXX-X (com dígito verificador).\n\n\comando: debito_extrato-<option1>\n\descricao: Fornece um relatório das transações de débito do cliente, listando cada transação, seus respectivos nomes das contas, valores e datas. <option1> deve fornecer a conta do cliente no formato XXXXXX-X.\n\n\comando: credito_extrato-<option1>\n\descricao: Fornece um relatório das transações de cartão de crédito do cliente, listando cada transação, seus respectivos nomes das contas, valores e datas. <option1> deve fornecer a conta do cliente no formato XXXXXX-X.\n\n\comando: transferir_debito-<option1>-<option2>-<option3>\n\descricao: Realiza uma transferência (crédito em conta corrente) da conta do cliente 1 para a conta do cliente 2, do valor especificado pela <option3> em centavos, na data atual.\n\n\comando: transferir_credito-<option1>-<option2>-<option3>\n\descricao: Realiza uma transferência (crédito em conta corrente) do limite de crédito do cliente 2 para a conta do cliente 1, do valor especificado pela <option3> em centavos, na data atual.\n\n\comando: pagar_fatura-<option1>-<option2>-<option3>\n\descricao: Paga parcial ou totalmente a fatura do cliente especificado na conta <option1>, com o valor especificado pela <option2> em centavos, via saldo de conta corrente ('S') ou pagamento externo ('E').\n\n\comando: sacar-<option1>-<option2>\n\descricao: Decrementa o saldo da conta especificada pela <option1> no formato XXXXXX-X, pelo valor especificado pela <option2> em centavos no formato XXXXXX.\n\n\comando: depositar-<option1>-<option2>\n\descricao: Incrementa o saldo da conta especificada pela <option1> no formato XXXXXX-X, pelo valor especificado pela <option2> em centavos no formato XXXXXX.\n\n\comando: alterar_limite-<option1>-<option2>\n\descricao: Altera o limite do cliente especificado pela conta XXXXXX-X. <option1> fornece o número da conta e <option2> o novo limite em centavos (XXXXXX).\n\n\comando: conta_fechar-<option1>\n\descricao: Encerra a conta. Apenas permitido se o saldo da conta e o saldo devedor de crédito forem nulos. Retorna 'Conta fechada com sucesso' e apaga os registros de transações.\n\n\comando: data_hora-<option1>-<option2>\n\descricao: Configura a data e hora do sistema de acordo com <option1> (DDMMAAAA) e <option2> (HHMMSS).\n\n\comando: salvar\n\descricao: Salva todas as informações registradas em um arquivo externo.\n\n\comando: recarregar\n\descricao: Recarrega as informações salvas no arquivo externo na execução atual do programa. Modificações não salvas serão perdidas e as informações salvas anteriormente recuperadas.\n\n\comando: formatar\n\descricao: Apaga todas as informações da execução atual do programa, incluindo clientes e transações."

  string_nome_do_arquivo: .asciiz "./restaurante.txt"
  string_salvar_sucesso: .asciiz "Dados salvos com sucesso"
  string_recarregar_sucesso: .asciiz "Dados recarregados com sucesso"  
  string_formatar_sucesso: .asciiz "Dados formatados com sucesso"

  string_prompt: .asciiz "FzoLbank-shell>> "
  buffer_input: .space 320 # Buffer para leitura de strings

  buffer_comando: .space 80 # Buffer para armazenar o comando
  buffer_option_1: .space 80 # Buffer para armazenar a primeira opcao
  buffer_option_2: .space 80 # Buffer para armazenar a segunda opcao
  buffer_option_3: .space 80 # Buffer para armazenar a terceira opcao

  buffer_int_to_string: .space 6 # Buffer para conversao de inteiro para string

  .align 2
  contas: .space 2800 # Espaco reservado para guardar as contas

  .align 2
  transacoes: .space 67500 # Espaco reservado para guardar as os registros

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

.macro break_line
  li $v0, 11
  li $a0, 10
  syscall
.end_macro

.text
  main:
    la $s0, contas # Carrega o endereco do cardapio
    la $s1, transacoes # Carrega o endereco das mesas

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
    beq $v1, 1, detectar_comando

    addi $a0, $v0, 1 # Salva o endereco de onde comeca o argumento 1
    addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
    sw $ra, 0($sp) # Salva o endereco de retorno na pilha
    la $a1, buffer_option_1 # Carrega o endereco do buffer de opcao 1
    jal extrai_comando_ou_argumento # Chama a funcao extrai_comando_ou_argumento para extrair o argumento 1
    lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
    addi $sp, $sp, 4 # Incrementa o ponteiro de pilha

    la $t0, buffer_option_1 # Carrega o endereco do buffer de opcao 1
    lb $t0, 0($t0) # Carrega o primeiro byte do buffer de opcao 1
    beq $v1, 1, detectar_comando

    addi $a0, $v0, 1 # Salva o endereco de onde comeca o argumento 2
    addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
    sw $ra, 0($sp) # Salva o endereco de retorno na pilha
    la $a1, buffer_option_2 # Carrega o endereco do buffer de opcao 2
    jal extrai_comando_ou_argumento # Chama a funcao extrai_comando_ou_argumento para extrair o argumento 2
    lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
    addi $sp, $sp, 4 # Incrementa o ponteiro de pilha

    la $t0, buffer_option_2 # Carrega o endereco do buffer de opcao 2
    lb $t0, 0($t0) # Carrega o primeiro byte do buffer de opcao 2
    beq $v1, 1, detectar_comando

    addi $a0, $v0, 1 # Salva o endereco de onde comeca o argumento 3
    addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
    sw $ra, 0($sp) # Salva o endereco de retorno na pilha
    la $a1, buffer_option_3 # Carrega o endereco do buffer de opcao 3
    jal extrai_comando_ou_argumento # Chama a funcao extrai_comando_ou_argumento para extrair o argumento 3
    lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
    addi $sp, $sp, 4 # Incrementa o ponteiro de pilha

    detectar_comando:
      # Compara o comando digitado pelo usuario com os comandos possiveis
      # Comando conta_cadastrar
      addi $sp, $sp, -4 # Decrementa o ponteiro de pilha
      sw $ra, 0($sp) # Salva o endereco de retorno na pilha
      la $a0, buffer_comando # Carrega o endereco do buffer de comando
      la $a1, string_comando_conta_cadastrar # Carrega o endereco da string com o comando conta_cadastrar
      jal strcmp # Chama a funcao strcmp para comparar o comando digitado pelo usuario com o comando conta_cadastrar
      lw $ra, 0($sp) # Carrega o endereco de retorno da pilha
      addi $sp, $sp, 4 # Incrementa o ponteiro de pilha
      beq $v0, $0, chama_conta_cadastrar # Se o comando digitado for igual ao comando cardapio_ad, chama a funcao conta_cadastrar

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
  # $v1: booleano, indicando se a string de entrada detectar_comando (\n ou \0) (1: detectar_comando, 0: nao detectar_comando)
  extrai_comando_ou_argumento:
    move $t0, $a0 # Salva o endereco do buffer de entrada em $t0
    move $t1, $a1 # Salva o endereco do buffer de saida em $t1
    li $v1, 0 # Inicializa o booleano com 0

    extrai_comando_ou_argumento_loop:
      lb $t2, 0($t0) # Carrega o byte do buffer de entrada
      beq $t2, 45, extrai_comando_ou_argumento_loop_fim # Se o byte for igual a '-', vai para o fim do loop
      beq $t2, 10, extrai_comando_ou_argumento_loop_fim_detectar_comando # Se o byte for igual a '\n', vai para o fim do loop
      beq $t2, $0, extrai_comando_ou_argumento_loop_fim_detectar_comando # Se o byte for igual a '\0', vai para o fim do loop
      sb $t2, 0($t1) # Salva o byte no buffer de comando
      addi $t0, $t0, 1 # Incrementa o endereco do buffer de entrada
      addi $t1, $t1, 1 # Incrementa o endereco do buffer de comando
      j extrai_comando_ou_argumento_loop # Volta para o inicio do loop
    extrai_comando_ou_argumento_loop_fim_detectar_comando:
      li $v1, 1 # Seta o booleano para 1
    
    extrai_comando_ou_argumento_loop_fim:
      sb $0, 0($t1) # Salva o byte '\0' no buffer de comando
      move $v0, $t0 # Salva o endereco de onde parou de ler o buffer de entrada em $v0
      jr $ra # Retorna para o endereco de retorno
    
#FUNCAO CRIAR CONTA
#DESCREVER A FUNCAR


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

  # Funcao que recebe dois enderecos de strings e retorna um inteiro  (EDITAR)
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
