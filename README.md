# 🧩 HackerRank Challenges (Swift Edition)

![Swift](https://img.shields.io/badge/Swift-5-F05138?logo=swift&logoColor=white)
![Platform](https://img.shields.io/badge/Platform-macOS-lightgrey?logo=apple)
![Xcode](https://img.shields.io/badge/Xcode-Project-147EFB?logo=xcode&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green.svg)
![Status](https://img.shields.io/badge/Status-En%20progreso-yellow)

> Un pequeño gimnasio de algoritmos hecho en Swift 🏋️‍♂️, donde cada reto de HackerRank/LeetCode entra al ring desde un menú interactivo por consola.

---

## 🎬 ¿Qué es esto?

Este proyecto es mi cuaderno de práctica para resolver problemas tipo **HackerRank** y **LeetCode**, pero en vez de correr scripts sueltos, construí una app de consola en Swift con un **menú principal** 🛠️ desde donde puedo lanzar cada reto sin salir de la terminal.

Está pensado con arquitectura orientada a protocolos (`ChallengeProtocol`, `InputProtocol`), así que agregar un nuevo desafío es tan fácil como crear una clase nueva y sumarla al menú. Escalable, ordenado y (casi) libre de copy-paste. 😄

---

## 🚀 Cómo correrlo

1. Clona el repo y abre `HackerRank.xcodeproj` en **Xcode**.
2. Selecciona el scheme `HackerRank` y dale ▶️ **Run**.
3. La consola te va a saludar con el menú principal. Elige una opción con su número y sigue las instrucciones en pantalla.

```
=============================================
============= 🛠 MENÚ PRINCIPAL =============
0. Salir
1. Saludar
2. Sumar dos números
3. Multiplicacion
4. Plus Minus
5. Pivot Integer
6. Palindromo Number
=============================================
Elige una opción:
```

---

## 🗂️ Menú de retos

| # | Reto | ¿Qué hace? | Estado |
|---|------|-----------|--------|
| 1️⃣ | **Saludar** | Te saluda por tu nombre con toda la energía 😃👋 | ✅ Listo |
| 2️⃣ | **Sumar dos números** | Suma los números que ingreses | ✅ Listo |
| 3️⃣ | **Multiplicación** | Multiplica los números ingresados | ✅ Listo |
| 4️⃣ | **Plus Minus** | Calcula la proporción de positivos, negativos y ceros en un arreglo | 🚧 Implementado, temporalmente deshabilitado en el menú |
| 5️⃣ | **Pivot Integer** | Encuentra el número pivote `x` tal que `1+...+x == x+...+n` | ✅ Listo (incluye versión optimizada) |
| 6️⃣ | **Palíndromo Number** | Verifica si un número es palíndromo sin convertirlo a texto | ✅ Listo |

---

## 🏗️ Estructura del proyecto

```
HackerRank/
├── HackerRank/
│   ├── main.swift              # 🚪 Punto de entrada, levanta el Core
│   ├── Core/
│   │   ├── Core.swift          # 🧠 Motor del menú y ruteo de opciones
│   │   ├── Enums.swift         # 📋 Opciones del menú (TestOption)
│   │   ├── Input.swift         # ⌨️ Manejo de inputs de usuario
│   │   └── Protocols.swift     # 🔌 Contratos ChallengeProtocol / InputProtocol
│   └── Challenges/
│       ├── SayHi.swift
│       ├── AddNumbers.swift
│       ├── Multiplication.swift
│       ├── PivotInteger.swift
│       └── PalindromeNumber.swift
└── Interviews/
    └── PlusMinus.swift         # 🎯 Reto oficial de HackerRank (kit de preparación)
```

---

## 🧠 Arquitectura en breve

Cada reto es una clase que implementa `ChallengeProtocol`:

```swift
protocol ChallengeProtocol: AnyObject {
    var error: () -> Void { get }
    func operation(_ input: InputProtocol)
    func printResult(data: Any)
}
```

El `Core` decide, según la opción elegida en el menú (`TestOption`), qué reto instanciar y qué inputs pedirle al usuario. Así, sumar un desafío nuevo es:

1. Crear la clase del reto conformando `ChallengeProtocol`.
2. Agregar el caso correspondiente en `TestOption` (`Enums.swift`).
3. Conectarlo en el `switch` de `Core.operation(_:)`.

¡Y listo! Un LEGO más en la torre. 🧱

---

## 🛣️ Roadmap

- [ ] Reactivar **Plus Minus** en el menú principal
- [ ] Agregar más retos de HackerRank / LeetCode
- [ ] Sumar tests unitarios ✅🧪
- [ ] Mover la lógica de retos a un módulo Swift Package reutilizable

---

## 📄 Licencia

Distribuido bajo licencia **MIT**. Revisa el archivo [`LICENSE`](./LICENSE) para más detalles.

---

## ✍️ Autor

Hecho con ☕, Swift y ganas de resolver problemas por **Carlos Andrés Ponce Flores**.
