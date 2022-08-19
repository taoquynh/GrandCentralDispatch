import UIKit

class SleepVC: UIViewController {
    
    var a: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func abcd(completed: ((String) -> Void)) {
        /// CAll API 5 phust trar ve
        sleep(5)
        
        completed("Response")
    }
    
    @IBAction func gotoSleep5Seconds(_ sender: Any) {
        sleep(5)
    }
    
    
    /**
     func simpleSerialQueue() {
         let serialQueue = DispatchQueue(label: "demo.serial.queue")
         for i in  1...5 {
             serialQueue.async {
                 print("Task \(i): Thread \(Thread.current)")
                 sleep(1)
             }
 //            serialQueue.sync {
 //                print("Task \(i): Thread \(Thread.current)")
 //                sleep(1)
 //            }
         }
         /// -----
         print("Completed - \(Thread.current)")
     }
     
     func simpleConcurrentQueue() {
         let serialQueue = DispatchQueue(label: "demo.serial.queue", attributes: .concurrent)
         for i in  1...10 {
             serialQueue.async {
                 print("Task \(i): Thread \(Thread.current)")
                 sleep(5)
             }
 //            serialQueue.sync {
 //                print("Task \(i): Thread \(Thread.current)")
 //                sleep(5)
 //            }
         }
         print("Completed - \(Thread.current)")
     }
     */

}
