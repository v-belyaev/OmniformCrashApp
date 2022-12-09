import UIKit

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {

  var window: UIWindow?

  func scene(
    _ scene: UIScene,
    willConnectTo session: UISceneSession,
    options connectionOptions: UIScene.ConnectionOptions
  ) {
    guard let windowScene = (scene as? UIWindowScene)
    else { return }

    let rootViewController = ViewController()

    let window = UIWindow(windowScene: windowScene)
    window.rootViewController = rootViewController
    window.overrideUserInterfaceStyle = .dark
    window.makeKeyAndVisible()

    self.window = window
  }
}
