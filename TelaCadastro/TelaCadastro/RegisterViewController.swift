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
    
    private lazy var writePasswordLabel: UILabel = {
        let label = UILabel()
        label.text = "Digite sua senha:"
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
    
    private lazy var emailTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "ex: joana@gmail.com"
        tf.textColor = .gray
        tf.layer.borderWidth = 1
        tf.layer.borderColor = UIColor.gray.cgColor
        tf.layer.cornerRadius = 8
        tf.translatesAutoresizingMaskIntoConstraints =  false
        return tf
    }()
    
    private lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "ex: 123@45"
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
        view.addSubview(writeEmailLabel)
        view.addSubview(writePasswordLabel)
        view.addSubview(nameTextField)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        
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
            writeNameLabel.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                constant: 20
            ),
            
            writeEmailLabel.topAnchor.constraint(
                equalTo: nameTextField.bottomAnchor,
                constant: 14
            ),
            writeEmailLabel.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                constant: 20),
            
            writeEmailLabel.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor,
                constant: -20
            ),
            
            writePasswordLabel.topAnchor.constraint(
                equalTo: emailTextField.bottomAnchor,
                constant: 14
            ),
            writePasswordLabel.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                constant: 20),
            
            writePasswordLabel.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor,
                constant: -20
            ),
            
            nameTextField.topAnchor.constraint(
                equalTo: writeNameLabel.bottomAnchor,
                constant: 14
            ),
            nameTextField.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                constant: 20
            ),
            
            nameTextField.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor,
                constant: -20
            ),
            
            nameTextField.heightAnchor.constraint(equalToConstant: 30),
            
            emailTextField.topAnchor.constraint(
                equalTo: writeEmailLabel.bottomAnchor,
                constant: 14
            ),
            emailTextField.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                constant: 20
            ),
            
            emailTextField.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor,
                constant: -20
            ),
            
            emailTextField.heightAnchor.constraint(equalToConstant: 30),
            
            passwordTextField.topAnchor.constraint(
                equalTo: writePasswordLabel.bottomAnchor,
                constant: 14
            ),
            passwordTextField.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                constant: 20
            ),
            
            passwordTextField.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor,
                constant: -20
            ),
            
            passwordTextField.heightAnchor.constraint(equalToConstant: 30),
            
        ])
    }
    
    private func configureStyle() {
        view.backgroundColor = .white
    }
}

