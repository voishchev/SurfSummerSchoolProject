//
//  TabBarModel.swift
//  SurfSummerSchoolProject
//
//  Created by Sergei Voishchev on 03.08.2022.
//

import Foundation
import UIKit

enum TabBarModel {
    case main
    case favorite
    case profile
    
    var title: String {
        switch self {
        case .main:
                return "Главная"
        case .favorite:
                return "Избранное"
        case .profile:
                return "Профиль"
        }
    }
    
    var image: UIImage? {
        switch self {
        case .main:
            return UIImage(named: "mainIcon")
        case .favorite:
            return UIImage(named: "favoriteIcon")
        case .profile:
            return UIImage(named: "profileIcon")
        }
    }
    
    // the same as image
    var selectedImage: UIImage? {
        return image
    }
}
