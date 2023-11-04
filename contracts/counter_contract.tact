import "@stdlib/deploy";

contract CounterContract with Deployable {
    val: Int;
    id: Int;    

    init(id: Int) {
        self.id = id;
        self.val = 0;
    }

    receive ("increment"){
        self.val = self.val + 1;
    }

    get fun counter() : Int{
         return self.val;
    }

    get fun id(): Int {
        return self.id;
    }
}
