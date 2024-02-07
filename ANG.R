library(quantmod)
library(TTR)

# Carregar os dados de Petrobras
getSymbols("PBR", src = "yahoo", from = "2023-03-01", to = "2024-02-05")

# Graficar a série temporal
chartSeries(PBR, type = "line", theme = "white", TA = NULL)


