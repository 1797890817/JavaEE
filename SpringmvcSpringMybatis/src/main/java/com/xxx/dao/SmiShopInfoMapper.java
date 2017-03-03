package com.xxx.dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.xxx.model.SmiShopInfo;

/**
 * 影院店铺信息映射关系 数据实例化接口
 * 
 * @author author
 * @date 2016/02/16
 */
public interface SmiShopInfoMapper {
	public static final String ALL_COLS = "id, shop_no shopNo, shop_name shopName, shop_type shopType, shop_password shopPassword, note";
	public static final String TABLE_NAME = "smi_shop_info";

	/**
	 * 根据门店编码和密码获取门店信息
	 * 
	 * @param password
	 *            门店密码
	 * @param shopNo
	 *            门店编码
	 */
	public SmiShopInfo getByNoAndPwd(
			@Param("password") String password, 
			@Param("shopNo") String shopNo);
	
	@Select("select " + ALL_COLS + " from "+ TABLE_NAME + " where shop_no = #{shopNo}")
	public SmiShopInfo getByNo(String shopNo);

}
