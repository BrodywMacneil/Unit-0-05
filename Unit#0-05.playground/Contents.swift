
// Created on: Sept , 2018
// Created by: Brody MacNeil
// Created for: ICS3U
// This program is the UIKit solution for the "Name City Country" to appear when you hit the click me 
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let questionLabel : UILabel = UILabel()
    let areaLabel : UILabel = UILabel()
    let permLabel : UILabel = UILabel()
    let answerButton = UIButton()
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        questionLabel.text = "What is the area and perimeter of a 5 by 3 rectangle."
        questionLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(questionLabel)
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        questionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        questionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant : 20).isActive = true
        
        areaLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(areaLabel)
        areaLabel.translatesAutoresizingMaskIntoConstraints = false
        areaLabel.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 20).isActive = true
        areaLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        permLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(permLabel)
        permLabel.translatesAutoresizingMaskIntoConstraints = false
        permLabel.topAnchor.constraint(equalTo: areaLabel.bottomAnchor, constant: 20).isActive = true
        permLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        answerButton.setTitle("answer ", for: UIControlState.normal);
        answerButton.setTitleColor(.blue, for: .normal);
        answerButton.addTarget(self, action: #selector(showText), for: .touchUpInside);
        view.addSubview(answerButton);
        answerButton.translatesAutoresizingMaskIntoConstraints = false
        answerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        answerButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive =
        true
    }
    @objc func showText() {
        // show E
        areaLabel.text = "5*3=\(5*3)"
        permLabel.text = "5*2+3*2=\(5*2+3*2)"
        
        
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode

PlaygroundPage.current.liveView = ViewController()
