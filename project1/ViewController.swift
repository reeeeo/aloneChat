import UIKit
import SnapKit

class ViewController: UIViewController {
  private lazy var container: UIView = {
    let label = UITextField()
    let container = UIView()
    container.addSubview(label)
    
    label.text = ""
    label.isEnabled = true
    label.backgroundColor = .lightGray
    label.snp.makeConstraints { make in
      make.width.width.equalTo(UIScreen.main.bounds.width)
      make.height.equalTo(40)
      make.bottom.equalTo(container)
    }
    return container
  }()

  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.addSubview(container)
    container.snp.makeConstraints { make in
      make.edges.equalToSuperview()
    }
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
}

//func onTappedPush(_ sender: UIButton) {
//  print(sender)
//  let vc = SecondViewController(titleName: "second")
//  navigationController?.pushViewController(vc, animated: true)
//}
