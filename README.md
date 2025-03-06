## Hear2There SDK Demo

This documentation exists to provide an introduction into the Hear2There SDK demonstration, including detecting local beacons and our API surface. 

# Hear2There Operational Theory
Hear2there provides accessible descriptions of venues in order to give those with
disabilities, or anybody that wants more information, independence and confidence to
move about a venue and understand what is around them.
These descriptions are presented to the user when their Hear2There supported app
encounters a Hear2There beacon. A beacon represents a micro-location within a venue.
When a beacon is encountered by the Hear2There app or Hear2There SDK app, the
information about that location should be presented to the user. This information can be
customized through the Hear2There Installation app or through the Hear2There Admin
Portal by the venue administrator. Examples descriptions can include information such as
a layout of a hotel lobby, accessible directories and signage, location of emergency exits,
accessible menus, etc. Any relevant information that a person would need to safely and
independently move about a venue can be attached to a particular beacon.
Integration into a third party app is straight forward utilizing the Hear2There SDK. The basic
theory of operation is as follows:

1. Download the list of beacons that are nearby. Currently a large subset of
beacons is downloaded, but this will be limited in the future utilizing the
users location.
2. Store this data in non-volatile memory so it is available at next app start
whether there is a data connection or not. This is a good idea for use cases
where there may be no data connection such as a subway station. Always
update the local datastore when new data is received through the download
function.
3. Download the list of Insights (buttons). This is additional information that
can be accessed about the micro-location that the beacon represents.
4. Store this data in non-volatile memory in the same manner as the list of
beacons.
5. Start scanning for nearby beacons.
6. When a beacon is encountered, match the NamespaceID and InstanceId
with the NID and BID fields in the downloaded data.
7. Determine if the detected beacon is withing the range of the Range1 value
from the stored data.
8. If within range, play a notification tone, and display the relevant information
for that micro-location.
9. Continue scanning for more beacons as the person moves through the venue
and display the new micro-location data when the next beacon is within
range.
We suggest a standard way of displaying the micro-location information so a user can
easily access the information in a consistent manner across any Hear2There enabled app.

(INSERT IMAGES HERE)

Follow the SDK instructions to integrate Hear2There into your own app and use the
Hear2There Demo app if you need further guidelines on how to complete the integration.
## Hear2There Beacons
This library is designed to interact with Foresight AR's Hear2There beacons. Hear2There Beacons implement the Eddystone protocol.

![](https://shop.foresightar.com/cdn/shop/files/mbm02cl_480x480.png?v=1692502982)

Eddystone beacons are small, wireless transmitters that use Bluetooth Low Energy (BLE) technology to broadcast signals to nearby devices, such as smartphones and tablets. These beacons emit a unique identifier that can be used to trigger specific actions on the receiving device, like opening a webpage, displaying a notification, or providing location-based information. Unlike traditional Bluetooth connections, Eddystone beacons don't require pairing with the device and can operate on a coin cell battery for several years. They are commonly used for proximity marketing, indoor navigation, asset tracking, and various Internet of Things (IoT) applications.


This demo library provides functionality to:

1) Detect Local beacons nearby
2) Provide real time ranging of those beacons by measuring the RSSI (Received Signal Strength Indicator)
3) Interact with the Foresight Hear2There remote API, by listing Beacons in our database along with relevent Geotagging information


## Hear2There SDK
The SDK itself provides two classes of interest:
1) Hear2ThereAPIManager: A class that can fetch the list of beacons in our database
2) BeaconFinder: A class responsible for maintaining a list of nearby beacons and updating their RSSI.

BeaconFinder will keep an Eddystone in it's collection until it hasn't recieved a BLE update from the device for a short timeout period (about 30 seconds)


## Installing
1. [Download](https://github.com/Foresight-Augmented-Reality/foresight-sdk/releases) the SDK
1. Add the XCFramework to your project
    In Xcode:
    Go to File > Add Files to "YourProjectName..."
    Select the Hear2ThereSDK.xcframework file and click Add.
    Make sure "Copy items if needed" is checked if you want to keep a copy of the XCFramework within your project's folder.

2. Link the framework to your Project. Be sure to Select "Embed and Sign" in your embed link settings.

3. Add a "Bluetooth Always Usage Description" in your Property List in Build Settings. This is a required permission to scan for Bluetooth Becons.

3. Import the library in your SwiftUI View
```swift
import Hear2ThereSDK
```


## Using The Beacon Finder Class
A Beacon Finder can be class instantiated on a SwiftUI View and will automatically start searching for nearby beacons

```swift
struct ContentView: View {
    @StateObject var beaconFinder = BeaconFinder()
    ....
}
```

As nearby beacons are detected they are added to the `beaconFinder.beacons` collection. Since `BeaconFinder` implements `ObservableObject` any UI that relies on it will automatically update when new beacons are detected or RSSI changes:

```swift
List(beaconFinder.beacons) { record in
    VStack(alignment: .leading) {
        HStack {
                Text("Description:")
                    .font(.caption)
                Text(record.description)
            }
            HStack {
                Text("RSSI:")
                    .font(.caption)
                Text(String(record.rssi))
            }
    }
}
```

## Using The API manager class. 
An ApiManager can be class instantiated on a SwiftUI View and be used to make requests against our API. 

```swift
struct ContentView: View {
    @StateObject private var hear2ThereApi = Hear2ThereAPIManager()
    ....
}
```

Currently we only support fetching all avaiable beacons.


Fetching Lighthouses can be triggered when your UI code is ready to load from the remote server:

```swift
var body: some View {
    TabView {
        List(hear2ThereApi.lighthouses) { record in
            VStack(alignment: .leading) {
                Text(record.spokenDescription.unsafelyUnwrapped)
                    .font(.headline)
                Text(record.spokenDetails.unsafelyUnwrapped)
            }
        }
    }.onAppear {
        // API triggered here when our view is visible
        hear2ThereApi.fetchLighthouses()
    }
}
```
