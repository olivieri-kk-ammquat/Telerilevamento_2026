# FIRST R SCRIPT

#OPERAZIONI
2+3

#ASSEGNARE FUNZIONI A OGGETTI
MOMI <- 2+3
MOMI = 2+3
VIKY <- 4+6
#ORA POSSO ADOPERARE GLI OGGETTI PER LE FUNZIONI (EX. VIKY*MOMI=50, VIKY/MOMI=2 ETC.)

#ARRAYS O VETTORI (IN QUESTO CASO, IL VETTORE SARA' UN CAMPIONAMENTO. LO CHIAMIAMO C)
CINGHIALE <- c(10, 8, 3, 1, 0) #FUNZIONE (C) E ARGOMENTI (TUTTI I NUMERI SEPARATI DA UNA VIRGOLA). NOTA: NON INDICARE LE FUNZIONI CON LETTERE MAIUSCOLE O CON SPAZI TRA LA LETTERA E LA PARENTESI, R TI INCULA

VALKYRIE <- c(3, 10, 10, 5, 4) 

plot(CINGHIALE, VALKYRIE) #CON QUESTO CREO UN PLOT CHE MI CORRELI I DUE VETTORI. ATTENZIONE A DOVE VENGONO INSERITE LE VARIABILI E ALLA LORO DIPENDENZA L'UNA DALL'ALTRA. EX: INQUINANTI E CETACEI, è PIù PROBABILE CHE SIA LA PRESENZA DI CETACEI A DIPENDERE DALLA QUANTITà DI INQUINANTI E NON IL CONTRARIO
plot(CINGHIALE, VALKYRIE, col="blue", pch=19, cex=2, xlab="presenze cinghiale", ylab="presenze valkyrie") #CON col="" inseriamo il colore, con pch=num scegliamo la forma del punto

#installazione pacchetti
#CRAN
install.packages("terra")
library(terra) #per richiamare il tutto

#per installare imageRy (presente sia su CRAN che su GITHUB). come si installano i pacchetti su github? Tramite devtoos o remotes
install.packages("devtools")
library(devtools)
install_github("ducciorocchini/imageRy") #con il link al pacchetto ducciorocchini/imageRy
im.list #per lista immagini
