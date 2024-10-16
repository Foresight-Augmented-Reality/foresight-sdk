import Foundation

/*
 
 "NID": "",
 "BID": "",
 "idLighthouseButton": "4",
 "idLighthouse": "-1",
 "Level": "0",
 "ParentLevel": "0",
 "Category": "2",
 "ButtonText": "Check In",
 "ButtonType": "1",
 "ButtonData": "CheckInOut",
 "ButtonData2": "",
 "Position": "1",
 "Icon": "0",
 "Status": "1",
 "DateInserted": "2017-01-19 22:33:48",
 "LastUpdate": "2020-02-27 08:43:49"
 */

public class ButtonRecord : Codable, Identifiable {
    public var id: ObjectIdentifier {
           // Create a unique ObjectIdentifier based on the idLh string
        return ObjectIdentifier(self);
    }
    public let NID: String?
    public let BID: String?
    public let idLighthouseButton: String?
    public let idLighthouse: String?
    public let Level: String?
    public let ParentLevel: String?
    public let Category: String?
    public let ButtonText: String?
    public let ButtonType: String?
    public let ButtonData: String?
    public let ButtonData2: String?
    public let Position: String?
    public let Icon: String?
    public let Status: String?
    public let DateInserted: String?
    public let LastUpdate: String?
    

    public  enum CodingKeys: String, CodingKey {
        case NID = "NID"
        case BID = "BID"
        case idLighthouseButton = "idLighthouseButton"
        case idLighthouse = "idLighthouse"
        case Level = "Level"
        case ParentLevel = "ParentLevel"
        case Category = "Category"
        case ButtonText = "ButtonText"
        case ButtonType = "ButtonType"
        case ButtonData = "ButtonData"
        case ButtonData2 = "ButtonData2"
        case Position = "Position"
        case Icon = "Icon"
        case Status = "Status"
        case DateInserted = "DateInserted"
        case LastUpdate = "LastUpdate"
    }

    public required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        NID = try values.decodeIfPresent(String.self, forKey: .NID)
        BID = try values.decodeIfPresent(String.self, forKey: .BID)
        idLighthouseButton = try values.decodeIfPresent(String.self, forKey: .idLighthouseButton)
        idLighthouse = try values.decodeIfPresent(String.self, forKey: .idLighthouse)
        Level = try values.decodeIfPresent(String.self, forKey: .Level)
        ParentLevel = try values.decodeIfPresent(String.self, forKey: .ParentLevel)
        Category = try values.decodeIfPresent(String.self, forKey: .Category)
        ButtonText = try values.decodeIfPresent(String.self, forKey: .ButtonText)
        ButtonType = try values.decodeIfPresent(String.self, forKey: .ButtonType)
        ButtonData = try values.decodeIfPresent(String.self, forKey: .ButtonData)
        ButtonData2 = try values.decodeIfPresent(String.self, forKey: .ButtonData2)
        Position = try values.decodeIfPresent(String.self, forKey: .Position)
        Icon = try values.decodeIfPresent(String.self, forKey: .Icon)
        Status = try values.decodeIfPresent(String.self, forKey: .Status)
        DateInserted = try values.decodeIfPresent(String.self, forKey: .DateInserted)
        LastUpdate = try values.decodeIfPresent(String.self, forKey: .LastUpdate)
    }

}
