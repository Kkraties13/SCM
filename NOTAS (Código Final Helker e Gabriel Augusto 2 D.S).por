programa {
  
  inclua biblioteca Util
  inclua biblioteca Texto
  logico flagNotasColetadas = falso
  logico flagMediasCalculadas = falso
  logico flagFimPrograma = falso
  inteiro x = 0, qtdeAlunos = 0
  cadeia enter

  funcao inicio() {
    
    inteiro func
    imprimeQtdeAlunos()
    real nota1[qtdeAlunos], nota2[qtdeAlunos], nota3[qtdeAlunos], medias[qtdeAlunos]
    cadeia nomeAlunos[qtdeAlunos]
    enquanto (flagFimPrograma == falso)
    {
      //menu
      escreva("Bem vindo!\n Digite 1 para acessar a opção de cadastrar as notas\n Digite 2 para acessar a função de listar as notas\n Digite 3 para acessar a função de calcular as médias\n Digite 4 para acessar a função de editar as notas do aluno\n Digite 5 para encerrar o programa\nDigite a opção que deseja selecionar: ")
      leia (func)

      se (func == 1)
      {
      
        cadastrarNota(nomeAlunos,nota1,nota2,nota3)
      }
      senao se (func == 2)
      {
        
        listarNota(nomeAlunos,nota1,nota2,nota3)
      }
      senao se (func == 3)
      {
        calcularMedia(nomeAlunos,nota1,nota2,nota3)
      }
      senao se (func == 4)
      {
        editarNota(nomeAlunos,nota1,nota2,nota3)
      }
      senao se (func == 5)
      {
        flagFimPrograma = verdadeiro
      }
      senao se (func > 5)
      {

        limpa ()

        escreva ("Insira um número válido. Pressione ENTER para continuar\n")
        leia (enter)

        limpa ()

      }
    }

    limpa ()
    escreva ("Muito obrigado por utilizar o nosso sitema\nSISTEMA FINALIZADO!!!")

    
  }


  
  

  funcao cadastrarNota(cadeia nomeAlunos[], real nota1[],real nota2[],real nota3[]) {

    limpa ()
    
    se (flagNotasColetadas == verdadeiro)
    {
      escreva ("As notas já foram coletadas! Pressione ENTER para Continuar")
      leia (enter)

      limpa()
    } 
    senao
    {
      para (inteiro i = 0 ; i < qtdeAlunos; i++)
      {
        escreva ("Digite o nome do ",i + 1, "° aluno: \n")
        leia (nomeAlunos[i])

        escreva ("Digite a primeira nota do ",nomeAlunos[i],": ")
        leia (nota1[i])

        escreva ("Digite a segunda nota do ",nomeAlunos[i],": ")
        leia (nota2[i])
        
        escreva ("Digite a terceira nota do ",nomeAlunos[i],": ")
        leia (nota3[i])
      }
      
      flagNotasColetadas = verdadeiro
      
      limpa()
    }
  }

  funcao listarNota(cadeia nomeAlunos[], real nota1[],real nota2[],real nota3[]) {

    limpa ()

    se (flagNotasColetadas == falso)
    {
      escreva ("Cadastre ao menos um aluno para ser listado! Pressione ENTER para continuar\n")
      leia (enter)

      limpa ()

    } 
    senao se (flagMediasCalculadas == verdadeiro)
    {

      para (inteiro x = 0; x < qtdeAlunos; x++)
      {
      escreva ("Nome: ", nomeAlunos[x]," | Nota 1: ", nota1[x], " | Nota 2: ", nota2[x], " | Nota 3: ", nota3[x], " | Média: ", (nota1[x] + nota2[x] + nota3[x])/3)
      }

      escreva ("\n Já viu as notas? Pressione ENTER para contiunar")
      leia (enter)

    }
    senao
    {
      para (inteiro j = 0; j < qtdeAlunos; j++)
      {
      escreva ("Nome: ", nomeAlunos[j]," |  Nota 1: ", nota1[j], " | Nota 2: ", nota2[j], " | Nota 3: ", nota3[j], "\n" )
      }

      escreva ("Já viu as notas? Pressione ENTER para contiunar")
      leia (enter)
    }
    
    limpa ()

  }

  funcao calcularMedia(cadeia nomeAlunos[], real nota1[],real nota2[],real nota3[]) {

    limpa ()

    se (flagNotasColetadas == verdadeiro)
    {
      
      para (inteiro k = 0; k < qtdeAlunos; k++)
      {
      escreva ("Nome: ", nomeAlunos[k]," | Nota 1: ", nota1[k], " | Nota 2: ", nota2[k], " | Nota 3: ", nota3[k], " | Média: ", (nota1[k] + nota2[k] + nota3[k])/3)
      }

      // para (inteiro k = 0; k > x; k++)
      // {
      //   escreva ("Nome: ", nomeAlunos[k], " Média: ", (nota1[k] + nota2[k] + nota3[k])/3 )
      // }  

      flagMediasCalculadas = verdadeiro

      escreva ("\nJá viu as médias? Pressione ENTER para contiunar")
      leia (enter)

      // escreva ("Cadastre ao menos um aluno para ser listado! Pressione ENTER para contiuar\n")
      // leia (enter)
      
      limpa ()
      
    }
    senao
    {

      escreva ("Cadastre ao menos um aluno para ser listado! Pressione ENTER para contiuar\n")
      leia (enter)
      
      limpa ()
    }


  }

  // funcao editarNota(cadeia nomeAlunos[], real nota1[],real nota2[],real nota3[]) {

  //   se (flagNotasColetadas == falso)
  //   {
  //     escreva ("Cadastre ao menos um aluno para ser editado! Pressione ENTER para continuar\n")
  //     leia (enter)

  //     limpa ()

  //   }
  //   senao
  //   {
  //     para (inteiro t = 0; t < qtdeAlunos; t++)
  //     {
  //     escreva ("Nome: ", nomeAlunos[t]," | Código do Aluno: ", t, "\n" )
  //     }

  //     limpa ()
  //     cadeia editarAluno

  //     escreva ("Digite o código do aluno que a nota será editada: ")
  //     leia (editarAluno)

  //       escreva ("Digite a primeira nota do aluno: ")
  //       leia (nota1[editarAluno])
        
  //       escreva ("Digite a segunda nota do aluno: ")
  //       leia (nota2[editarAluno])
          
  //       escreva ("Digite a terceira nota do aluno: ")
  //       leia (nota3[editarAluno])
      

      
  //   }

  // }

  funcao editarNota(cadeia nomeAlunos[], real nota1[],real nota2[],real nota3[]) {

    limpa ()

    se (flagNotasColetadas == falso)
    {
      escreva ("Cadastre ao menos um aluno para ser listado! Pressione ENTER para continuar\n")
      leia (enter)

      limpa ()

    } 
    senao
    {

      inteiro codigoAluno, opcaoEditar = 0
      cadeia maisUmaNota = ""

      limpa ()

      para (inteiro z = 0; z < qtdeAlunos; z++)
      {
        escreva("O código do aluno ", nomeAlunos[z]," é: ", z)
      }

      escreva ("\nEscreva o código do aluno aqui: ")
      leia (codigoAluno)

      limpa ()

      enquanto (opcaoEditar != 4)
      {
        escreva ("Opções de Edição: \n 1 - Editar a 1° nota do aluno\n 2 - Editar a 2° nota do aluno\n 3 - Editar a 3° nota do aluno\n 4 - Editar todas as notas do aluno\nDigite aqui a opção: ")
        leia (opcaoEditar)

        se (opcaoEditar == 1)
        {
          escreva ("Digite o novo valor para a primeira nota de ", nomeAlunos[codigoAluno], ": ")
          leia (nota1[codigoAluno])

          limpa ()

          escreva ("Deseja Editar mais uma nota?\n Digite S para voltar ao menu ou pressione ENTER para editar mais uma nota desse aluno: ")
          leia (maisUmaNota)

          se (Texto.caixa_alta(maisUmaNota) == "S")
          {
            opcaoEditar = 4
          }
        }
        senao se (opcaoEditar == 2)
        {
          escreva ("Digite o novo valor para a segunda nota de ", nomeAlunos[codigoAluno], ": ")
          leia (nota2[codigoAluno])

          limpa ()

          escreva ("Deseja Editar mais uma nota?\n Digite S para voltar ao menu ou pressione ENTER para editar mais uma nota desse aluno: ")
          leia (maisUmaNota)

          se (Texto.caixa_alta(maisUmaNota) == "S")
          {
            opcaoEditar = 4
          }
        }
        senao se (opcaoEditar == 3)
        {
          escreva ("Digite o novo valor para a terceira nota de ", nomeAlunos[codigoAluno], ": ")
          leia (nota3[codigoAluno])

          limpa ()

          escreva ("Deseja Editar mais uma nota?\n Digite S para voltar ao menu ou pressione ENTER para editar mais uma nota desse aluno: ")
          leia (maisUmaNota)

          se (Texto.caixa_alta(maisUmaNota) == "S")
          {
            opcaoEditar = 4
          }
          
        }
        senao se (opcaoEditar == 4)
        {
          escreva ("Digite o novo valor para a primeira nota de ", nomeAlunos[codigoAluno], ": ")
          leia (nota1[codigoAluno])

          escreva ("Digite o novo valor para a segunda nota de ", nomeAlunos[codigoAluno], ": ")
          leia (nota2[codigoAluno])
          
          escreva ("Digite o novo valor para a terceira nota de ", nomeAlunos[codigoAluno], ": ")
          leia (nota3[codigoAluno])
        }

        limpa()

      }
    }

    limpa ()

  }



  funcao imprimeQtdeAlunos(){
    se (qtdeAlunos == 0)
    {
      limpa()
      escreva("Seja bem vindo \n")
      escreva("Por favor, informe a quantidade de alunos:\n")
      leia(qtdeAlunos)
      limpa()
    }
  }

  funcao fim() {

    limpa ()

    escreva ("Fim!!!\nPrograma encerrado")

  }
}
