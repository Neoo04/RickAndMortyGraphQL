import Apollo

protocol RickAndMortyService {
    func fetchAllcharacters()
}

class RickAndMortyServiceIml: RickAndMortyService {
    func fetchAllcharacters() {
        Network.shared.apollo.fetch(query: GetAllCharachtersQuery()) { result in
            switch result {
            case .success(let graphQLResult):
                print("Success! Result: \(graphQLResult)")
            case .failure(let error):
                print("Failure! Error: \(error)")
            }
        }
    }
}
