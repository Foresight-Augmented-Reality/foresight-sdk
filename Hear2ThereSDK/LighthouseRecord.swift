/*
Copyright (c) 2024 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation

public class LighthouseRecord : Codable, Identifiable {
    public var id: ObjectIdentifier {
           // Create a unique ObjectIdentifier based on the idLh string
        return ObjectIdentifier(self);
    }
    public let idLh: String?
    public let latitude : String?
    public let longitude : String?
    public let idLighthouse : String?
    public let idCommunityPartner : String?
    public let uniqueId : String?
    public let locationName : String?
    public let manufacturer : String?
    public let model : String?
    public let nID : String?
    public let bID : String?
    public let beaconType : String?
    public let uWBId : String?
    public let mNID : String?
    public let mBID : String?
    public let uUID : String?
    public let major : String?
    public let minor : String?
    public let lat : String?
    public let lon : String?
    public let foursquareID : String?
    public let locuID : String?
    public let hasMenu : String?
    public let mountingLocation : String?
    public let pathDirection : String?
    public let relativeLocation : String?
    public let address1 : String?
    public let address2 : String?
    public let city : String?
    public let state : String?
    public let zip : String?
    public let country : String?
    public let phone : String?
    public let hours : String?
    public let spokenDescription : String?
    public let range1 : String?
    public let range2 : String?
    public let enableRanging : String?
    public let alwaysAlert : String?
    public let isDemo : String?
    public let samplesToAverage : String?
    public let rangingMethod : String?
    public let averagingMethod : String?
    public let useLocationPacket : String?
    public  let rSSICalibration : String?
    public let expireTimeoutSeconds : String?
    public let useNearby : String?
    public let useTargetHeading : String?
    public let targetHeading : String?
    public let useValidCourse : String?
    public let advancedNotifications : String?
    public let beaconClass : String?
    public let beaconUse : String?
    public let beaconUseData : String?
    public let icon : String?
    public let transitId : String?
    public let transitData : String?
    public let passioUserId : String?
    public let routeId : String?
    public let stopId : String?
    public let annHeading : String?
    public let annHeadingSpan : String?
    public let pointMe : String?
    public let hideMoreInfo : String?
    public let dateInserted : String?
    public let lastUpdate : String?
    public let idLhSpecialMessage : String?
    public let message : String?
    public let idSpecials : String?
    public let businessImage : String?
    public  let specialText : String?
    public let spokenDetails : String?

    public  enum CodingKeys: String, CodingKey {

        case idLh = "idLh"
        case latitude = "latitude"
        case longitude = "longitude"
        case idLighthouse = "idLighthouse"
        case idCommunityPartner = "idCommunityPartner"
        case uniqueId = "UniqueId"
        case locationName = "LocationName"
        case manufacturer = "Manufacturer"
        case model = "Model"
        case nID = "NID"
        case bID = "BID"
        case beaconType = "BeaconType"
        case uWBId = "UWBId"
        case mNID = "mNID"
        case mBID = "mBID"
        case uUID = "UUID"
        case major = "Major"
        case minor = "Minor"
        case lat = "Lat"
        case lon = "Lon"
        case foursquareID = "FoursquareID"
        case locuID = "LocuID"
        case hasMenu = "hasMenu"
        case mountingLocation = "MountingLocation"
        case pathDirection = "PathDirection"
        case relativeLocation = "RelativeLocation"
        case address1 = "Address1"
        case address2 = "Address2"
        case city = "City"
        case state = "State"
        case zip = "Zip"
        case country = "Country"
        case phone = "Phone"
        case hours = "Hours"
        case spokenDescription = "SpokenDescription"
        case range1 = "Range1"
        case range2 = "Range2"
        case enableRanging = "EnableRanging"
        case alwaysAlert = "AlwaysAlert"
        case isDemo = "IsDemo"
        case samplesToAverage = "SamplesToAverage"
        case rangingMethod = "RangingMethod"
        case averagingMethod = "AveragingMethod"
        case useLocationPacket = "UseLocationPacket"
        case rSSICalibration = "RSSICalibration"
        case expireTimeoutSeconds = "ExpireTimeoutSeconds"
        case useNearby = "UseNearby"
        case useTargetHeading = "UseTargetHeading"
        case targetHeading = "TargetHeading"
        case useValidCourse = "UseValidCourse"
        case advancedNotifications = "AdvancedNotifications"
        case beaconClass = "BeaconClass"
        case beaconUse = "BeaconUse"
        case beaconUseData = "BeaconUseData"
        case icon = "Icon"
        case transitId = "TransitId"
        case transitData = "TransitData"
        case passioUserId = "PassioUserId"
        case routeId = "RouteId"
        case stopId = "StopId"
        case annHeading = "AnnHeading"
        case annHeadingSpan = "AnnHeadingSpan"
        case pointMe = "PointMe"
        case hideMoreInfo = "HideMoreInfo"
        case dateInserted = "DateInserted"
        case lastUpdate = "LastUpdate"
        case idLhSpecialMessage = "idLhSpecialMessage"
        case message = "Message"
        case idSpecials = "idSpecials"
        case businessImage = "businessImage"
        case specialText = "specialText"
        case spokenDetails = "SpokenDetails"
    }

    public required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        idLh = try values.decodeIfPresent(String.self, forKey: .idLh)
        latitude = try values.decodeIfPresent(String.self, forKey: .latitude)
        longitude = try values.decodeIfPresent(String.self, forKey: .longitude)
        idLighthouse = try values.decodeIfPresent(String.self, forKey: .idLighthouse)
        idCommunityPartner = try values.decodeIfPresent(String.self, forKey: .idCommunityPartner)
        uniqueId = try values.decodeIfPresent(String.self, forKey: .uniqueId)
        locationName = try values.decodeIfPresent(String.self, forKey: .locationName)
        manufacturer = try values.decodeIfPresent(String.self, forKey: .manufacturer)
        model = try values.decodeIfPresent(String.self, forKey: .model)
        nID = try values.decodeIfPresent(String.self, forKey: .nID)
        bID = try values.decodeIfPresent(String.self, forKey: .bID)
        beaconType = try values.decodeIfPresent(String.self, forKey: .beaconType)
        uWBId = try values.decodeIfPresent(String.self, forKey: .uWBId)
        mNID = try values.decodeIfPresent(String.self, forKey: .mNID)
        mBID = try values.decodeIfPresent(String.self, forKey: .mBID)
        uUID = try values.decodeIfPresent(String.self, forKey: .uUID)
        major = try values.decodeIfPresent(String.self, forKey: .major)
        minor = try values.decodeIfPresent(String.self, forKey: .minor)
        lat = try values.decodeIfPresent(String.self, forKey: .lat)
        lon = try values.decodeIfPresent(String.self, forKey: .lon)
        foursquareID = try values.decodeIfPresent(String.self, forKey: .foursquareID)
        locuID = try values.decodeIfPresent(String.self, forKey: .locuID)
        hasMenu = try values.decodeIfPresent(String.self, forKey: .hasMenu)
        mountingLocation = try values.decodeIfPresent(String.self, forKey: .mountingLocation)
        pathDirection = try values.decodeIfPresent(String.self, forKey: .pathDirection)
        relativeLocation = try values.decodeIfPresent(String.self, forKey: .relativeLocation)
        address1 = try values.decodeIfPresent(String.self, forKey: .address1)
        address2 = try values.decodeIfPresent(String.self, forKey: .address2)
        city = try values.decodeIfPresent(String.self, forKey: .city)
        state = try values.decodeIfPresent(String.self, forKey: .state)
        zip = try values.decodeIfPresent(String.self, forKey: .zip)
        country = try values.decodeIfPresent(String.self, forKey: .country)
        phone = try values.decodeIfPresent(String.self, forKey: .phone)
        hours = try values.decodeIfPresent(String.self, forKey: .hours)
        spokenDescription = try values.decodeIfPresent(String.self, forKey: .spokenDescription)
        range1 = try values.decodeIfPresent(String.self, forKey: .range1)
        range2 = try values.decodeIfPresent(String.self, forKey: .range2)
        enableRanging = try values.decodeIfPresent(String.self, forKey: .enableRanging)
        alwaysAlert = try values.decodeIfPresent(String.self, forKey: .alwaysAlert)
        isDemo = try values.decodeIfPresent(String.self, forKey: .isDemo)
        samplesToAverage = try values.decodeIfPresent(String.self, forKey: .samplesToAverage)
        rangingMethod = try values.decodeIfPresent(String.self, forKey: .rangingMethod)
        averagingMethod = try values.decodeIfPresent(String.self, forKey: .averagingMethod)
        useLocationPacket = try values.decodeIfPresent(String.self, forKey: .useLocationPacket)
        rSSICalibration = try values.decodeIfPresent(String.self, forKey: .rSSICalibration)
        expireTimeoutSeconds = try values.decodeIfPresent(String.self, forKey: .expireTimeoutSeconds)
        useNearby = try values.decodeIfPresent(String.self, forKey: .useNearby)
        useTargetHeading = try values.decodeIfPresent(String.self, forKey: .useTargetHeading)
        targetHeading = try values.decodeIfPresent(String.self, forKey: .targetHeading)
        useValidCourse = try values.decodeIfPresent(String.self, forKey: .useValidCourse)
        advancedNotifications = try values.decodeIfPresent(String.self, forKey: .advancedNotifications)
        beaconClass = try values.decodeIfPresent(String.self, forKey: .beaconClass)
        beaconUse = try values.decodeIfPresent(String.self, forKey: .beaconUse)
        beaconUseData = try values.decodeIfPresent(String.self, forKey: .beaconUseData)
        icon = try values.decodeIfPresent(String.self, forKey: .icon)
        transitId = try values.decodeIfPresent(String.self, forKey: .transitId)
        transitData = try values.decodeIfPresent(String.self, forKey: .transitData)
        passioUserId = try values.decodeIfPresent(String.self, forKey: .passioUserId)
        routeId = try values.decodeIfPresent(String.self, forKey: .routeId)
        stopId = try values.decodeIfPresent(String.self, forKey: .stopId)
        annHeading = try values.decodeIfPresent(String.self, forKey: .annHeading)
        annHeadingSpan = try values.decodeIfPresent(String.self, forKey: .annHeadingSpan)
        pointMe = try values.decodeIfPresent(String.self, forKey: .pointMe)
        hideMoreInfo = try values.decodeIfPresent(String.self, forKey: .hideMoreInfo)
        dateInserted = try values.decodeIfPresent(String.self, forKey: .dateInserted)
        lastUpdate = try values.decodeIfPresent(String.self, forKey: .lastUpdate)
        idLhSpecialMessage = try values.decodeIfPresent(String.self, forKey: .idLhSpecialMessage)
        message = try values.decodeIfPresent(String.self, forKey: .message)
        idSpecials = try values.decodeIfPresent(String.self, forKey: .idSpecials)
        businessImage = try values.decodeIfPresent(String.self, forKey: .businessImage)
        specialText = try values.decodeIfPresent(String.self, forKey: .specialText)
        spokenDetails = try values.decodeIfPresent(String.self, forKey: .spokenDetails)
    }

}
