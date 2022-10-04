import UIKit

class View: UIView {

    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Title", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundColor = .blue
        
        configView()
        setupConstraints()
    }
    
    private func configView() {
        addSubview(button)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 48)
        ])
    }
}
