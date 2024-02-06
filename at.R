library(quantmod)

getSymbols("PEP", src="yahoo", from='2024-01-01', to='2024-02-05')
periodicity(PEP) #Funçâo do pacote XPM 
CLASS(PEP)  #Formato dos dado de series temporal 
head(PEP, n=6 ) # Visualizar os dados 

Op(PEP) #Valor de abertura 
Hi(PEP) #Valor mais alto 
Lo(PEP) #Valor mais baixo 
Cl(PEP) #Valor de fechamento 
Vo(PEP) #Volume
Ad(PEP) #Valor real já ajustado 

HLC(PEP) # Colunas Alta,Baixa,Fechamento  
OHLC(PEP) # Colunas abertura,Valor mais alto,Fechamento
OHLCV(PEP) #Colunas Abertura,VMA,Fechamento,Volume

OpCl(PEP) #Percentua do valor de abertura e de fechamento 
HiCl(PEP) #Valor mais altoe de fechamento

ClCl(PEP)#Compara periodo de fechamento com um anterior (dois dias)
OpOp(PEP)#Compara periodo de abertura ''


plot(Hi(PEP),col="Green", lwd=2)#Valor mais altos 
lines(Op(PEP),col="black", lwd=2)#Valor de abertura 
lines(Lo(PEP),col="red", lwd=2)#Valor mais baixo 
lines(Cl(PEP),col="yellow", lwd=2)#Valor mais baixo 

seriesLo(PEP)#valores mais baixos 
seriesHi(PEP)#Valores mais altos

seriesIncr(PEP) #Resultado logico 
seriesDecr(PEP) #Resultado diminuio 
seriesAccel(PEP)#Resultado aceleramento de crescimento 
seriesDecel(PEP)#Resultado desacelerou 

head(PEP,n=6) #Resultado originais 





# Define o tema do gráfico
tema <- chart_theme()

# Define as cores para barras de aumento e queda
tema$col$up <- "green"
tema$col$dn <- "red"


# Selecionar os dados para os meses de janeiro e fevereiro de 2024
data_selected <- PEP["2024-01/2024-02"]

# Criar o gráfico para os meses selecionados
chart_Series(data_selected, type = 'candlesticks',multi.col = TRUE,  theme = tema)
chart_Series(data_selected, type = 'bars',multi.col = TRUE, theme = tema)
chart_Series(PEP, type = 'line',multi.col = TRUE, theme = tema)

chart_theme()

barChart(PEP) Cria direto o grafico 
candleChart(PEP)
lineChart(PEP)
lineChart(PEP, TA=NULL)
















