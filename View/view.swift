import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let view = UIView(frame: UIScreen.main().bounds)
        let view2 = UIView(frame: UIScreen.main().bounds)
        let view3 = UIView(frame: UIScreen.main().bounds)
        view.backgroundColor = UIColor.red()
        view2.backgroundColor = UIColor.yellow()
        view3.backgroundColor = UIColor.blue()
        
        //新增view, 到最上層
        self.view.addSubview(view)
        self.view.addSubview(view2)
        
        //移到最下層
        self.view.sendSubview(toBack: view)
        
        //移到最上層
        self.view.bringSubview(toFront: view)
        
        //移到第99層
        self.view.insertSubview(view3, at: 99)
        
        //移到view2下層
        self.view.insertSubview(view, belowSubview: view2)
        
        //移到view2上層
        self.view.insertSubview(view, aboveSubview: view2)
        
        //刪除view
        view.removeFromSuperview()
    }
}