package com.spring.app;

public class Staff {
    
    private int staffId;
    private String staffName;
    private String departmentName;
    private long contactNo;

    // Four-argument constructor
    public Staff(int staffId, String staffName, String departmentName, long contactNo) {
        this.staffId = staffId;
        this.staffName = staffName;
        this.departmentName = departmentName;
        this.contactNo = contactNo;
    }

    // Getters
    public int getStaffId() {
        return staffId;
    }

    public String getStaffName() {
        return staffName;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public long getContactNo() {
        return contactNo;
    }

    // Setters
    public void setStaffId(int staffId) {
        this.staffId = staffId;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }

    public void setContactNo(long contactNo) { // Corrected setter
        this.contactNo = contactNo;
    }
}
