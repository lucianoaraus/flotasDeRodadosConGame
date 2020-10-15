//Modelo2

import wollok.game.*

class Corsa {
	var property color
	var property image = "autitorojo.png"
	var property position = game.at(4,7)
	/*var property position = new Position(x = 4, y = 7)*/ 
	var posicionesVisitadas = [] //Para: pasoPor(posicion) 
	var filasVisitadas = [] //Para: recorrioFilas()
	
	method peso() = 1300
	method capacidad() = 4
	method velMax() = 150
	
	method moverALaDerecha(){ 
		posicionesVisitadas.add(self.position())
		filasVisitadas.add(self.position().x())
		self.position( self.position().right(1) )
	}
	method moverALaIzquierda(){
		posicionesVisitadas.add(self.position())
		filasVisitadas.add(self.position().x())
		self.position( self.position().left(1) )
	}
	method moverArriba(){
		posicionesVisitadas.add(self.position())
		filasVisitadas.add(self.position().x())
		self.position( self.position().up(1) )
	}
	method moverAbajo(){
		posicionesVisitadas.add(self.position())
		filasVisitadas.add(self.position().x())
		self.position( self.position().down(1) )
	}
	method pasoPor(posicion){ return posicionesVisitadas.contains(posicion) }
	method pasoPorFila(nroFila){ return filasVisitadas.contains(nroFila) }
	method recorrioFilas(lista_de_numeros){ return filasVisitadas.contains(lista_de_numeros) }
}

object rojo {
    method image() { return "autitorojo.png" } 
}

object azul {
    method image() { return "autitoazul.png" } 
}

object amarillo {
    method image() { return "autitoamarillo.png" } 
}

object negro {
    method image() { return "autitonegro.png" } 
}


class Kwid {
	//funcionan a gas
	var property tieneTanqueExtra

	method peso(){return if(tieneTanqueExtra){ 1350 }else{ 1200 } }
	method capacidad(){ return if(tieneTanqueExtra){ 3 }else{ 4 } }
	method velMax(){ return if(tieneTanqueExtra){ 120 }else{ 110 } }
	method color() = "azul"
}

object trafic {
	var interior
	var motor
	var peso = 4000

	method interior(tipo){
		interior = tipo
		if(tipo == "comodo"){ peso = peso + 700 }
		else{ peso = peso + 1000 }
	}
	
	method interior() = interior
	
	method motor(tipo){
		motor = tipo
		if(tipo == "pulenta"){ peso = peso + 800 }
		else{ peso = peso + 500 }
	}
	
	method motor() = motor
	
	method peso() = peso 
	
	method capacidad(){ return if(interior == "comodo"){ 5 }else{ 12 } }
	method velMax(){ return if(motor == "pulenta"){ 130 }else{ 80 } }
	method color() = "blanco"
	
}

class AutoEspecial {
	var property capacidad
	var property velMax
	var property peso
	var property color
}





/* Modelo1
 * class Rodado {
	var property color 
	//kwid = todos son azules
	//trafic = todos son blancas
	var property esAGas
	var property modelo
	var property interior //Solo para la trafic
	var property motor //Solo para la trafic
	
	method capacidad(){
		return if(esAGas){ 3 }
		else if(modelo == "kwid" && not esAGas ){ 4 }
		else if(modelo == "corsa"){ 5 }
		else if(modelo == "trafic" && interior == "comodo"){ 5 }
		else if(modelo == "trafic" && interior == "popular"){ 12 }
	}
	//cantidad de pasajeros que puede transportar
	
	method peso(){
		return if(modelo == "corsa"){1300}
		else if(modelo == "kwid" && esAGas){ 1200 + 150 }
		else if(modelo == "kwid" && not esAGas){ 1200 }
		else if(modelo == "trafic" && interior == "comodo" && motor == "pulenta"){ 4000 + 700 + 800 }
		else if(modelo == "trafic" && interior == "comodo" && motor == "bataton"){ 4000 + 700 + 500 }		
		else if(modelo == "trafic" && interior == "popular" && motor == "pulenta"){ 4000 + 1000 + 800 }
		else if(modelo == "trafic" && interior == "popular" && motor == "bataton"){ 4000 + 1000 + 500 }
		else if(modelo == "especial"){ }
	}
	method velMax(){ 
		return if(modelo == "corsa"){ 150 }
		else if(modelo == "kwid" && esAGas){120}
		else if(modelo == "kwid" && not esAGas ){110}
		else if(modelo == "trafic" && motor == "pulenta"){ 130 }
		else if(modelo == "trafic" && motor == "bataton"){ 80 }
	}
	
	
}
*/