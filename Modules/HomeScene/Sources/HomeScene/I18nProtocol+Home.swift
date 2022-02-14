import Foundation
import ProjectFoundations

extension I18n {
    public enum Home: String, I18nProtocol {
        case title = "home"

        public var text: String {
            return NSLocalizedString(self.rawValue, comment: "")
        }

        public func text(with complement: String...) -> String {
            String(format: NSLocalizedString(self.text, comment: "%@"), arguments: complement)
        }
    }
}
