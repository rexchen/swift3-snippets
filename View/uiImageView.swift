import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //set background color
        self.view.backgroundColor = UIColor.red()
        
        //set background image
        let backgroundImage = UIImageView()
        backgroundImage.frame = UIScreen.main().bounds
        backgroundImage.image = UIImage(named: "galaxy.png")
        backgroundImage.contentMode = UIViewContentMode.scaleAspectFill
        self.view.addSubview(backgroundImage)
    }
}