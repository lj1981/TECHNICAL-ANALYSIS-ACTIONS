library(quantmod)
library(TTR)

# Carregar os dados de Petrobras
getSymbols("PBR", src = "yahoo", from = "2023-03-01", to = "2024-02-05")

# Graficar a série temporal
chartSeries(PBR, type = "line", theme = "white", TA = NULL)

chartSeries(PBR, type = "candlesticks", theme = "white", TA = NULL)

ADX(HLC(PBR), n=14)#Media movel do indice 

addADX(n=14,maType = 'EMA',wilder = T)
addSAR(accel = c(0.02, 0.2), col = "red")




