package DTO;

import java.sql.Date;

public class RentalDTO {
    private String rentalNo;
    private String custNo;
    private Date rentalDate;
    private String equipCode;
    private Date returnDue;

    // 기본 생성자
    public RentalDTO() {}

    // 모든 필드를 받는 생성자
    public RentalDTO(String rentalNo, String custNo, Date rentalDate, String equipCode, Date returnDue) {
        this.rentalNo = rentalNo;
        this.custNo = custNo;
        this.rentalDate = rentalDate;
        this.equipCode = equipCode;
        this.returnDue = returnDue;
    }

    public String getRentalNo() { return rentalNo; }
    public void setRentalNo(String rentalNo) { this.rentalNo = rentalNo; }

    public String getCustNo() { return custNo; }
    public void setCustNo(String custNo) { this.custNo = custNo; }

    public Date getRentalDate() { return rentalDate; }
    public void setRentalDate(Date rentalDate) { this.rentalDate = rentalDate; }

    public String getEquipCode() { return equipCode; }
    public void setEquipCode(String equipCode) { this.equipCode = equipCode; }

    public Date getReturnDue() { return returnDue; }
    public void setReturnDue(Date returnDue) { this.returnDue = returnDue; }
}
