

import UIKit

class ListViewController: UIViewController {
    
    let fetcher = ConfigFetcher()
    var config : AppConfig? {
        didSet{
            DispatchQueue.main.async {
                self.productCollectionView.reloadData()
            }
        }
    }
    @IBOutlet weak var productCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.productCollectionView.register(UINib(nibName: "PizzaCell", bundle: nil), forCellWithReuseIdentifier: "PizzaCell")
        productCollectionView.delegate = self
        productCollectionView.dataSource = self
        fetchData()
    }
    func fetchData(){
        fetcher.fetchConfig{ [weak self] (error, config) -> Void in
            
            if error != nil{
                return
            }
            self?.config = config
        }
    }
}

extension ListViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return config?.productList.inde ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PizzaCell", for: indexPath) as! PizzaCell
        if  let product = config?.productList.pizzaList[indexPath.item] {
            cell.setupPizzaCell(product: product)
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
