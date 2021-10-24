import ataque.*

class Zona {
	const ataques = []

	// Punto 2	
	method nightmareTeam() = ataques.map{ ataque => ataque.monstruoMasPeligroso() }.asSet()
	
	// Punto 3
	method monstruosRapidos() = ataques.flatMap{ ataque => ataque.monstruosRapidos() }.asSet()
	//ataques.map{}.flatten().asSet()
	
	// Punto 5
	method fueDestruida() = self.fueDestruidaPor(ataques)
	
	method fueDestruidaPor(otrosAtaques) = otrosAtaques.any{ ataque => ataque.destruyeA(self) }
	
	method fueDestruidaAntesDe(fecha) = self.fueDestruidaPor( ataques.filter{ ataque => ataque.fueAnteriorA(fecha) } )

	method resistencia()
}


class Aldea inherits Zona {
	const casas = []
	override method resistencia() = casas.sum{casa => casa.resistencia() }  
}

class Casa {
	const property resistencia
}

class Castillo inherits Zona {
	const plusResistencia
	override method resistencia() = 3000 + plusResistencia
	
}

class CastilloMagico inherits Castillo {
	const cantidadMagos
	
	override method resistencia() = super() + self.plusMagos() + 20
	
	method plusMagos() = cantidadMagos * castilloMagico.plusPorMago() 
}

object castilloMagico {
	var property plusPorMago = 78
}




