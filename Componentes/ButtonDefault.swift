//
//  ButtonDefault.swift
//  CriandoTelas
//
//  Created by Marcela Menezes Silva on 25/05/22.
//

import Foundation
import UIKit

class ButtonDefault: UIButton {
    init(title: String) {
        super.init(frame: .zero)
        
        // Criei 2 extensoes para pegar cor
        // UIColor.hexColor(hex: "#29B06D")
        // "#29B06D".color
        
        initDefault(title: title, backgroundColor: .white)
    }
    
    init(title: String, target: Any?, action: Selector, for controlEvents: UIControl.Event) {
        super.init(frame: .zero)
        
        initDefault(title: title, backgroundColor: .white)
        self.addTarget(target, action: action, for: controlEvents)
    }
    
    init(title: String, backgroundColor: UIColor) {
        super.init(frame: .zero)
        
        initDefault(title: title, backgroundColor: backgroundColor)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(title: String, backgroundColor: UIColor) {
        self.setTitle(title, for: .normal)
        self.backgroundColor = backgroundColor
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.cornerRadius = 10
    }
}

class ButtonDefaultt: UIButton {
    init(title: String) {
        super.init(frame: .zero)
        
        // Criei 2 extensoes para pegar cor
        // UIColor.hexColor(hex: "#29B06D")
        // "#29B06D".color
        
        initDefault(title: title, whitegroundColor: .white)
    }
    
    init(title: String, target: Any?, action: Selector, for controlEvents: UIControl.Event) {
        super.init(frame: .zero)
        
        initDefault(title: title, whitegroundColor: .systemPurple)
        self.addTarget(target, action: action, for: controlEvents)
    }
    
    init(title: String, whitegroundColor: UIColor) {
        super.init(frame: .zero)
        
        initDefault(title: title, whitegroundColor: whitegroundColor)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(title: String, whitegroundColor: UIColor) {
        self.setTitle(title, for: .normal)
        self.backgroundColor = whitegroundColor
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}

