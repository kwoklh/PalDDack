package SFVo;

// 상품 VO
public class ProductVO {
	private String proCode; // 상품코드
	private String proName; // 상품명
	private int proSellCost; // 상품판매가격
	private String proInDate; // 등록일
	private int proStock; // 재고
	private String proDelYn; // 삭제여부
	private String proCon; // 상품설명
	private String proUnit; // 상품단위
	
	public String getProCode() {
		return proCode;
	}
	public void setProCode(String proCode) {
		this.proCode = proCode;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public int getProSellCost() {
		return proSellCost;
	}
	public void setProSellCost(int proSellCost) {
		this.proSellCost = proSellCost;
	}
	public String getProInDate() {
		return proInDate;
	}
	public void setProInDate(String proInDate) {
		this.proInDate = proInDate;
	}
	public int getProStock() {
		return proStock;
	}
	public void setProStock(int proStock) {
		this.proStock = proStock;
	}
	public String getProDelYn() {
		return proDelYn;
	}
	public void setProDelYn(String proDelYn) {
		this.proDelYn = proDelYn;
	}
	public String getProCon() {
		return proCon;
	}
	public void setProCon(String proCon) {
		this.proCon = proCon;
	}
	public String getProUnit() {
		return proUnit;
	}
	public void setProUnit(String proUnit) {
		this.proUnit = proUnit;
	}
	@Override
	public String toString() {
		return "ProductVO [proCode=" + proCode + ", proName=" + proName + ", proSellCost=" + proSellCost
				+ ", proInDate=" + proInDate + ", proStock=" + proStock + ", proDelYn=" + proDelYn + ", proCon="
				+ proCon + ", proUnit=" + proUnit + "]";
	}

	
}

