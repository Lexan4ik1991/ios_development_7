//
//  ThemeSaver.swift
//  Vkapp2
//
//  Created by 123 on 02.09.2023.
//

import Foundation

final class ThemeSaver{
    static func putData(){
        let theme = Theme.currentTheme.backgroundColor
        UserDefaults.standard.set(Theme.rawValue, forKey: Constants.Others.themeIdentifier)
    }
    static func getData(){
        let theme = UserDefaults.standard.string(forKey: Constants.Others.themeIdentifier)
        let themeType = AllAppTheme(rawValue: theme ?? "white")
        switch themeType{
        case .white: Theme.currentTheme = WhiteTheme()
        case .blue: Theme.currentTheme = BlueTheme()
        case .green: Theme.currentTheme = GreenTheme()
        default: Theme.currentTheme = WhiteTheme()
        }
        
    }
}
