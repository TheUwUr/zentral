module frituras::frituras {
    use std::debug::print;
    use std::string::{utf8};
    const NUMERO: u8 = 100;
    

    public fun suma(x:u8) {

        let mut contador: u8 = 0;

        loop {
            contador = contador + 1;
            if (contador == x) {
                break
            } else if ((contador % 2) == 0) {
                print(&(utf8(b"NUMERO PAR")));
                print(&contador);
                continue
            };
            print(&(utf8(b"NUMERO IMPAR")));

        }

    }



    #[test]
    public fun testing() {
        suma(10);
    }
}