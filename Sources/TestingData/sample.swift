//import UIKit
import Foundation
class UIViewController: NSObject {}
class UIButton: NSObject {}
let a = 1
class AAAAAAAAAAA: UIViewController {
    @IBOutlet open weak var btn1: UIButton!
    @IBOutlet final public weak var btn2: UIButton!
    @IBOutlet final internal weak var btn3: UIButton!
    @IBOutlet final fileprivate weak var btn4: UIButton!
    @IBOutlet final private weak var btn5: UIButton!
    @IBOutlet private final var btn6: UIButton!
    @IBAction private final func numberKeyIn(_ sender: UIButton) {}
    func test() {
        let `default` = 1
        let (aa, bb) = (1, 2)
        let aabb = aa + bb
        let ss: Int? = nil

        let abcdef: (Int) -> Int = { [weak abcdefP1 = self, weak abcdefP2 = self] i in
            return i
        }

        let abcdefg: (String, String, String) -> String = { [weak self] (str, _, str2: String) in
            return str
        }

        if let ccccc = ss, let ccccc1 = ss {
            print(ccccc)
        }

        guard let dd = ss, let dd2 = ss else {
            return
        }

        do {
            try self.error()
            let a = AAAAAAAAAAA()
        } catch {
            print(error)
        }
    }

    func error() throws {
    }
}
