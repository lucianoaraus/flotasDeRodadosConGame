import rodados.*

class Dependencia {
	var property flota = []
	var property empleados
	var property registros = [] //De los pedidos hechos.
	
	method agregarAFlota(rodado){ flota.add(rodado) }
	method quitarDeFlota(rodado){ flota.remove(rodado) }
	method pesoTotalFlota(){ return flota.sum( { r => r.peso() } ) }
	method estaBienEquipada(){ return flota.size() >= 3 && flota.all( { r => r.velMax() >= 100 } ) }
	method capacidadTotalEnColor(color){
		const autosDeColor = flota.filter( { r => r.color() == color }  )
		return autosDeColor.sum( { r => r.capacidad() } )
	}
	method colorDelRodadoMasRapido(){ return flota.max( { r => r.velMax()} ).color() }
	method capacidadFaltante(){ return empleados - flota.sum( { r => r.capacidad() } ) }
	method esGrande(){ return empleados >= 40 && flota.size() >= 5 }
	method agregarRegistro(pedido){ registros.add(pedido) }
	method quitarRegistro(pedido){ registros.remove(pedido) }
	method totalPasajerosRegistrados(){ return registros.sum( { p => p.canPasajeros() } ) }
	method relajarPedidos(){ registros.forEach( { p => p.relajar() } ) } //Relaja todos los pedidos registrados.
	method colorIncompatible(color){ return registros.contains(color) }
	
	//NO SALE:
		method pedidosInsatisfechos(){ }
			
}
