library(quantmod)

getSymbols("PEP", src="yahoo", from='2024-01-01', to='2024-02-05')
periodicity(PEP)
CLASS(PEP)
head(PEP, n=6 )

Op(PEP)
Hi(PEP)
Lo(PEP)
Cl(PEP)
Vo(PEP)
aD(PEP)

HLC(PEP)
OHLC(PEP)

OpCl(PEP)



