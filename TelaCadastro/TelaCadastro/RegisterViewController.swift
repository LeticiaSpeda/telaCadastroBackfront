import UIKit

final class RegisterViewController: UIViewController {
    
    private lazy var titleScreenLabel: UILabel = {
        let label = UILabel()
        label.text = "Cadastre-se!"
        label.font = UIFont.systemFont(ofSize: 26, weight: .bold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var writeNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Digite seu nome:"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var writeEmailLabel: UILabel = {
        let label = UILabel()
        label.text = "Digite seu email:"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var nameTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "ex: Joana"
        tf.textColor = .gray
        tf.layer.borderWidth = 1
        tf.layer.borderColor = UIColor.gray.cgColor
        tf.layer.cornerRadius = 8
        tf.translatesAutoresizingMaskIntoConstraints =  false
        return tf
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        commonInit()
    }
    
    private func commonInit() {
        configureHierarchy()
        configureConstraints()
        configureStyle()
    }
    
    private func configureHierarchy() {
        view.addSubview(titleScreenLabel)
        view.addSubview(writeNameLabel)
        view.addSubview(nameTextField)
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            titleScreenLabel.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor,
                constant: 16
            ),
            titleScreenLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            writeNameLabel.topAnchor.constraint(
                equalTo: titleScreenLabel.bottomAnchor,
                constant: 14
            ),
            writeNameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            
            nameTextField.topAnchor.constraint(
                equalTo: writeNameLabel.bottomAnchor,
                constant: 14
            ),
            nameTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            
            nameTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            nameTextField.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    private func configureStyle() {
        view.backgroundColor = .white
    }
}

