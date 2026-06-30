# Relação

Apresenta a relação de forma simples entre as telas do protótipo, os requisitos funcionais, as histórias de usuário (HUs) e os épicos do projeto LeituraQuest.

## Acesso e cadastro

### Tela de login

<img src="images/Login-page.png" alt="Tela de login" width="300">

Permite o acesso do usuário por e-mail e senha, além de oferecer caminhos para cadastro e recuperação de senha.

**Relações:** RF002; HU02 — Login no Sistema; EP001 — Autenticação e Acesso ao Sistema.

### Primeira etapa do cadastro

<img src="images/Register-page-1.png" alt="Primeira etapa do cadastro" width="300">

Apresenta o formulário inicial para criação da conta, com dados pessoais, e-mail e senha.

**Relações:** RF001; HU01 — Cadastro de Usuário; EP001 — Autenticação e Acesso ao Sistema.

### Segunda etapa do cadastro

<img src="images/Register-page-2.png" alt="Segunda etapa do cadastro" width="300">

Permite selecionar os gêneros literários de interesse do usuário. Essas preferências podem servir de base para recomendações personalizadas.

**Relações:** RF017; HU01 — Cadastro de Usuário; HU08 — Recomendação de Livros; EP001 e EP003.

### Solicitação de recuperação de senha

<img src="images/Reset-password-page-1.png" alt="Solicitação de recuperação de senha" width="300">

Solicita o e-mail cadastrado para o envio do código de recuperação.

**Relações:** HU03 — Recuperação de Senha; EP001 — Autenticação e Acesso ao Sistema.

### Redefinição de senha

<img src="images/Reset-password-page-2.png" alt="Redefinição de senha" width="300">

Permite informar e confirmar uma nova senha para recuperar o acesso à conta.

**Relações:** HU03 — Recuperação de Senha; EP001 — Autenticação e Acesso ao Sistema.

## Biblioteca e leitura

### Página inicial

<img src="images/Home-page.png" alt="Página inicial" width="300">

Reúne o acervo de livros, a busca, a continuação das leituras e os saldos de pontos e moedas do aluno.

**Relações:** RF004, RF006, RF007, RF015 e RF016; HU06 — Consulta de Livros; HU07 — Registro de Leitura; HU09 — Sistema de Pontuação; EP003 e EP004.

### Detalhes do livro

<img src="images/book-detail-page.png" alt="Detalhes do livro" width="300">

Exibe título, capa, autoria e sinopse, além de permitir iniciar a leitura e registrar uma opinião sobre a obra.

**Relações:** RF005 e RF006; HU06 — Consulta de Livros; HU07 — Registro de Leitura; EP003 — Biblioteca Digital e Leitura.

## Perfil e gamificação

### Loja de personalização

<img src="images/Store-page.png" alt="Loja de personalização do avatar" width="300">

Permite visualizar opções de customização do avatar e desbloquear itens utilizando as moedas obtidas na plataforma.

**Relações:** RF003 e RF007; HU04 — Personalização de Avatar; HU09 — Sistema de Pontuação; EP002 e EP004.

### Detalhes do produto

<img src="images/Product-detail.png" alt="Detalhes de um produto da loja" width="300">

Apresenta a imagem, o custo e a descrição de um item, permitindo seu desbloqueio e a consulta de produtos semelhantes.

**Relações:** RF003 e RF007; HU04 — Personalização de Avatar; HU09 — Sistema de Pontuação; EP002 e EP004.

### Ranking

<img src="images/Ranking-page.png" alt="Ranking dos alunos" width="300">

Exibe a classificação dos alunos por divisão e a quantidade de pontos de cada participante.

**Relações:** RF007 e RF008; HU09 — Sistema de Pontuação; HU10 — Rankings; EP004 — Gamificação e Rankings.

## Comunidades

### Comunidade do aluno

<img src="images/My-community-page.png" alt="Comunidade da qual o aluno participa" width="300">

Exibe os membros, o administrador, a pontuação e o próximo evento da comunidade do aluno.

**Relações:** RF009 e RF010; HU11 — Participação em Comunidades; HU15 — Criação de Eventos; EP005 e EP007.

### Outra comunidade

<img src="images/Other-community-page.png" alt="Visualização de outra comunidade" width="300">

Permite consultar os participantes, a pontuação e as informações gerais de outra comunidade.

**Relações:** RF008 e RF009; HU10 — Rankings; HU11 — Participação em Comunidades; EP004 e EP005.

## Acompanhamento e comunicação

### Painel de desempenho

<img src="images/Panel-page.png" alt="Painel de desempenho do aluno" width="300">

Apresenta métricas de leitura, distribuição por gênero, sequência de dias e evolução do desempenho ao longo do tempo.

**Relações:** RF006, RF012, RF013 e RF018; HU05 — Visualização de Perfil; HU07 — Registro de Leitura; HU13 — Acompanhamento de Desempenho; EP002, EP003 e EP006.

### Mural de avisos

<img src="images/Mural-page.png" alt="Mural de avisos do aluno" width="300">

Exibe comunicados publicados para os alunos, incluindo autoria, data, título e conteúdo resumido.

**Relações:** RF014; HU16 — Envio de Avisos; EP007 — Eventos e Avisos.
