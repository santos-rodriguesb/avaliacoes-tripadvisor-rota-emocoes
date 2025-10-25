# Avaliações Online na Rota das Emoções – Análise Estatística

Este repositório contém o banco de dados tratado e o script de análise estatística para o artigo submetido à Revista Brasileira de Pesquisa em Turismo (RBTUR), intitulado **"A Correlação entre a Nota e a Extensão dos Comentários em Avaliações Online de Atrações Turísticas na Rota das Emoções no TripAdvisor"**.

## 🎯 Objetivo

Investigar se existe diferença significativa no tamanho dos comentários entre os grupos de detratores (notas 1 e 2) e promotores (notas 4 e 5) em avaliações de atrações turísticas na Rota das Emoções, utilizando testes estatísticos não paramétricos.

## 📁 Conteúdo

- `rota_final.csv`: banco de dados filtrado, com outliers removidos
- `script.R`: código completo em R para limpeza, análise e visualização
- `boxplot_grupo.png`: gráfico de distribuição do tamanho dos comentários por grupo (opcional)
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

- **Breno dos Santos Rodrigues** – Universidade Federal do Paraná (UFPR)  
- **Profa. Dra. Melise de Lima Pereira** – Universidade Federal do Paraná (UFPR)  
- **Me. Francisco Henrique Bezerril** – Universidade Federal do Rio Grande do Norte (UFRN)  
- **Prof. Dr. André Riani Costa Perinotto** – Universidade Federal do Delta do Parnaíba (UFDPar)  
  *(Professor permanente da pós-graduação em Turismo na UFPR)*

## 🧾 Submissão

Artigo submetido à **Revista Brasileira de Pesquisa em Turismo (RBTUR)**  
Qualis A2 | Área: Turismo  
Previsão de publicação: após aprovação editorial

## 📜 Licença

Este projeto está sob a licença Creative Commons Attribution 4.0 International (CC BY 4.0):. Você pode usar, modificar e distribuir com atribuição.
## 📌 Como citar este repositório

Se você utilizar este banco de dados ou o script em seus trabalhos, por favor cite:

**Rodrigues, B. S., Pereira, M. L., Bezerril, F. H., & Perinotto, A. R. C.** (2025). *A correlação entre a nota e a extensão dos comentários em avaliações online de atrações turísticas na Rota das Emoções no TripAdvisor*. Submetido à Revista Brasileira de Pesquisa em Turismo (RBTUR).

Ou, se preferir citar o repositório diretamente:

> Rodrigues, B. S. (2025). *avaliacoes-trabalho-rtc-emocoes* [Data and code repository]. GitHub. https://github.com/brendoanz/avaliacoes-trabalho-rtc-emocoes


