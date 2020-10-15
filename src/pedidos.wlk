import rodados.*

class Pedido {
	//de translados
	
	var property distancia //A recorrer expresada en kms
	var property tiempoMax //De viaje expresado en hs
	var property cantPasajeros //A transportar
	var property coloresIncompatibles = [] //Los pasajeros rechazan viajar en autos de estos colores.
	
	method agregarColorIncompatible(color){ coloresIncompatibles.add(color) }
	method quitarColorIncompatible(color){ coloresIncompatibles.remove(color) }
	method velocidadRequerida(){ return distancia/tiempoMax }
	method puedeSatisfacerPedido(auto){ 
		return (auto.velMax() >= self.velocidadRequerida() + 10) 
				&& (auto.capacidad() >= cantPasajeros)
				&& not self.coloresIncompatibles().contains(auto.color())
	}
	method acelerar(){ tiempoMax -= 1 }
	method relajar(){ tiempoMax += 1 }
	
}
