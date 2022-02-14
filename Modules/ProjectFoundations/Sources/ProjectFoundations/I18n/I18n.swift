import Foundation

public class I18n {
    public enum General: String, I18nProtocol {
        case yes
        case no
        case ok

        public var text: String {
            return NSLocalizedString(self.rawValue, comment: "")
        }

        public func text(with complement: String...) -> String {
            String(format: NSLocalizedString(self.text, comment: "%@"), arguments: complement)
        }
    }
}
