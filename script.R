# ============================================================
# ANÁLISE ESTATÍSTICA DE AVALIAÇÕES NA ROTA DAS EMOÇÕES
# ============================================================
# Autor: Breno Santos-Rodrigues (UFPR)
# Coautores: Profa. Dra. Melise de Lima Pereira (UFPR)
#            Me. Francisco Henrique Bezerril Lima(UFRN)
#            Prof. Dr. André Riani Costa Perinotto (UFDPar / PPGTUR-UFPR)
# Artigo submetido à Revista Brasileira de Pesquisa em Turismo (RBTUR)
# Licença: Creative Commons Attribution 4.0 International (CC BY 4.0)
# Repositório: https://github.com/brendoanz/avaliacoes-trabalho-rtc-emocoes
# ============================================================

# 1. Carregar pacotes necessários
library(tidyverse)
library(stringr)
library(ggplot2)

# 2. Importar os dados
rota <- read_delim("rota_final.csv", delim = ";")

# 3. Criar variáveis derivadas
rota <- rota %>%
  mutate(
    Length_of_review = str_count(Reviews_body, "\\S+"),  # Número de palavras
    Grupo = case_when(
      Reviews_rating %in% c(1, 2) ~ "Detrator",
      Reviews_rating %in% c(4, 5) ~ "Promotor",
      TRUE ~ NA_character_
    )
  )

# 4. Filtrar dados válidos
rota_filtrada <- rota %>%
  filter(!is.na(Length_of_review) & !is.na(Grupo))

# 5. Remover outliers com distância de Mahalanobis
matriz_maha <- rota_filtrada %>%
  select(Reviews_rating, Length_of_review)

media_maha <- colMeans(matriz_maha)
cov_maha <- cov(matriz_maha)

mahalanobis_dist <- mahalanobis(matriz_maha, center = media_maha, cov = cov_maha)
limiar <- qchisq(0.999, df = 2)

rota_final <- rota_filtrada[mahalanobis_dist < limiar, ]

# 6. Teste de normalidade (Shapiro-Wilk)
# Justificativa: o teste de Kolmogorov-Smirnov foi descartado por apresentar empates nos dados,
# o que viola suas premissas. Além disso, o Shapiro-Wilk é mais robusto para amostras pequenas
# e moderadas, como a utilizada neste estudo.

shapiro_detrator <- shapiro.test(rota_final$Length_of_review[rota_final$Grupo == "Detrator"])
shapiro_promotor <- shapiro.test(rota_final$Length_of_review[rota_final$Grupo == "Promotor"])

print("Shapiro-Wilk - Detrator")
print(shapiro_detrator)

print("Shapiro-Wilk - Promotor")
print(shapiro_promotor)

# 7. Teste de hipótese (Mann-Whitney)
# Aplicado devido à ausência de normalidade nos grupos

teste_mw <- wilcox.test(Length_of_review ~ Grupo, data = rota_final)

print("Teste Mann-Whitney")
print(teste_mw)

# 8. Visualização com boxplot
ggplot(rota_final, aes(x = Grupo, y = Length_of_review)) +
  geom_boxplot(fill = c("#FF9999", "#99CCFF")) +
  labs(
    title = "Distribuição do Tamanho das Avaliações por Grupo",
    x = "Grupo",
    y = "Número de Palavras"
  ) +
  theme_minimal()

# 9. Exportar gráfico (opcional)
# ggsave("boxplot_grupo.png", width = 8, height = 5)

