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
    
    private lazy var writeNameLabel = UILabelCustom(title: "Digite seu nome:")
    
    private lazy var writeEmailLabel = UILabelCustom(title: "Digite seu email:")
    
    private lazy var writePasswordLabel = UILabelCustom(title: "Digite sua senha:")
    
    
    private lazy var nameTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "ex: Joana"
        tf.textColor = .gray
        tf.layer.borderWidth = 1
        tf.layer.borderColor = UIColor.gray.cgColor
        tf.layer.cornerRadius = 8
        tf.delegate = self
        tf.addLeftPadding()
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
        tf.keyboardType = .emailAddress
        tf.delegate = self
        tf.addLeftPadding()
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
        tf.isSecureTextEntry = true
        tf.delegate = self
        tf.addLeftPadding()
        tf.translatesAutoresizingMaskIntoConstraints =  false
        return tf
    }()
    
    private lazy var registerButton: UIButton = {
        let button = UIButton()
        button.setTitle("Cadastre-se", for: .normal)
        button.setTitleColor(.white.withAlphaComponent(0.4), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.2126274407, green: 0.525538981, blue: 0.939663887, alpha: 1)
        button.layer.cornerRadius = 8
        button.isEnabled = false
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        commonInit()
    }
    
    func validateTextField() {
        if nameTextField.text != "" && emailTextField.text != "" && passwordTextField.text != "" {
            
            registerButton.isEnabled = true
            registerButton.setTitleColor(.white, for: .normal)
            
        } else {
            registerButton.isEnabled = false
            registerButton.setTitleColor(.white.withAlphaComponent(0.4), for: .disabled)
        }
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
        view.addSubview(registerButton)
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
            
            registerButton.topAnchor.constraint(
                equalTo: passwordTextField.bottomAnchor,
                constant: 14
            ),
            registerButton.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                constant: 20
            ),
            
            registerButton.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor,
                constant: -20
            ),
            
            registerButton.heightAnchor.constraint(equalToConstant: 30),
            
        ])
    }
    
    private func configureStyle() {
        view.backgroundColor = .white
    }
}

extension RegisterViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderColor = #colorLiteral(red: 0.2090068758, green: 0.5254446864, blue: 0.9720764756, alpha: 1)
        textField.layer.borderWidth = 1.5
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.gray.cgColor
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        validateTextField()
    }
    
}

extension UITextField {
    func addLeftPadding(size: Double = 10) {
        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: size, height: frame.height))
        leftViewMode = .always
        leftView = leftPaddingView
    }
}
