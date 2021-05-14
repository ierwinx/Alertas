import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultadoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func alerta1Action(_ sender: Any) {
        let alerta = UIAlertController(title: "Titulo de la alerta", message: "Mensaje extra opcional", preferredStyle: .alert)
        
        let si = UIAlertAction(title: "Si", style: .default) { accion in
            self.resultadoLabel.text = "Seleccionaste Si"
        }
        let no = UIAlertAction(title: "No", style: .default) { accion in
            self.resultadoLabel.text = "Seleccionaste No"
        }
        alerta.addAction(si)
        alerta.addAction(no)
        alerta.addAction(UIAlertAction(title: "Cancelar", style: .destructive, handler: nil))
        
        present(alerta, animated: true, completion: nil)
    }
    
    @IBAction func alerta2Action(_ sender: Any) {
        let alerta = UIAlertController(title: "Titulo de la alerta", message: "Mensaje extra opcional", preferredStyle: .alert)
        
        //Boton con textField
        let guardarButton = UIAlertAction(title: "Agregar", style: .default) { accion in
            guard let textField1 = alerta.textFields?.first, let texto = textField1.text else {
                return
            }
            self.resultadoLabel.text = "Escribiste \(texto)"
        }
        alerta.view.tintColor = UIColor.purple
        alerta.addTextField { textField in
            textField.placeholder = "Escribe una marca de carro"
        }
        
        let no = UIAlertAction(title: "No", style: .default) { accion in
            self.resultadoLabel.text = "Seleccionaste No"
        }
        alerta.addAction(guardarButton)
        alerta.addAction(no)
        alerta.addAction(UIAlertAction(title: "Cancelar", style: .destructive, handler: nil))
        
        present(alerta, animated: true, completion: nil)
    }
    
    @IBAction func alerta3Action(_ sender: Any) {
        let alerta = UIAlertController(title: "Titulo de la alerta", message: nil, preferredStyle: .actionSheet)
        
        let si = UIAlertAction(title: "Si", style: .default) { accion in
            self.resultadoLabel.text = "Seleccionaste Si"
        }
        let no = UIAlertAction(title: "No", style: .default) { accion in
            self.resultadoLabel.text = "Seleccionaste No"
        }
        alerta.addAction(si)
        alerta.addAction(no)
        alerta.addAction(UIAlertAction(title: "Cancelar", style: .destructive, handler: { accion in
            self.resultadoLabel.text = "Seleccionaste Cancelar"
        }))
        
        present(alerta, animated: true, completion: nil)
    }
    
}
