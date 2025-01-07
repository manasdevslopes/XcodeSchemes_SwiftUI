//
//  ContentView.swift
//  XcodeSchemes
//
//  Created by MANAS VIJAYWARGIYA on 07/01/25.
//

import SwiftUI

struct ContentView: View {
  var appName: String = EnvironmentConf.appName
  var appBundle: String = EnvironmentConf.appBundle
  var appVersion: String = EnvironmentConf.appVersion
  var appBuild: String = EnvironmentConf.appBuild
  
  var body: some View {
    let _ = print("appName", appName, "appBundle", appBundle, "appVersion", appVersion, "appBuild", appBuild)
    return VStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundStyle(.tint)
      
      Text("App Name -----> \(appName)")
      Text("App Bundle -----> \(appBundle)")
      Text("App Version -----> \(appVersion)")
      Text("App Build -----> \(appBuild)")
    }
    .padding()
  }
}

#Preview {
  ContentView()
}
