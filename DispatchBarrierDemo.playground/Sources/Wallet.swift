import Foundation

public class Wallet {
    private(set) var balance: Int

    public init(balance: Int) {
        self.balance = balance
    }

    public func deduct(amount: Int) {
        balance -= amount
    }

    public func hasSufficientBalance(forPurchaseWorth amount: Int) -> Bool {
        return amount <= balance
    }

    public func showBalance() {
        print("Wallet Balance: \(balance)")
    }
}
