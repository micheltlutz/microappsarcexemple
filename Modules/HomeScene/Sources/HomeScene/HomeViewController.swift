import UIKit
import ProjectFoundations

class HomeViewController: UIViewController {
    // MARK: - Properties

    static var titleTabBarItem: String = {
        return I18n.Home.title.text
    }()

    // MARK: - Initialization
    
    init() {
        super.init(nibName: nil, bundle: nil)

        setupNavigationInfo()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
    }

    // MARK: - Functions

    /**
     Challenge: Adding images in a centralized file in the project.
     Open a pull request
     */
    private func setupNavigationInfo() {
        let tabSessionBarItem = UITabBarItem(title: HomeViewController.titleTabBarItem,
                                             image: UIImage(systemName: "house"),
                                             selectedImage: UIImage(systemName: "house.fill"))
        tabBarItem = tabSessionBarItem
        title = HomeViewController.titleTabBarItem
    }
}