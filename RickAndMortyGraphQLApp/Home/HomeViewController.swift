import Foundation
import UIKit

class HomeViewController: UIViewController {
    let titleLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "HomePage"
        view.font = .boldSystemFont(ofSize: 30)
        return view
    } ()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        setUpConstrains()
        let service = RickAndMortyServiceIml()
        service.fetchAllcharacters()
        
    }

    private func setUpConstrains() {
        // constrains here
        setUpTitleLabel()
    }

    private func setUpTitleLabel () {
        view.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100)
        ])
    }
}
