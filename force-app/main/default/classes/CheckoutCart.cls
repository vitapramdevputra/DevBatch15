public class CheckoutCart {
   private static void checkout() {
        EmployeePurchaseOrder emp = new EmployeePurchaseOrder();
        emp.discount();
        CustomerPurchaseOrder cst = new CustomerPurchaseOrder();
        cst.discount();
        PartnerPurchaseOrder prt = new PartnerPurchaseOrder();
        prt.discount();

        
        PurchaseOrder emp1 = new EmployeePurchaseOrder();
        emp1.discount(); //10%
        PurchaseOrder cst1 = new CustomerPurchaseOrder();
        cst1.discount(); //5%
        PurchaseOrder prt1 = new PartnerPurchaseOrder();
        prt1.discount(); //15%

   }
}