import Foundation

public class Cart {
    private var products: [Product]

    private let checkoutQueue: DispatchQueue = DispatchQueue(
        label: "com.gcd.checkoutExample",
        attributes: .concurrent
    )

    public init() {
        products = []
    }

    public func add(product: Product) {
        products.append(product)
    }

    public func checkout(using wallet: Wallet) {
        products.forEach { product in
            checkoutQueue.async(flags: .barrier) {
                self.purchase(product: product, using: wallet)
            }
        }
    }
    
    private func purchase(product: Product, using wallet: Wallet) {
        print("Purchasing \(product.name)")
        guard wallet.hasSufficientBalance(forPurchaseWorth: product.price) else {
            print("Insufficient Balance! Add balance into the wallet to purchase \(product.name)")
            return
        }
        sleep(UInt32.random(in: 1...3))
        wallet.deduct(amount: product.price)
        wallet.showBalance()
    }
}
