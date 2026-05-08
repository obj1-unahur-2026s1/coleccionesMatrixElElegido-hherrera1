object neo{
    var energia = 100

    method saltar() = energia / 2
    method vitalidad() = energia / 10
    method esElegido() = true
}

object morfeo {
    var vitalidad = 8

    method estaDescansado() = true 
    method esElegido() = false
    method saltar() { vitalidad - 1}
    
}

object trinity {
     const vitalidad = 0

    method esElegido() = false
    method saltar() {}
}

object nave {
    const pasajeros = []

    method subir(pasajero) { pasajeros.add(pasajero) }
    method bajar(pasajero) {pasajeros.remove(pasajero)}

    method cantidadPasajeros() = pasajeros.size()
    method pasajeroMayorVit() = pasajeros.max({ p=> p.vitalidad()})

    method estaEquilibrada() {
        const vitalidades = pasajeros.map({p => p.vitalidad()})
        return pasajeros.all({ p =>
        p.vitalidad() <= vitalidades.min() * 2})}

    method elElegidoEstaEnLaNave() = pasajeros.any({p => p.esElegido()})

    method laNaveChoca(){  
        pasajeros.forEach({p => p.saltar()})
        pasajeros.clear()
    }

    method laNaveAcelera() = pasajeros.filter({p => !p.esElegido() }).forEach({p => p.saltar()})

}



