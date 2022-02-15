import UIKit
import ProjectUI

public protocol SettingsSceneNavigationDelegate: AnyObject {
    func shouldOpenSettingsSecondScreen()
}

public final class SettingsTabCoordinator: BaseCoordinator, TabItemCoordinator {
    public var navigationController = UINavigationController()
    /*
     Neste caso desativei o linter pois não temos neste exemplo uma amarração do delegate,
     que seria uma classe externa a este coordinator, como por exemplo um Router
     */
    // swiftlint:disable weak_delegate
    private var navigationDelegate: SettingsSceneNavigationDelegate?

    // MARK: - Initialization

    public override init() {
        super.init()

        navigationDelegate = self
    }

    // MARK: - Functions

    public override func start() {
        let viewModel = SettingsViewModel(navigationDelegate: navigationDelegate)

        navigationController.pushViewController(SettingsViewController(viewModel: viewModel), animated: true)
    }
}

// MARK: - SettingsTabSceneNavigationDelegate

extension SettingsTabCoordinator: SettingsSceneNavigationDelegate {
    public func shouldOpenSettingsSecondScreen() {
        navigationController.pushViewController(SettingsSecondViewController(), animated: true)
    }
}
