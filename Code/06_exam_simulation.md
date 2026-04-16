# Titolo del progetto per l'esame

La struttura di Richat

## Pacchetti utilizzati
Adopereremo i pacchetti x y z e il backtick ` mostrerà le stringhe di codice

```r
library(terra) #spiegazione pacchetto
```

## Importazione dei dati
I dati sono stati scaricati da Earth Observatory: https://science.nasa.gov/earth/earth-observatory/eyeing-the-richat-structure/
Meglio ancora se mettiamo il link [qui](https://science.nasa.gov/earth/earth-observatory/eyeing-the-richat-structure/)

Il codice utilizzato è il seguente
1. selezioniamo la working directoy:
```
setwd("C:/Users/Utente/Desktop")

getwd()
list.files()
```
Per importare i dati è stata utilizzata la funzione `rast()` in `library(terra)`:

```r
richat <- rast("richatstructure_oli_20260306.jpg")
richat <- flip(richat)

png("figura.png")
plot(richat)
dev.off()
```

Così plotto le bande
```r
im.multiframe(2,1)
plot(richat[[1]])
plost(richat[[2]])
dev.off()
```
