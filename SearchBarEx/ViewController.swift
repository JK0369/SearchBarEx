//
//  ViewController.swift
//  ContainerEx
//
//  Created by 김종권 on 2021/06/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBarContainerView: UIView!

    private var myTableViewController: MyTableViewController?
    private var searchController: UISearchController = {
        return UISearchController(searchResultsController: nil)
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupSearchBar()

        setupNavigationBarTitle()

    }

    private func setupNavigationBarTitle() {
        title = "테스트 화면"
    }
}

// MARK: - Search Controller

extension ViewController {
    private func setupSearchBar() {
        searchController.delegate = self
        searchController.searchBar.delegate = self
        searchController.obscuresBackgroundDuringPresentation = false // 디폴트 true: 검색창에 포커스 > 모달 방식 (뒷 배경 약간 어두워지는 처리 + 탭해도 선택 안되는 상태)
        // 동일한 뷰 컨트롤러를 사용하여 검색 가능한 컨텐츠 및 검색 결과를 표시하는 경우 이 속성을 보통 false로 설정
        searchController.hidesNavigationBarDuringPresentation = false // default는 true

        searchController.searchBar.barStyle = .default
        searchController.searchBar.placeholder = "검색 창"

        searchController.searchBar.translatesAutoresizingMaskIntoConstraints = true
        searchController.searchBar.frame = searchBarContainerView.bounds
        searchController.searchBar.autoresizingMask = [.flexibleWidth]
        searchBarContainerView.addSubview(searchController.searchBar)
        definesPresentationContext = true
    }
}

extension ViewController: UISearchControllerDelegate {
    func willPresentSearchController(_ searchController: UISearchController) {
        print(#function, "updateQueriesSuggestions")
    }

    func willDismissSearchController(_ searchController: UISearchController) {
        print(#function, "updateQueriesSuggestions")
    }

    func didDismissSearchController(_ searchController: UISearchController) {
        print(#function, "updateQueriesSuggestions")
    }
}

extension ViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let searchText = searchBar.text, !searchText.isEmpty else { return }
        searchController.isActive = false
        print(searchText)
    }

    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        print("cancel")
    }
}
