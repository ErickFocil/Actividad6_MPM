import UIKit
// Punto 2
infix operator ^^
func ^^(nu:Int, po:Int)->Int{
    var res = 1
    var num = nu
    var pot = po
    while pot >= 1 {
    res = res * num
    pot = pot - 1
    }
   return res
}
var t = 4^^2
print(t)

// Punto 3
infix operator |>
func |>(arr:[Int],f:([Int]) -> [Int]) -> [Int] {
    return f(arr)
}
func orden(data:[Int]) -> [Int] {
    var datos = data
    datos.sort()
    return datos
}

var coleccion = [2,5,3,4]
coleccion|>orden
print(coleccion)
//Profe, no se si CANVAS le falta algo o que será, pero simpelmente no funciona con Arrays, devuelve lo mismo que entró.

// Punto 4
let valores = [2,3,4,5]
class Cantidad{
    var valores:[Int]
    init(v:[Int]) {
        self.valores = v
    }
    
    subscript(idx:Int) -> Int {
        get {
            return valores[idx]
        }
        set(valorMod) {
            valores[idx] = valores[idx]*valorMod
        }
    }
}
let v1 = Cantidad(v: valores)

print(v1[2])
v1[2] = 2
print(v1[2])
// Profesor, entendí que el valor dado sería multiplicado al actual, la explicación no es clara, de hecho es muy confusa

// Punto 5
struct datosPuntero{
    var puntero:CGPoint
    init(x:Int,y:Int) {
        self.puntero = CGPoint(x:x,y:y)
    }
}
var enemigo = datosPuntero(x:4,y:6)
print(enemigo.puntero.x)
enemigo.puntero.x = 6
print(enemigo.puntero.x)

// Punto 6
let chek = ["A":1, "B":2,"C":3]
func ExisteValor(idx:String) {
    guard let existe = chek[idx] else {
        print("No existe")
        return
    }
    print("Existe \(existe)")
}
ExisteValor(idx:"D")
chek["D"]
