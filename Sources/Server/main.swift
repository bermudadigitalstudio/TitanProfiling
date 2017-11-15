import Titan
import TitanKituraAdapter
//import HTTP

let t = Titan()

t.addFunction(healthz) // leaks memory
//t.get("/healthz") { req, res in
//	return (req, try! Response(code: 200, body: "Ok", headers: []))
//}
TitanKituraAdapter.serve(t.app, on: 80)
