# Como rodar os testes

1. Inicialize o GeocodingApi em Express na porta 3000
2. Inicialize o Pauliceia-vgiws em Python na porta 8888
3. Siga as instruções do projeto Pauliceia em Vuejs e adicione as portas dos serviços anteriores e inicialize o projeto
4. Instale o navegador Chrome
5. No arquivo features/step_definitions/search_file_steps.rb, linha 8, configure o caminho para o arquivo csv de acordo com sua máquina
6. Utilize o comando cucumber para rodar todos os testes de aceitação.

Obs: É imprescindível executar todo o código localmente, visto que algumas etapas utilizam um usuário e senha que são gerados por padrão ao criar o banco de dados do VGIWS. Além disso, algumas etapas criam um usuário de teste.

# Exemplo

https://github.com/IgorAugst/testes_pauliceia/assets/61761206/8d8dbf97-806d-4918-8163-ae7eaa771576

[Gravação dos testes](https://github.com/IgorAugst/testes_pauliceia/blob/main/media/gravacao_completa.mp4)
