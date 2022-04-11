# count the number of curries in a sum operation between two digits
class TechnicalInterview
  def carry_operations(a, b)
    recurse(a, b, 0)
  end

  private

  def recurse(a, b, carry)
    return 1 if b == 0 && a + carry >= 10
    return 0 if b == 0 && a + carry < 10

    return 1 if a == 0 && b + carry >= 10
    return 0 if a == 0 && b + carry < 10

    upper_digit = a % 10
    lower_digit = b % 10

    carry = if upper_digit + lower_digit + carry >= 10
              1
            else
              0
            end

    recurse(a / 10, b / 10, carry) + carry
  end
end
