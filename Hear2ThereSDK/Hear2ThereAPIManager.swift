//
//  HereToThereAPIManager.swift
//  HereToThereDemo
//
//  Created by clark rinker on 9/4/24.
//

import Foundation
import Combine


public class Hear2ThereAPIManager: ObservableObject {
    @Published public var lighthousesIsLoading = true;
    @Published public var buttonsIsLoading = true;
    @Published public var lighthouses: [LighthouseRecord] = []
    @Published public var buttons: [ButtonRecord] = []
    
    public init() {}
    
    public func fetchButtons() {
        buttonsIsLoading = true;
        guard let url = URL(string: "https://www.foresightar.app/rn_getallbuttons") else {
            // Handle invalid URL
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                // Handle network error
                return
            }

            guard let data = data else {
                // Handle missing data
                return
            }

            do {
                let decodedRecords = try JSONDecoder().decode([ButtonRecord].self, from: data)
                DispatchQueue.main.async {
                    self.buttons = decodedRecords // Update state on the main thread
                    self.lighthousesIsLoading = false;
                }
            } catch {
                // Handle JSON decoding error
            }
        }.resume()
    }

    public func fetchLighthouses() {
        lighthousesIsLoading = true;
        guard let url = URL(string: "https://www.foresightar.app/h2tgetlighthousesall.php") else {
            // Handle invalid URL
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                // Handle network error
                return
            }

            guard let data = data else {
                // Handle missing data
                return
            }

            do {
                let decodedRecords = try JSONDecoder().decode([LighthouseRecord].self, from: data)
                DispatchQueue.main.async {
                    self.lighthouses = decodedRecords // Update state on the main thread
                    self.lighthousesIsLoading = false;
                }
            } catch {
                // Handle JSON decoding error
            }
        }.resume()
    }
}

