import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //ios need modify Info.plist
    //<key>NSCameraUsageDescription</key>
    //<string>cameraDesciption</string>
    
    let captureSession = AVCaptureSession()
    var previewLayer : AVCaptureVideoPreviewLayer?
    
    // If we find a device we'll store it here for later use
    var captureDevice : AVCaptureDevice?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        captureSession.sessionPreset = AVCaptureSessionPresetHigh
        
        let devices = AVCaptureDevice.devices()
        
        // Loop through all the capture devices on this phone
        for device in devices! {
            // Make sure this particular device supports video
            if (device.hasMediaType(AVMediaTypeVideo)) {
                // Finally check the position and confirm we've got the back camera
                if(device.position == AVCaptureDevicePosition.back) {
                    captureDevice = device as? AVCaptureDevice
                    if captureDevice != nil {
                        print("Capture device found")
                        beginSession()
                    }
                }
            }
        }
    }
    
    func beginSession() {
        
        do {
            let input : AVCaptureDeviceInput = try AVCaptureDeviceInput(device: captureDevice)
            if captureSession.canAddInput(input) {
                captureSession.addInput(input)
            }
        }
        catch {
        }
        
        previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        //full screen
        previewLayer?.videoGravity = AVLayerVideoGravityResizeAspectFill
        self.view.layer.addSublayer(previewLayer!)
        previewLayer?.frame = self.view.layer.frame
        captureSession.startRunning()
    }
    
    override func prefersStatusBarHidden() -> Bool {
        //remove status bar
        return true
    }
}