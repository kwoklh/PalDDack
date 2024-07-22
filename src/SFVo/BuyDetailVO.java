package SFVo;

// 구매 상세 VO
public class BuyDetailVO {
	private int buyQty; // 구매수량
	private int buyCost; // 구매가격
	private String revYn; // 리뷰 작성 여부
	private String buyDate; // 구매날짜
	
	public int getBuyQty() {
		return buyQty;
	}
	public void setBuyQty(int buyQty) {
		this.buyQty = buyQty;
	}
	public int getBuyCost() {
		return buyCost;
	}
	public void setBuyCost(int buyCost) {
		this.buyCost = buyCost;
	}
	public String getRevYn() {
		return revYn;
	}
	public void setRevYn(String revYn) {
		this.revYn = revYn;
	}
	public String getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(String buyDate) {
		this.buyDate = buyDate;
	}
	
}
