import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //add button
        let button = UIButton()
        button.setTitle("Start", for: [])
        button.setTitleColor(UIColor.gray(), for: [])
        button.backgroundColor = UIColor.black()
        button.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        button.addTarget(self, action: #selector(startButtonPressed), for: UIControlEvents.touchUpInside)
        self.view.addSubview(button)
    }
    
    func startButtonPressed(sender: UIButton) {
        print("start button pressed")
    }
}