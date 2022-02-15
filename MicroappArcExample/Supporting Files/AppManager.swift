import UIKit

final class AppManager: NSObject {
    private let window: UIWindow

    private lazy var rootViewController: UINavigationController = {
        let navigationController = UINavigationController()

        return navigationController
    }()

    // MARK: - Initialization

    init(window: UIWindow) {
        self.window = window

        super.init()

        self.window.rootViewController = rootViewController
        self.window.makeKeyAndVisible()
    }

    // MARK: - Functions

    func start() {
        startMainCoordinator()
    }

    private func startMainCoordinator() {
        let mainCoordinator = MainCoordinator()
        mainCoordinator.start()

        self.window.rootViewController = mainCoordinator.tabController
    }
}
