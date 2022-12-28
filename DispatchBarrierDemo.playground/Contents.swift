import Foundation

let wallet: Wallet = Wallet(balance: 3000)
let cart: Cart = Cart()

let tshirt: Product = Product(name: "Tshirt 👕", price: 800)
cart.add(product: tshirt)
let jeans: Product = Product(name: "Jeans 👖", price: 1000)
cart.add(product: jeans)
let shoes: Product = Product(name: "Shoes 👟", price: 1500)
cart.add(product: shoes)

wallet.showBalance()
cart.checkout(using: wallet)
