//
//  MovieApi.swift
//  jan21
//
//  Created by 황현지 on 2021/01/23.
//

import Foundation
//3
import Moya

//4
enum MovieApi {
    case airingToday
    case onTheAir
    case popular
    case topRated
}

//5
extension MovieApi: TargetType {
    //공통 URL
    var baseURL: URL {
        guard let url = URL(string: "https://api.themoviedb.org/3/tv") else {
            fatalError("baseURL could not be configured")
        }
        return url
    }
    
    var path: String {
        switch self {
        case .airingToday:
            return "/airing_today"
        case .onTheAir:
            return "/on_the_air"
        case .popular:
            return "/popular"
        case .topRated:
            return "/top_rated"
        }
    }
    
    //GET, POST, 등등
    var method: Moya.Method {
        switch self {
        case .airingToday, .onTheAir, .popular, .topRated:
            return .get
        }
    }
    
    //데이터를 어떻게 받아오는지 - 데이터타입
    var sampleData: Data {
        switch self {
        case .airingToday, .onTheAir, .popular, .topRated:
            return Data()
        }
    }
    
    //주소 속 apikey = task를 의미 , 각각의 주소뒤에 ?뒤부터 마지막까지
    var task: Task {
        switch self {
        case .airingToday, .onTheAir, .popular, .topRated:
            return .requestParameters(parameters: ["api_key" : "b804ea7f3826d58a902a69a0e017708f"], encoding: URLEncoding.queryString)
        }
    }
    //헤더에 담길 값 - 바디:사용자 입력값 / 헤더(데이터 전송/요청시 헤더와 바디가 있다): 기기접속정보, 요청정보, 토큰 등 데이터의 백그라운드적인 정보들 
    var headers: [String : String]? {
        return ["Content-Type" : "application/json"]
    }
    
    
}

