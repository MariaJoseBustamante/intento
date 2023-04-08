#Vectores
x<-c(2,3,4)
#Posición de un valor en el vector
x[2]
#Data frame o matrices
V=data.frame(a,b,c)
#Mostrar los valores de una variable en la matriz
V$a
#ggplot
ggplot()+geom_point(data=vers,aes(x,y),size=6,color='aquamarine3',shape=25)
#Ejes(error-preguntar)
ggplot()+geom_point(data = dat,aes(x,y),size=5,color="red")+
  scale_x_continuous(limits = c(0.15))+
  scale_y_continuous(limits = c(0,15))
#hacer lineas con ggplot
b<-cggplot()+geom_line(data=B,aes(l,m))
#cambiar los valores de la matriz ya hecha
B$l<-c(4,8)
B$m<-c(6,10)
#lineas con ecuaciones lineales
q<-c(2,3)
r<-3*q+2
G<-data.frame(q,r)
ggplot()+geom_line(data=G,aes(q,r))
#Normal population
sample(1:10,100,replace = TRUE)
rnorm(100,50,10) #BUSCAR
#Vertical samples
#ejemplo1: x=1, media=50 st dev=10

ggplot()+geom_point(data=A,aes(x,y))+geom_point(data=mean,aes(x,y),size=7,color='green')
#several vertical samples
y<-rnorm(100,50,10)
> y<-c(y,rnorm(100,30,10))
> y<-c(y,rnorm(100,78,10))
> dat<-data.frame(x,y)
> x<-c(1,9,15)
> y<-c(50,30,78)
> means<-data.frame(x,y)
ggplot()+geom_point(data=dat,aes(x,y))+geom_point(data = means,aes(x,y),size=7,color='blue')
#muestras a lo largo de la línea
x<-c(1,9,15,22)
> y<-3*x+1
#Primero se crea una matriz con la ecuación de la linea
#Luego ootra con puntos que van a ser reemplazados en x
ggplot()+geom_line(data=line,aes(x,y))+geom_point(data = means,aes(x,y),size=7,color='red')
#x se crean 100 veces para cada valor de x
x<-c(rep(1,100),rep(9,100),rep(15,100),rep(22,100))
#con la matriz qe¿ tenemos en donde x son los puntos y y en donde se reemplaza hacemos una variable x con rep de 100 de cada número de x
#con y hacemos rnorm con cada valor de y luego una matriz de x,y y c manda a dibujar con todo lo anterior
ggplot()+geom_line(data=line,aes(x,y))+geom_point(data = means,aes(x,y),size=7,color='red')+geom_point(data=dat,aes(x,y))
#SAMPLY
x<-c(2,4,9,15)
sqrt(x) #raíz cuadrada
sapply(x,function(x)sqrt(x))
#cloud of points
ggplot()+geom_point(data=means,aes(x,y),color='yellow')+geom_line(data=line,aes(x,y))+scale_x_continuous(limits = c(-10,30))+scale_y_continuous(limits = c(-20,80))+geom_point(data=dat,aes(x,y))

#Father and son
head(father.son)
ggplot()+geom_point(data=father.son,aes(x=fheight,y=sheight))+geom_line(data=line,aes(x,y))
#Visualización de residuos
ggplot()+geom_point(data=dat,aes(x,y))+geom_point(data=means,aes(x,y),color='red')+geom_line(data=line,aes(x,y))+geom_line(data=d,aes(x,y,group))
#
ggplot()+geom_line(data=line,aes(x,y))
