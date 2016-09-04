import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        setUpAppForTesting()
        
        return true
    }
    
    func setUpAppForTesting() {
        
        var arguments = NSProcessInfo.processInfo().arguments
        arguments.removeFirst()
        print("App launching with the following arguments: \(arguments)")
        
        let appDelegate = UIApplication.sharedApplication().delegate
        let vc = appDelegate!.window!?.rootViewController as! ViewController
        
        for argument in arguments {
            if argument == "ReplaceValue" {
                vc.fruitsArray = ["🍎", "🍊"]
                UIView.setAnimationsEnabled(false)
            }
        }
        
    }
    
}
