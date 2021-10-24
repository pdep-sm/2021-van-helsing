import monstruos.*
import zonas.*

class Ataque {
	const monstruos = []
	const zona
	const fecha
	
	// Punto 1
	method monstruoMasPeligroso() =
			monstruos.max{ monstruo => monstruo.peligrosidad() }	
	
	method monstruosRapidos() = monstruos.filter{ monstruo => monstruo.esRapido() }
	
	// Punto 4
	method fueEnSerio() = monstruos.count{ monstruo => monstruo.esMasMaloQueKraken() } > 3
	// filter + size = count
	
	method destruyeA(zona) = self.nivelDeDevastacion() > zona.resistencia() 
	
	method nivelDeDevastacion() = monstruos.sum{ monstruo => monstruo.peligrosidad() }
	
	method esPatetico() = zona.fueDestruidaAntesDe(fecha) 
	
	method fueAnteriorA(otraFecha) = fecha < otraFecha
}