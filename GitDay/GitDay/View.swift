import UIKit

class View: UIView {
    private let nameLabel: UILabel = UILabel()
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
        nameLabel.text = "Conflito iminente"
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(nameLabel)

        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 60),
            nameLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 30)
        ])
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
