package com.bitstudy.app.domain;

public class ProductDto {
    //상품 Getter,Setter
    private int p_index;

    private int category_index;
    private int image_id;
    private int p_no;
    private String p_name;
    private String p_price;
    private String p_amount;
    private String p_detail;
    private String p_sale;
    private String p_view;
    private String p_in_day;
    private String p_sell;
    private String p_refund_yn;

    private String saveImage;






    public int getP_index() {
        return p_index;
    }

    public void setP_index(int p_index) {
        this.p_index = p_index;
    }
    public int getCategory_index() {
        return category_index;
    }

    public void setCategory_index(int category_index) {
        this.category_index = category_index;
    }

    public int getImage_id() {
        return image_id;
    }

    public void setImage_id(int image_id) {
        this.image_id = image_id;
    }

    public int getP_no() {
        return p_no;
    }

    public void setP_no(int p_no) {
        this.p_no = p_no;
    }

    public String getP_name() {
        return p_name;
    }

    public void setP_name(String p_name) {
        this.p_name = p_name;
    }

    public String getP_price() {
        return p_price;
    }

    public void setP_price(String p_price) {
        this.p_price = p_price;
    }

    public String getP_amount() {
        return p_amount;
    }

    public void setP_amount(String p_amount) {
        this.p_amount = p_amount;
    }

    public String getP_detail() {
        return p_detail;
    }

    public void setP_detail(String p_detail) {
        this.p_detail = p_detail;
    }

    public String getP_sale() {
        return p_sale;
    }

    public void setP_sale(String p_sale) {
        this.p_sale = p_sale;
    }

    public String getP_view() {
        return p_view;
    }

    public void setP_view(String p_view) {
        this.p_view = p_view;
    }

    public String getP_in_day() {
        return p_in_day;
    }

    public void setP_in_day(String p_in_day) {
        this.p_in_day = p_in_day;
    }

    public String getP_sell() {
        return p_sell;
    }

    public void setP_sell(String p_sell) {
        this.p_sell = p_sell;
    }

    public String getP_refund_yn() {
        return p_refund_yn;
    }

    public void setP_refund_yn(String p_refund_yn) {
        this.p_refund_yn = p_refund_yn;
    }

    public String getSaveImage() {
        return saveImage;
    }

    public void setSaveImage(String saveImage) {
        this.saveImage = saveImage;
    }
}
