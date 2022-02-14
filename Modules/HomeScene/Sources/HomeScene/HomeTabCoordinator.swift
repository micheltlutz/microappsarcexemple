import UIKit
import ProjectUI

protocol HomeTabSceneNavigationDelegate: AnyObject {
}

final class HomeTabCoordinator: BaseCoordinator, TabItemCoordinator {
    var navigationController = UINavigationController()
    private weak var navigationDelegate: HomeTabSceneNavigationDelegate?

    override init() {
        super.init()
        navigationDelegate = self
    }

    override func start() {
        navigationController.pushViewController(HomeViewController(), animated: true)
    }
}

// MARK: - HomeTabSceneNavigationDelegate

extension HomeTabCoordinator: HomeTabSceneNavigationDelegate {

}
