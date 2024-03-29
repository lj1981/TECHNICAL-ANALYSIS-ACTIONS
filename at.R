library(quantmod)

getSymbols("PEP", src="yahoo", from='2023-03-01', to='2024-02-05')
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


chart_Series(PEP, TA=NULL,theme = tema)

chart_Series(to.monthly(PEP), TA=NULL,theme = tema)#Grafico por mês 

chart_Series(to.weekly(PEP), TA=NULL,theme = tema)#Por semana 

chart_Series(to.quarterly(PEP), TA=NULL,theme = tema)# Por trimestre

Lag(Cl(PEP))#Fechamneto das acoes anterior 
Next(Cl(PEP))#Periodo para frente 
Delt(Op(PEP),Cl(PEP),k=1)  #Calculando um delta com a diferença percentual 
plot(Delt(Op(PEP),Cl(PEP),k=1))


PEP['2024']#Filtra os dados pelo ano 
PEP['2024-02']#Filtro por mês 
PEP['2023-03::2024-01'] #Filtro por periodo
PEP['2024-02:']#Filtra do mês para frente 
PEP[c('2023-03','2023-04')]#Filtra meses intercalados 

last(PEP)#Utimo valor 
first(PEP)#Primeira cotaçâo do ano
first(PEP,'1 months')

dailyReturn(PEP)#Retorno por dia 
weeklyReturn(PEP)#Por semana 
monthlyReturn(PEP)#Por mês 
allReturns(PEP)#Todo o periodo 
yearlyReturn(PEP)#Por ano 

getQuote('PEP')#Cotaçâo atual 
getDividends('PEP')#Dividendos 

removeSymbols(PEP)















