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
    
    private lazy var nameTextField = TextFieldCustom(textPlaceholder: "ex: Joana", hidePassword: false)
    
    private lazy var emailTextField = TextFieldCustom(textPlaceholder: "ex: joana@gmail.com", hidePassword: false)
    
    private lazy var passwordTextField = TextFieldCustom(textPlaceholder: "ex: 123@45", hidePassword: true)
    
    
    private lazy var registerButton: UIButton = {
        let button = UIButton()
        button.setTitle("Cadastre-se", for: .normal)
        button.setTitleColor(.white.withAlphaComponent(0.4), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.2126274407, green: 0.525538981, blue: 0.939663887, alpha: 1)
        button.layer.cornerRadius = 8
        button.isEnabled = false
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleRegister), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        commonInit()
        
        nameTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self
    
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
    
    @objc func handleRegister() {
        print("ok")
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
        
        titleScreenLabel.makeConstraint {
            $0.top(reference: view.safeTop, padding: 16)
            $0.centerX(reference: view.centerX)
        }
        
        writeNameLabel.makeConstraint {
            $0.top(reference: titleScreenLabel.bottom, padding: 14)
            $0.leading(reference: view.safeLeading, padding: 20)
        }
        
        writeEmailLabel.makeConstraint {
            $0.top(reference: nameTextField.bottom, padding: 14)
            $0.leading(reference: view.safeLeading, padding: 20)
            $0.trailing(reference: view.safeTrailing, padding: -20)
        }
        
        writePasswordLabel.makeConstraint {
            $0.top(reference: emailTextField.bottom, padding: 14)
            $0.leading(reference: view.safeLeading, padding: 20)
            $0.trailing(reference: view.safeTrailing, padding: -20)
        }
        
        nameTextField.makeConstraint {
            $0.top(reference: writeNameLabel.bottom, padding: 14)
            $0.leading(reference: view.safeLeading, padding: 20)
            $0.trailing(reference: view.safeTrailing, padding: -20)
            $0.height(30)
        }
        
        emailTextField.makeConstraint {
            $0.top(reference: writeEmailLabel.bottom, padding: 14)
            $0.leading(reference: view.safeLeading, padding: 20)
            $0.trailing(reference: view.safeTrailing, padding: -20)
            $0.height(30)
        }
        
        passwordTextField.makeConstraint {
            $0.top(reference: writePasswordLabel.bottom, padding: 14)
            $0.leading(reference: view.safeLeading, padding: 20)
            $0.trailing(reference: view.safeTrailing, padding: -20)
            $0.height(30)
        }
        
        registerButton.makeConstraint {
            $0.top(reference: passwordTextField.bottom, padding: 14)
            $0.leading(reference: view.safeLeading, padding: 20)
            $0.trailing(reference: view.safeTrailing, padding: -20)
            $0.height(30)
        }
    }
    
    private func configureStyle() {
        view.backgroundColor = .white
    }
}

extension RegisterViewController: TextFieldCustomDelegate {
    func textFieldDidChangeSelection(_ textField: UITextField) {
        validateTextField()
    }
}
