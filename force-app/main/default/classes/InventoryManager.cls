public class InventoryManager {
    	String productName;
    	String productCode;
    	Integer costPrice;
    	Integer sellingPrice;
    	static Integer productCount;
    
    public InventoryManager() {
        productCount++;    
    }
    public InventoryManager(String productName, String productCode){
        productCount++;
        this.productName = productName;
        this.productCode = productCode; 
    }
    public void setCostPrice(integer costPrice){
       
        this.costPrice = costPrice;
    } 
    public integer getCostPrice(){
        return this.costPrice;
    }
    public void setSellingPrice(integer sellingPrice){
    
    this.sellingPrice = sellingPrice;
    }
    public integer getSellingPrice(){
        return this.sellingPrice;
    }
    public void productDisplay(){
        system.debug('product name is => '+ productName);
        system.debug('product code is => '+ productCode);
        system.debug('Cost price is => '+ costPrice);
        system.debug('Selling price is => '+ sellingPrice);
       
       decimal profitPercent = (SellingPrice-CostPrice)*100/CostPrice;
        system.debug(profitPercent);
    if(profitPercent >= 20){
      system.debug('Star Product');
    }else{
        system.debug('Average Product');
    }
     
  }

}