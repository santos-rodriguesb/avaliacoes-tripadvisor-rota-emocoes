# Extensão Textual em Avaliações Online na Rota das Emoções

Este repositório contém o banco de dados tratado e o script de análise estatística para o artigo científico intitulado **"Extensão Textual em Avaliações Online de Atrações Turísticas: Uma Análise entre Detratores e Promotores na Rota das Emoções"**.

## 🎯 Objetivo

Testar a premissa teórica de que a polaridade da avaliação (positiva vs. negativa) influencia a extensão textual dos comentários online. A análise investiga se há diferença estatisticamente significativa no tamanho dos comentários entre os grupos de **detratores** (notas 1 e 2) e **promotores** (notas 4 e 5) em avaliações de atrações turísticas na Rota das Emoções.

## 📁 Conteúdo

* `rota_final.csv`: Banco de dados filtrado, com outliers removidos.
* `script.R`: Código completo em R para limpeza, análise e visualização.
* `boxplot_grupo.png`: Gráfico de distribuição do tamanho dos comentários por grupo.
* `README.md`: Este documento explicativo.

## 🧪 Metodologia

1.  **Coleta:** Web scraping de avaliações públicas no TripAdvisor.
2.  **Preparação:** Criação das variáveis `Length_of_review` (número de palavras) e `Grupo` (Detrator/Promotor).
3.  **Limpeza:** Exclusão de outliers multivariados via distância de Mahalanobis ($\chi^2$).
4.  **Análise:** Teste de normalidade (Shapiro-Wilk) e comparação não paramétrica entre grupos (Mann-Whitney U).

## 📊 Resultado Principal

> O resultado do teste (W = 78.447; p = 0.8967) indica que **não há diferença estatisticamente significativa** no tamanho dos comentários entre detratores e promotores.

O achado refuta a hipótese teórica de que a insatisfação (dissonância cognitiva) gera textos mais longos, sugerindo que no contexto turístico de alto envolvimento, o engajamento textual é um fenômeno complexo e independe da simples polaridade da nota.

## 👥 Autoria

* **Breno Santos-Rodrigues** – Universidade Federal do Paraná (UFPR)
* **Francisco Henrique Bezerril Lima** – Universidade Federal do Rio Grande do Norte (UFRN)
* **André Riani Costa Perinotto** – Universidade Federal do Delta do Parnaíba (UFDPar) / Universidade Federal do Paraná (UFPR)

## 📜 Licença

Este projeto está sob a licença [Creative Commons Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/). Você pode usar, modificar e distribuir os dados e códigos, desde que forneça a atribuição adequada.

## 📌 Como Citar

Se você utilizar este banco de dados ou script em seus trabalhos, por favor, cite este repositório:

**Citação do Repositório (DOI Geral/Conceitual):**
Esta citação garante que você sempre aponte para a versão mais recente do projeto, que incluirá o link para o artigo publicado (quando disponível).

> Santos-Rodrigues, B., Lima, F. H. B., & Perinotto, A. R. C. (2025). *Extensão Textual em Avaliações Online na Rota das Emoções* [Data set]. Zenodo. https://doi.org/10.5281/zenodo.17625444
