import UIKit
import Omniform
import OmniformUI

final class ViewController: UIViewController {
  // MARK: - Subviews

  private lazy var label: UILabel = UILabel(
    frame: .zero
  )

  // MARK: - init/deinit

  init() {
    super.init(nibName: nil, bundle: nil)
  }

  @available(*, unavailable)
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: - VC Lifecycle

  override func viewDidLoad() {
    super.viewDidLoad()

    label.text = "Круто? Круто!"
    label.textColor = UIColor.label
    label.textAlignment = NSTextAlignment.center

    view.addSubview(label)
  }

  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()

    label.frame = CGRect(
      x: view.safeAreaLayoutGuide.layoutFrame.minX,
      y: view.bounds.midY - 50,
      width: view.safeAreaLayoutGuide.layoutFrame.width,
      height: 100
    )
  }
}
