// move_semantics2.cairo
// Make me compile without changing line 16 or moving line 13!
// Execute `starklings hint move_semantics2` or use the `hint` watch subcommand for a hint.

use array::ArrayTrait;
use debug::PrintTrait;
use array::ArrayTCloneImpl;


fn main() {
    let arr0 = ArrayTrait::new();

    let mut arrOther = arr0.clone();

    fill_arr(ref arrOther);

    // arr1.print();

    // Do not change the following line!
    arr0.print();
}

fn fill_arr(ref arr: Array<felt252>) {
    // let mut arr =  arr;

    arr.append(22);
    arr.append(44);
    arr.append(66);
}
