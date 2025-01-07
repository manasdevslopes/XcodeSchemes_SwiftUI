//
//  EnvironmentConf.swift
//  XcodeSchemes Apple
//
//  Created by MANAS VIJAYWARGIYA on 07/01/25.
//

import Foundation

public enum EnvironmentConf {
  
  enum Plist {
    static let appName = "CFBundleDisplayName" // Key - Bundle display name
    static let appBundle = "CFBundleIdentifier" // Key - Bundle identifier
    static let appVersion = "CFBundleShortVersionString" // Key - Bundle version string (short)
    static let appBuild = "CFBundleVersion" // Key - Bundle version
  }
  
  // MARK: - Plist
  private static let infoDictionary: [String: Any] = {
    guard let dict = Bundle.main.infoDictionary else {
      fatalError("Plist file not found")
    }
    return dict
  }()
}

extension EnvironmentConf {
  // MARK: - Plist values
  static let appName: String = {
    guard let appName = EnvironmentConf.infoDictionary[Plist.appName] as? String else {
      fatalError("App name not set in Plist for this environment")
    }
    return appName
  }()
  
  static let appBundle: String = {
    guard let appBundle = EnvironmentConf.infoDictionary[Plist.appBundle] as? String else {
      fatalError("App bundle not set in Plist for this environment")
    }
    return appBundle
  }()
  
  static let appVersion: String = {
    guard let appVersion = EnvironmentConf.infoDictionary[Plist.appVersion] as? String else {
      fatalError("App version not set in Plist for this environment")
    }
    return appVersion
  }()
  
  static let appBuild: String = {
    guard let appBuild = EnvironmentConf.infoDictionary[Plist.appBuild] as? String else {
      fatalError("App build not set in Plist for this environment")
    }
    return appBuild
  }()
}
