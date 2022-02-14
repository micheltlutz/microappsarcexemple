import UIKit
import ProjectUI

public protocol SettingsSceneNavigationDelegate: AnyObject {
    func shouldOpenSettingsSecondScreen()
}

final class SettingsTabCoordinator: BaseCoordinator, TabItemCoordinator {
    var navigationController = UINavigationController()
    /*
     Neste caso desativei o linter pois não temos neste exemplo uma amarração do delegate,
     que seria uma classe externa a este coordinator, como por exemplo um Router
     */
    // swiftlint:disable weak_delegate
    private var navigationDelegate: SettingsSceneNavigationDelegate?

    override init() {
        super.init()

        navigationDelegate = self
    }

    override func start() {
        let viewModel = SettingsViewModel(navigationDelegate: navigationDelegate)

        navigationController.pushViewController(SettingsViewController(viewModel: viewModel), animated: true)
    }
}

// MARK: - SettingsTabSceneNavigationDelegate

extension SettingsTabCoordinator: SettingsSceneNavigationDelegate {
    func shouldOpenSettingsSecondScreen() {
        navigationController.pushViewController(SettingsSecondViewController(), animated: true)
    }
}
