object maquina {
  var property cantidadProductos = 0
  const property registro = []
  var property cantidadProductosTotal = 0
  //metodos para agregar numeros por dia simulando el trabajo de una maquina
  method producir(cantidad) {cantidadProductos = cantidadProductos + cantidad }
  method terminarDiaDeProduccion() {
    cantidadProductosTotal = cantidadProductosTotal + cantidadProductos
    registro.add(cantidadProductos)
    cantidadProductos = 0
  //metodo para cambiar la lista directamente para las pruebas
  }
  method listar() {
    self.registro().add(43)
    self.registro().add(18)
    self.registro().add(49)
    self.registro().add(62)
    self.registro().add(33)
    self.registro().add(39)
  }
  //-----indica si el registro incluye al menos un día en el que se produjo, exactamente, la cantidad indicada de piezas.
  method algunDiaSeProdujo(cantidad) {return registro.contains(cantidad)}
  //-----el valor más alto de producción diaria incluido en el registro.
  method maximoValorDeProduccion() {return registro.max()}
  //-----los valores pares incluidos, en el mismo orden en que aparecen en el registro.
  method valoresDeProduccionPares() {return registro.filter({e => e.even()})}
  //-----indica si en cada día de que se tiene registro, la producción se encuentra entre los valores indicados.
  method produccionEsAcotada(n1,n2) {return registro.all({e => e.between(n1,n2)})}
  //-----los valores de producción que superan el valor indicado, en el mismo orden en que aparecen en el registro.
  method produccionesSuperioresA(cuanto) {return registro.filter({e => e > cuanto})}
  //-----la serie que resulta de sumar el valor indicado a cada valor de producción diaria incluido en el registro.
  method produccionesSumando(n) {return registro.map({e => e + n})}
  //-----el total de piezas producidas por la máquina, de acuerdo a la información incluida en el registro.
  method totalProducido() {return registro.sum()}
  //-----el último valor registrado.
  method ultimoValorDeProduccion() {return registro.last()}
  //-----la cantidad de valores de producción diaria que superan a la producción indicada para el primer día de operación.
  method cantidadProduccionesMayorALaPrimera() {return registro.count({e => e > registro.first()})}
}
