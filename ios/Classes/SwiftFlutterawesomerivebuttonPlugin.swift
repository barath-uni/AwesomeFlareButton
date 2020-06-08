import Flutter
import UIKit

public class SwiftFlutterawesomerivebuttonPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutterawesomerivebutton", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterawesomerivebuttonPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
