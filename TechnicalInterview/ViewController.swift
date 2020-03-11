//
//  ViewController.swift
//  TechnicalInterview
//
//  Created by Silva, Jonathan on 3/11/20.
//  Copyright © 2020 LuxoftInterview. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    struct GitHubRespositoriesSearchResponse: Codable {
        let totalResults: Int
        let items: [GitHubRepository]
        
        enum CodingKeys: String, CodingKey {
            case totalResults = "total_count"
            case items
        }
    }
    
    struct GitHubRepository: Codable {
        let id: Int
        let name: String
        let fullName: String
        let isPrivate: Bool
        let owner: GithubRepoOwner?
        let url: String
        let repoDescription: String
        
        enum CodingKeys: String, CodingKey {
            case id, name
            case fullName = "full_name"
            case isPrivate = "private"
            case owner
            case url
            case repoDescription = "description"
        }
    }
    
    struct GithubRepoOwner: Codable {
        let id: Int
        let avatarUrl: String?
        
        enum CodingKeys: String, CodingKey {
            case id
            case avatarUrl = "avatar_url"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GithubAPI().searchRepository(searchValue: "rx", type: GitHubRespositoriesSearchResponse.self) { (object, error) in
            print(object)
            print(error)
        }
    }


}

