//
//  APIService.swift
//  MVVMTest
//
//  Created by Hanif M on 11/12/20.
//

import Foundation

class APIService :  NSObject {

    private let sourcesURL = URL(string: "https://reqres.in/api/users?page=2")!

    func apiToGetEmployeeData(completion : @escaping (Employees) -> ()){
        URLSession.shared.dataTask(with: sourcesURL) { (data, urlResponse, error) in
            if let data = data {

                let jsonDecoder = JSONDecoder()

                print(data)

                let empData = try! jsonDecoder.decode(Employees.self, from: data)
                    completion(empData)
            }
        }.resume()
    }
}
