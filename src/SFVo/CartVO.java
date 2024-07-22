package SFVo;

// 장바구니 VO
public class CartVO {
	private String cartNo; // 장바구니 코드
	private int cartQty; // 상품수량
	
	public String getCartNo() {
		return cartNo;
	}
	public void setCartNo(String cartNo) {
		this.cartNo = cartNo;
	}
	public int getCartQty() {
		return cartQty;
	}
	public void setCartQty(int cartQty) {
		this.cartQty = cartQty;
	}
	
}
