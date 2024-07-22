package SFVo;

// 문의사항 VO
public class DoorVO {
	private String doorCode; // 문의코드
	private String doorName; // 문의제목
	private String doorCon; // 문의내용
	private String doorWriDate; // 작성일자
	private String doorAYn; // 답변 여부
	
	public String getDoorCode() {
		return doorCode;
	}
	public void setDoorCode(String doorCode) {
		this.doorCode = doorCode;
	}
	public String getDoorName() {
		return doorName;
	}
	public void setDoorName(String doorName) {
		this.doorName = doorName;
	}
	public String getDoorCon() {
		return doorCon;
	}
	public void setDoorCon(String doorCon) {
		this.doorCon = doorCon;
	}
	public String getDoorWriDate() {
		return doorWriDate;
	}
	public void setDoorWriDate(String doorWriDate) {
		this.doorWriDate = doorWriDate;
	}
	public String getDoorAYn() {
		return doorAYn;
	}
	public void setDoorAYn(String doorAYn) {
		this.doorAYn = doorAYn;
	}
	
}
