fn failing() {
    let mut a: Felt252Dict<felt252> = Default::default();
    let mut b: Felt252Dict<felt252> = Default::default();

    b.insert(0, 0);
    a.insert(1, 1);
    b.insert(2, 2);
}

fn passing_let_order() {
    let mut b: Felt252Dict<felt252> = Default::default();
    let mut a: Felt252Dict<felt252> = Default::default();

    b.insert(0, 0);
    a.insert(1, 1);
    b.insert(2, 2);
}

fn passing_insert_order() {
    let mut a: Felt252Dict<felt252> = Default::default();
    let mut b: Felt252Dict<felt252> = Default::default();

    b.insert(0, 0);
    b.insert(2, 2);
    a.insert(1, 1);
}

fn main() {
    // passing_let_order();
    // passing_insert_order();
    failing();
}

