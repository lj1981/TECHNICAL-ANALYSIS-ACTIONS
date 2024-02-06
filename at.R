library(quantmod)

getSymbols("PEP", src="yahoo", from='2024-01-01', to='2024-02-05')
periodicity(PEP) #Funçâo do pacote XPM 
CLASS(PEP)  #Formato dos dados 
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


plot(Hi(PEP),col="Green", lwd=2)
