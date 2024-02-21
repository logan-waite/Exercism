pub fn is_armstrong_number(num: u32) -> bool {
    let digits = num
        .to_string()
        .chars()
        .map(|d| d.to_digit(10).unwrap())
        .collect::<Vec<_>>();

    let num_length: u32 = digits.len().try_into().unwrap();
    let sum_of_powers = digits.iter().fold(0, |sum, d| sum + d.pow(num_length));

    return sum_of_powers == num;
}
