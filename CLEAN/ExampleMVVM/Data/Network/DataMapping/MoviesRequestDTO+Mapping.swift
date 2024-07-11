//
//  MoviesRequestDTO+Mapping.swift
//  ExampleMVVM
//
//        on 22/03/2020.
//

import Foundation

struct MoviesRequestDTO: Encodable {
    let query: String
    let page: Int
}
