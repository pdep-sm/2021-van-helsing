class Monstruo {
	const vitalidad 
	const ataques = []
	
	method peligrosidad() = vitalidad * self.velocidad()
	
	method esRapido() = self.velocidad() > 100
	
	method esPatetico() = ataques.any{ ataque => ataque.esPatetico() } 
	
	method velocidad() 
	
	method esMasMaloQueKraken()

}

class HombreLobo inherits Monstruo {
	override method velocidad() = 30 + 2 * vitalidad
	
	override method esMasMaloQueKraken() = vitalidad > 50
}

class Dragon inherits Monstruo {
	const property velocidad
	const property esMasMaloQueKraken
}

class Vampiro inherits Monstruo {
	//const property esMasMaloQueKraken = false
	override method velocidad() = vampiro.velocidad()
	override method esMasMaloQueKraken() = false	
}

object vampiro { //companion object [Kotlin, Scala]
	var property velocidad = 100 //otros lenguajes: variable static [Java] (o de clase[Smalltalk])
}

object sapoPepe {
	const property peligrosidad = 2000000
	const property esRapido = true
	const property esMasMaloQueKraken = true
	const property esPatetico = true
}

object sapoPepe2 inherits Monstruo(vitalidad = 0) {
	const property peligrosidad = 2000000
	const property velocidad = 150000
	const property esMasMaloQueKraken = true
	const property esPatetico = true
}



