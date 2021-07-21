//
//  ViewController.swift
//  PickerView
//
//  Created by Daniel Washington Ignacio on 20/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLAbel: UILabel!
    
    @IBOutlet weak var imageSelected: UIImageView!
    @IBOutlet weak var myPickerView: UIPickerView!
    //picker view precisa de array
    let arrayNames: [String] = ["Floripa", "Lençois Maranhenses", "Campos do jordão", "Rio de Janeiro","Bonito" ]
   // let arrImage: [UIImage?] = [UIImage(named:"Floripa"),UIImage(named:"Lençois Maranhenses"),UIImage(named:"Campos do jordão"),UIImage(named:"Rio de Janeiro"),UIImage(named:"Bonito")]
    
  //  let arrayNames2: [String] = ["1Daniel", "1Chico", "1Ana", "1Pedro","1Antonio" , "1Marcio", "1Igor", "1Igor"]
    
    
    var selectedName: String = ""
    
    var nameSelected: String = ""
    var rowSelected: Int = 0
    var componentSelected: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //interceptar os eventos e popular
        self.myPickerView.delegate = self
        self.myPickerView.dataSource = self
        
        //linha 2, coluna 0
        self.myPickerView.selectRow(2, inComponent: 0, animated: true)

    }

    @IBAction func tappedSelectButton(_ sender: UIButton) {
      //  self.myPickerView.selectRow(rowSelected + 1, inComponent: componentSelected, animated: true)
 
     //   self.titleLAbel.text = "\(nameSelected) button"
        
        
//        self.titleLAbel.text = self.arrayNames[self.myPickerView.selectedRow(inComponent: 0)]
        
        self.titleLAbel.text = self.selectedName
    
    }
  
    
}

//MARK: - UIPickerViewDelegate,UIPickerViewDataSource
extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    
    //numero de colunas
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        //return 2
        return 1
    }
    
    //numero de linhas por coluna
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        if component == 0 {
//            return self.arrayNames.count
//        }
//        else{
//            return self.arrayNames2.count
//        }
            return self.arrayNames.count
    
    }
    
    //texto para a linha
    //component = coluna
    //row = linha
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        if component == 0 {
//            return self.arrayNames[row]
//        }else{
//            return self.arrayNames2[row]
//        }
        return self.arrayNames[row]
    
    }
    
    //para fazer alguma coisa ,quando selecionado
    //não é de dataSource, é de Delegate , então ele é para pegar algum elemento
   func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
//    if component == 0{
//        nameSelected = arrayNames[row]
//        rowSelected = row
//        componentSelected = component
//        self.titleLAbel.text = arrayNames[row]
//    }
//    else{
//        nameSelected = arrayNames2[row]
//        rowSelected = row
//        componentSelected = component
//        self.titleLAbel.text = arrayNames2[row]
//    }
    
    //print("\(nameSelected)")
    //print("\(self.arrayNames[row]) \(component)")
    
    self.selectedName = self.arrayNames[row]
    
    self.titleLAbel.text = self.arrayNames[row]
    
    //self.imageSelected.image = self.arrImage[row]
    self.imageSelected.image = UIImage(named: self.arrayNames[row])
    }
    
    
}



