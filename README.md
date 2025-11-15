# Avaliações Online na Rota das Emoções – Análise Estatística

Este repositório contém o banco de dados tratado e o script de análise estatística para o artigo submetido à Revista Brasileira de Pesquisa em Turismo (RBTUR), intitulado **"A Correlação entre a Nota e a Extensão dos Comentários em Avaliações Online de Atrações Turísticas na Rota das Emoções no TripAdvisor"**.

## 🎯 Objetivo

Investigar se existe diferença significativa no tamanho dos comentários entre os grupos de detratores (notas 1 e 2) e promotores (notas 4 e 5) em avaliações de atrações turísticas na Rota das Emoções, utilizando testes estatísticos não paramétricos.

## 📁 Conteúdo

- `rota_final.csv`: banco de dados filtrado, com outliers removidos  
- `script.R`: código completo em R para limpeza, análise e visualização  
- `boxplot_grupo.png`: gráfico de distribuição do tamanho dos comentários por grupo  
- `README.md`: este documento explicativo

## 🧪 Metodologia

- Coleta automatizada de 2.637 avaliações públicas no TripAdvisor  
- Criação de variáveis: número de palavras (`Length_of_review`) e classificação (`Grupo`)  
- Exclusão de outliers via distância de Mahalanobis  
- Teste de normalidade com Shapiro-Wilk  
- Comparação entre grupos com teste de Mann-Whitney  
- Visualização com `ggplot2`

## 📊 Resultado principal

> Não foi identificada diferença estatisticamente significativa no tamanho dos comentários entre detratores e promotores (W = 78.447; p = 0.8967).

## 👥 Autoria

- **Breno Santos-Rodrigues** – Universidade Federal do Paraná (UFPR)  
- **Me. Francisco Henrique Bezerril** – Universidade Federal do Rio Grande do Norte (UFRN)  
- **Prof. Dr. André Riani Costa Perinotto** – Universidade Federal do Delta do Parnaíba (UFDPar)  
  *(Professor permanente da pós-graduação em Turismo na UFPR)*

## 🧾 Submissão

Artigo Publicado na **Revista XYZ**  
Qualis Abcd | Área: Turismo  
Previsão de publicação: após aprovação editorial

## 📜 Licença

Este projeto está sob a licença [Creative Commons Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/). Você pode usar, modificar e distribuir com atribuição.

## 📌 Como citar este repositório

Se você utilizar este banco de dados ou o script em seus trabalhos, por favor cite:

**Santos-Rodrigues, B., Bezerril, F. H., & Perinotto, A. R. C.** (2025). *A correlação entre a nota e a extensão dos comentários em avaliações online de atrações turísticas na Rota das Emoções no TripAdvisor*. Submetido à Revista Brasileira de Pesquisa em Turismo (RBTUR).

Ou, se preferir citar o repositório diretamente:

> Santos-Rodrigues, B. (2025). *avaliacoes-tripadvisor-rota-emocoes* [Repositório de dados e código]. GitHub. Disponível em: https://github.com/santos-rodriguesb/avaliacoes-tripadvisor-rota-emocoes
