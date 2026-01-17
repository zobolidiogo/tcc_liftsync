# TCC: Idealização de Aplicativo LiftSync

![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)
![Oracle](https://img.shields.io/badge/Oracle%20Data%20Modeler-F80000?style=for-the-badge&logo=oracle&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)

Idealização de aplicativo móvel desenvolvida como Trabalho de Conclusão de Curso (TCC) do Técnico em Ciência de Dados, voltada ao combate do sedentarismo através da tecnologia.

**Período:** Agosto a Dezembro de 2025  
**Equipe:** Maira Luiza Kienen (Líder do Projeto), Julia Pereira dos Santos, Diogo Zoboli

---

## O Contexto

O Brasil lidera o ranking de sedentarismo na América Latina, registrando mais de 300 mil mortes anuais relacionadas à inatividade física, segundo a OMS (Organização Mundial da Saúde). Além disso, estimativas apontam que até 2044, 75% dos brasileiros adultos estarão com sobrepeso ou obesidade.

**O Desafio:**
Como utilizar a tecnologia e a ciência de dados para criar uma solução que incentive a prática regular de exercícios, promova hábitos saudáveis e combata o sedentarismo de forma acessível e engajadora?

---

## A Solução

### Validação de Mercado

Antes do desenvolvimento, realizamos pesquisa de aplicabilidade com 55 participantes para validar a proposta:

- **83,64%** praticam musculação em academias
- **95%** demonstraram interesse em acompanhamento nutricional
- **80%** utilizam celular durante treinos
- **Taxa de aceitação superior a 90%**

Análise apresentada em gráficos desenvolvidos no Power BI, comprovando a viabilidade do projeto.

### Proposta do Aplicativo

**LiftSync** é um aplicativo móvel que integra:

**Treinos Personalizados**
- Criação de fichas customizadas (academia, casa ou híbrido)
- Vídeos e imagens demonstrativas de exercícios
- Registro de séries, repetições e tempo
- Agenda com streak de dias consecutivos

**Acompanhamento Nutricional**
- Registro completo de refeições
- Análise de nutrientes (carboidratos, proteínas, gorduras)
- Cálculo de valores energéticos proporcionais à porção consumida
- Métricas corporais (peso, altura, taxa basal, percentual de gordura)

**Integração Musical**
- Conexão com Spotify, Deezer e YouTube Music
- Playlists personalizadas para treinos
- Acesso direto durante exercícios

**Comunidade Interativa**
- Publicações com fotos e vídeos
- Grupos de chat para troca de experiências
- Sistema de curtidas e comentários
- Motivação coletiva

---

## Estrutura de Dados

### Especificações Técnicas

- **SGBD:** SQL Server Management Studio
- **Tipo de Banco:** Relacional
- **Processamento:** OLTP (Online Transaction Processing)
- **Total de Tabelas:** 18 tabelas normalizadas
- **Relacionamentos:** 1:1, 1:M e M:N com tabelas associativas

### Estratégia de Backup e Recuperação

| Característica | Especificação |
|----------------|---------------|
| Tipo de Backup | Completo + Incremental |
| RTO (Recovery Time Objective) | 3 horas |
| RPO (Recovery Point Objective) | 2 horas |

### Principais Entidades

**Módulo de Usuários:**
- Dados pessoais e autenticação
- Agenda de treinos com controle de frequência
- Publicações e interações sociais

**Módulo de Treinos:**
- Treinos personalizados por tipo e dificuldade
- Catálogo de exercícios com demonstrações
- Categorização por nível (alto/baixo volume)

**Módulo Nutricional:**
- Acompanhamento diário
- Refeições e alimentos
- Informações nutricionais detalhadas (13 atributos)
- Métricas corporais para evolução temporal

**Módulo de Integração:**
- Conexões com plataformas de streaming
- Grupos de chat
- Sistema de interações

---

## 📊 Modelagem de Dados

A modelagem foi desenvolvida no Oracle Data Modeler, seguindo as melhores práticas de normalização:

### Características da Modelagem

**Normalização:**
- Aplicação da 3ª Forma Normal (3FN)
- Eliminação de redundâncias
- Integridade referencial garantida

**Restrições de Integridade:**
- PRIMARY KEY - Identificadores únicos
- FOREIGN KEY - Relacionamentos entre tabelas
- UNIQUE - Dados exclusivos (email, telefone)
- CHECK - Validações de domínio (tipos categóricos)

**Relacionamentos:**
- 1:1 - Acompanhamento nutricional e métricas corporais
- 1:M - Usuário com treinos, publicações e conexões
- M:N - Treinos com exercícios, grupos com usuários, refeições com alimentos

---

## Análise de Dados

O banco de dados foi estruturado para permitir análises avançadas:

**Capacidades Analíticas:**
- Agregações de dados (COUNT, SUM) para métricas de engajamento
- Joins complexos entre 5+ tabelas para análises nutricionais
- Filtros temporais para acompanhamento de evolução
- Cálculos proporcionais (nutrientes × porção × quantidade)

**Exemplos de Análise:**
- Total de calorias e macronutrientes consumidos por usuário/dia
- Streak de dias praticando exercícios
- Exercícios mais utilizados por categoria
- Quantidade de publicações e interações na comunidade
- Plataformas de streaming mais conectadas

---

## Design e Usabilidade

O projeto seguiu as **Heurísticas de Nielsen** para garantir usabilidade:

**Correspondência com o mundo real** - Ícones intuitivos  
**Controle e liberdade do usuário** - Navegação simples  
**Consistência e padrões** - Interface padronizada  
**Design estético e minimalista** - Foco na experiência

### Paleta de Cores

| Cor | Código | Uso |
|-----|--------|-----|
| Branco | #FFFFFF | Background |
| Azul Claro | #CAE9FF | Primária 01 |
| Azul Escuro | #1B4965 | Primária 02 |
| Preto | #252525 | Títulos |
| Cinza | #6A727E | Textos |

---

## Ferramentas Utilizadas

| Ferramenta | Finalidade |
|------------|------------|
| **Google Drive** | Armazenamento de arquivos do projeto |
| **SQL Server Management Studio** | Criação e gerenciamento do banco de dados |
| **Oracle Data Modeler** | Modelagem lógica e relacional |
| **Power BI** | Análise e visualização da pesquisa de mercado |
| **Figma** | Prototipação de telas e design UI/UX |
| **Canva** | Criação da identidade visual |
| **Trello** | Gerenciamento de sprints (metodologia ágil) |

---

## Arquivos do Projeto

- `documentacao_academica_liftsync.pdf` - Documentação completa (70 páginas) com fundamentação teórica, pesquisa de mercado e especificações técnicas
- `cpa_atributos.pdf` - Correlação de Possibilidade de Análise com 85 quadros detalhados de cada atributo
- `modelagem_oracle_datamodeler/` - Modelos lógico e relacional em PDF
  - `modelo_logico.pdf`
  - `modelo_relacional.pdf`
- `scripts_sql/` - Scripts organizados para implementação do banco
  - `criacao.sql` - Criação de todas as tabelas e restrições
  - `inserts.sql` - Dados fictícios para demonstração
  - `consultas.sql` - Exemplos de análises e queries complexas

---

## Para Reproduzir o Projeto

### Criação do Banco de Dados

1. Instale o SQL Server Management Studio (SSMS)
2. Abra o SSMS e conecte-se ao servidor local
3. Execute o script `criacao.sql` para criar todas as tabelas
4. Execute o script `inserts.sql` para popular o banco com dados de exemplo
5. (Opcional) Execute o script `consultas.sql` para ver análises prontas
6. Divirta-se criando selects!

### Estrutura de Nomenclatura (padronização)

- Tabelas: `T_LS_NOMETABELA` (ex: T_LS_USUARIO)
- Colunas: `prefixo_atributo` em snake_case (ex: cd_usuario, nm_treino)
- Restrições: 
  - PRIMARY KEY: `PK_TABELA`
  - FOREIGN KEY: `FK_ORIGEM_DESTINO`
  - UNIQUE: `UN_TABELA_ATRIBUTO`
  - CHECK: `CK_TABELA_ATRIBUTO`

---

## 🎯 Diferenciais do Projeto

- Documentação acadêmica formal completa (70 páginas)
- CPA (Correlação de Possibilidade de Análise) com 85 quadros detalhados
- Pesquisa de validação com 55 participantes
- Modelagem normalizada seguindo 3FN
- 18 tabelas com relacionamentos funcionais
- Estratégia de backup profissional (RTO/RPO definidos)
- Scripts SQL organizados e documentados
- Prototipação completa de interface
- Análise de requisitos fundamentada em dados reais

---

## 📚 Metodologia de Desenvolvimento

**Abordagem Ágil:**
- Divisão em sprints semanais
- Utilização do Trello para gerenciamento
- Entregas incrementais ao longo de 4-5 meses

**Fases do Projeto:**
1. Levantamento de requisitos e pesquisa de mercado
2. Análise S.W.O.T. e matriz de comparação
3. Modelagem conceitual, lógica e relacional
4. Prototipação de telas
5. Implementação do banco de dados
6. Testes e validações
7. Documentação técnica

---

## Resultados Esperados

Com a implementação do LiftSync, espera-se:

- Redução do sedentarismo através do engajamento tecnológico
- Promoção de hábitos saudáveis (exercícios + nutrição balanceada)
- Criação de comunidade motivacional entre praticantes
- Autonomia do usuário na gestão de treinos e dieta
- Decisões baseadas em dados (análise de evolução corporal)

---

## Próximos Passos

Possibilidades de evolução do projeto:

- [ ] Implementação de IA para recomendação automática de treinos
- [ ] Expansão do acompanhamento nutricional com metas calóricas personalizadas
- [ ] Integração com wearables (smartwatches, pulseiras fitness)
- [ ] Gamificação (conquistas, badges, rankings)
- [ ] Desenvolvimento do aplicativo funcional (frontend + backend)

---

## Equipe

**Maira Luiza Kienen** - Líder do Projeto  
LinkedIn: [linkedin.com/in/maira-kienen-a776b639b/](https://www.linkedin.com/in/maira-kienen-a776b639b/)

**Julia Pereira dos Santos**  
LinkedIn: [linkedin.com/in/julia-pereira-dos-santos-307352398/](https://www.linkedin.com/in/julia-pereira-dos-santos-307352398/)

**Diogo Zoboli** 
📧 zobolidiogo@gmail.com  
💼 [linkedin.com/in/zobolidiogo](https://www.linkedin.com/in/zobolidiogo/)  
🐙 [github.com/zobolidiogo](https://github.com/zobolidiogo)

---

## Agradecimentos

Agradecemos ao **CEDUP Timbó** pelo apoio e infraestrutura fornecidos para o desenvolvimento deste projeto, e a todos os 55 participantes da pesquisa de aplicabilidade que contribuíram com insights valiosos para validar a proposta.

---

Se este projeto foi útil para você, considere dar uma estrela no repositório! ⭐
