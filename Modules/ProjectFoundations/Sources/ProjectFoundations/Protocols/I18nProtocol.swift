import Foundation

public protocol I18nProtocol {
    var text: String { get }

    func text(with complement: String...) -> String
}
