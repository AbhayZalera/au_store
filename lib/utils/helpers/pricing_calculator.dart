
class APricingCalculator {
  ///--Calculate Price based on tax and shiping

  static double calculatorTotalPrice(double productPrice, String location){
    double taxRate  = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  ///---Calculate Shipping Cost

  static String calculateShippingCost(double productPrice, String location){
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  ///----Calculate tax
  static String calculateTax(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
  return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location){
    return 0.18;//Example TaxRate is 18%
  }

  static double getShippingCost(String location){
    return 40.00;
  }


}