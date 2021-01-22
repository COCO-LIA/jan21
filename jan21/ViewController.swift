//
//  ViewController.swift
//  jan21
//
//  Created by 황현지 on 2021/01/21.
//

import UIKit

class ViewController: UIViewController {
    
    //데이터 담을공간
    //모델 설정

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //네트워킹
    //데이터파싱


}

//1.
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 10
        }
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)

            cell1.textLabel?.text = "texttt"
            cell1.detailTextLabel?.text = "detailllll"

            return cell1
            
        } else {
            
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)

            cell2.textLabel?.text = "texttt"

            return cell2
        }

    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30.0
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "header입니다"
        } else {
            return "2222입니다"
        }
        
    }
    
}

//2 Moya(네트워킹 라이브러리, AF포함됨) 설치 - Network 폴더 생성 - MovieApi 파일 생성
