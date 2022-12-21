# Common MVC and MVP and VIPER

## A small test project for studying application design architecture: MVC, MVP, VIPER.

### In order to switch the architecture, you need to make changes to the following location (file **SceneDelegate.swift**):
```swift
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        // Was:
        // guard let _ = (scene as? UIWindowScene) else { return }
        // Now:
        
        guard let mainScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: mainScene)
        
        // MVC
        window.rootViewController = ViewControllerMVC()
        
        // MVP
        window.rootViewController = ModuleBuilderMVP.build()
        
        // VIPER
        window.rootViewController = ModuleBuilderVIPER.build()
        window.makeKeyAndVisible()
        
        self.window = window
        
    }
```
