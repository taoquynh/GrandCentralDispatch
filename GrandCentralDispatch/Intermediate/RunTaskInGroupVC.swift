import UIKit
import Foundation
class RunTaskInGroupVC: UIViewController {
 
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var progress1: UIProgressView!
    @IBOutlet weak var progress2: UIProgressView!
    @IBOutlet weak var progress3: UIProgressView!
    
    let group = DispatchGroup()
    let queue = DispatchQueue.global(qos: .background)

    @IBAction func Start3Tasks(_ sender: Any) {
        /// Tác vụ 1
        queue.async {
            self.group.enter()
            for i in 1...100 {
                DispatchQueue.main.async {
                    self.progress1.progress = Float(i) / 100.0
                }
                Thread.sleep(forTimeInterval: 0.1)
            }
            self.group.leave()
        }
        
        /// Tác vụ 2
        queue.async {
            self.group.enter()
            for i in 1...50 {
                DispatchQueue.main.async {
                    self.progress2.progress = Float(i) / 50.0
                }
                Thread.sleep(forTimeInterval: 0.2)
            }
            self.group.leave()
           
        }
        
        /// Tác vụ 3
        queue.async(group: group, execute: DispatchWorkItem(block: {
            for i in 1...100 {
                DispatchQueue.main.async {
                    self.progress3.progress = Float(i) / 100.0
                }
                Thread.sleep(forTimeInterval: 0.25)
            }
        }))
        
        group.notify(queue: .main) {
            self.label.text = "Done"
        }
    }
    

    

}
