//
//  SettingsSection.swift
//  IoTAware
//
//  Created by Bradley Clemson on 22/07/2020.
//  Copyright © 2020 Bradley Clemson. All rights reserved.
//

protocol SectionType: CustomStringConvertible {
    var containsSWitch: Bool { get }
}

enum SettingsSection: Int, CaseIterable, CustomStringConvertible {
    case Social
    case Communications
    case Info
    
    var description: String {
        switch self {
        case .Social: return "IoT Device 0628"
        case .Communications: return "Privacy Control"
        case .Info: return "*Blurs your face before it is stored or used"
        }
    }
}

enum SocialOptions: Int, CaseIterable, SectionType {
    case editProfile
    case logout
    
    var containsSWitch: Bool { return false }
    
    var description: String {
         switch self {
         case .editProfile: return "Type: Camera"
         case .logout: return "Technology: Facial Recognition"
         }
    }
}

enum InfoOptions: Int, CaseIterable, SectionType {
    case info
    
    var containsSWitch: Bool { return false }
    
    var description: String {
         switch self {
         case .info: return "*Blurs your face before it is stored or used"
         }
    }
}


enum CommunicationOptions: Int, CaseIterable, SectionType {
    case obscureFace
    case saveForNextTime
    case saveForSimilar
    
    var containsSWitch: Bool {
        switch self {
        case .obscureFace: return true
        case .saveForNextTime: return true
        case .saveForSimilar: return true
        }
    }
    
    var description: String {
        switch self {
        case .obscureFace: return "Obscure My Face*"
        case .saveForNextTime: return "Save For This Device"
        case .saveForSimilar: return "Save For Similar Devices"
            }
    }
}
    
