package cn.gaomh.jsontest;


/**
 * 
 * author: template：wanghua,lidong 功能描述 ：机动车维修经营许可登记信息核对表 创建时间2014-10-9 3:06:46
 */
public class TrRptEnterpriseVerifyBean implements java.io.Serializable {
	
	
	private static final long serialVersionUID = 1L;

	private String message;
	private int statusCode;
	private java.lang.String oid;	
	
	private java.lang.String enterpriseId;	
	private java.lang.String enterpriseName;	
	private java.lang.String prmtNum;	
	
	private java.lang.String region;	
	
	private java.lang.String jyAddress;	
	
	private java.lang.String jdType;	
	
	private java.lang.String acctgMeth;	
	
	private java.lang.String legalPers;	
	
	private java.lang.String id;	
	
	private java.lang.String repairTel;	
	
	private java.lang.String phoneNum;	
	
	private java.lang.String repairFax;	
	
	private java.lang.String email;	
	
	private java.lang.String pstlNum;	
	
	private java.lang.String busTel;	
	
	private java.lang.String mgrarea;	
	
	private java.lang.Double prkArea;	
	
	private java.lang.Double plantArea;	
	
	private java.lang.Double rptArea;	
	
	private java.lang.Double zdArea;	
	
	private java.lang.Double fundTotal;	
	
	private java.lang.Double regTotal;	
	
	private java.lang.Double fixTotal;	
	
	private java.lang.Double flowTotal;	
	
	private java.util.Date openTime;	
	
	private java.lang.String describe;	
	
	private java.util.Date uploadTime;	
	
	private java.lang.Integer comStatus;	
	
	private java.lang.Integer checkNum;	
	
	private java.lang.Integer scrnStatus;	
	
	private java.lang.String remark;	
	
	private java.util.Date createTime;	
	
	private java.util.Date updateTime;	
	//columns END

//	public TrRptEnterpriseVerify(){
//	}
//	public TrRptEnterpriseVerify(
//			java.lang.String oid
//	){
//		this.oid = oid;
//	}

	/**设置"核对ID"**/
	public void setOid(java.lang.String value) {
		this.oid = value;
	}
	
	/**获取"核对ID"**/
	public java.lang.String getOid() {
		return this.oid;
	}
	/**设置"企业ID"**/
	public void setEnterpriseId(java.lang.String value) {
		this.enterpriseId = value;
	}
	
	/**获取"企业ID"**/
	public java.lang.String getEnterpriseId() {
		return this.enterpriseId;
	}
	/**设置"企业名称"**/
	public void setEnterpriseName(java.lang.String value) {
		this.enterpriseName = value;
	}
	
	/**获取"企业名称"**/
	public java.lang.String getEnterpriseName() {
		return this.enterpriseName;
	}
	/**设置"经营许可证号"**/
	public void setPrmtNum(java.lang.String value) {
		this.prmtNum = value;
	}
	
	/**获取"经营许可证号"**/
	public java.lang.String getPrmtNum() {
		return this.prmtNum;
	}
	/**设置"所属区县"**/
	public void setRegion(java.lang.String value) {
		this.region = value;
	}
	
	/**获取"所属区县"**/
	public java.lang.String getRegion() {
		return this.region;
	}
	/**设置"经营地址"**/
	public void setJyAddress(java.lang.String value) {
		this.jyAddress = value;
	}
	
	/**获取"经营地址"**/
	public java.lang.String getJyAddress() {
		return this.jyAddress;
	}
	/**设置"经济类型"**/
	public void setJdType(java.lang.String value) {
		this.jdType = value;
	}
	
	/**获取"经济类型"**/
	public java.lang.String getJdType() {
		return this.jdType;
	}
	/**设置"核算形式"**/
	public void setAcctgMeth(java.lang.String value) {
		this.acctgMeth = value;
	}
	
	/**获取"核算形式"**/
	public java.lang.String getAcctgMeth() {
		return this.acctgMeth;
	}
	/**设置"法定代表人"**/
	public void setLegalPers(java.lang.String value) {
		this.legalPers = value;
	}
	
	/**获取"法定代表人"**/
	public java.lang.String getLegalPers() {
		return this.legalPers;
	}
	/**设置"身份证号"**/
	public void setId(java.lang.String value) {
		this.id = value;
	}
	
	/**获取"身份证号"**/
	public java.lang.String getId() {
		return this.id;
	}
	/**设置"联系电话"**/
	public void setRepairTel(java.lang.String value) {
		this.repairTel = value;
	}
	
	/**获取"联系电话"**/
	public java.lang.String getRepairTel() {
		return this.repairTel;
	}
	/**设置"手机"**/
	public void setPhoneNum(java.lang.String value) {
		this.phoneNum = value;
	}
	
	/**获取"手机"**/
	public java.lang.String getPhoneNum() {
		return this.phoneNum;
	}
	/**设置"传真"**/
	public void setRepairFax(java.lang.String value) {
		this.repairFax = value;
	}
	
	/**获取"传真"**/
	public java.lang.String getRepairFax() {
		return this.repairFax;
	}
	/**设置"EMAIL"**/
	public void setEmail(java.lang.String value) {
		this.email = value;
	}
	
	/**获取"EMAIL"**/
	public java.lang.String getEmail() {
		return this.email;
	}
	/**设置"邮政编号"**/
	public void setPstlNum(java.lang.String value) {
		this.pstlNum = value;
	}
	
	/**获取"邮政编号"**/
	public java.lang.String getPstlNum() {
		return this.pstlNum;
	}
	/**设置"业务电话"**/
	public void setBusTel(java.lang.String value) {
		this.busTel = value;
	}
	
	/**获取"业务电话"**/
	public java.lang.String getBusTel() {
		return this.busTel;
	}
	/**设置"许可经营范围"**/
	public void setMgrarea(java.lang.String value) {
		this.mgrarea = value;
	}
	
	/**获取"许可经营范围"**/
	public java.lang.String getMgrarea() {
		return this.mgrarea;
	}
	/**设置"停车场面积"**/
	public void setPrkArea(java.lang.Double value) {
		this.prkArea = value;
	}
	
	/**获取"停车场面积"**/
	public java.lang.Double getPrkArea() {
		return this.prkArea;
	}
	/**设置"生产厂房面积"**/
	public void setPlantArea(java.lang.Double value) {
		this.plantArea = value;
	}
	
	/**获取"生产厂房面积"**/
	public java.lang.Double getPlantArea() {
		return this.plantArea;
	}
	/**设置"接待室面积"**/
	public void setRptArea(java.lang.Double value) {
		this.rptArea = value;
	}
	
	/**获取"接待室面积"**/
	public java.lang.Double getRptArea() {
		return this.rptArea;
	}
	/**设置"占地面积"**/
	public void setZdArea(java.lang.Double value) {
		this.zdArea = value;
	}
	
	/**获取"占地面积"**/
	public java.lang.Double getZdArea() {
		return this.zdArea;
	}
	/**设置"资金总额"**/
	public void setFundTotal(java.lang.Double value) {
		this.fundTotal = value;
	}
	
	/**获取"资金总额"**/
	public java.lang.Double getFundTotal() {
		return this.fundTotal;
	}
	/**设置"注册资金"**/
	public void setRegTotal(java.lang.Double value) {
		this.regTotal = value;
	}
	
	/**获取"注册资金"**/
	public java.lang.Double getRegTotal() {
		return this.regTotal;
	}
	/**设置"固定资金"**/
	public void setFixTotal(java.lang.Double value) {
		this.fixTotal = value;
	}
	
	/**获取"固定资金"**/
	public java.lang.Double getFixTotal() {
		return this.fixTotal;
	}
	/**设置"流动资金"**/
	public void setFlowTotal(java.lang.Double value) {
		this.flowTotal = value;
	}
	
	/**获取"流动资金"**/
	public java.lang.Double getFlowTotal() {
		return this.flowTotal;
	}
	/**设置"开业时间"**/
	public void setOpenTime(java.util.Date value) {
		this.openTime = value;
	}
	
	/**获取"开业时间"**/
	public java.util.Date getOpenTime() {
		return this.openTime;
	}
	/**设置"经营者意见描述"**/
	public void setDescribe(java.lang.String value) {
		this.describe = value;
	}
	
	/**获取"经营者意见描述"**/
	public java.lang.String getDescribe() {
		return this.describe;
	}
	/**设置"上报日期"**/
	public void setUploadTime(java.util.Date value) {
		this.uploadTime = value;
	}
	
	/**获取"上报日期"**/
	public java.util.Date getUploadTime() {
		return this.uploadTime;
	}
	/**设置"企业状态1注销、2吊销、3歇业、4有效、5无效"**/
	public void setComStatus(java.lang.Integer value) {
		this.comStatus = value;
	}
	
	/**获取"企业状态1注销、2吊销、3歇业、4有效、5无效"**/
	public java.lang.Integer getComStatus() {
		return this.comStatus;
	}
	/**设置"核对次数"**/
	public void setCheckNum(java.lang.Integer value) {
		this.checkNum = value;
	}
	
	/**获取"核对次数"**/
	public java.lang.Integer getCheckNum() {
		return this.checkNum;
	}
	/**设置"筛选状态
质量信誉筛选企业，在筛选之前筛选状态字段更新为0，1、企业筛选、2、企业上报"**/
	public void setScrnStatus(java.lang.Integer value) {
		this.scrnStatus = value;
	}
	
	/**获取"筛选状态
质量信誉筛选企业，在筛选之前筛选状态字段更新为0，1、企业筛选、2、企业上报"**/
	public java.lang.Integer getScrnStatus() {
		return this.scrnStatus;
	}
	/**设置"备注"**/
	public void setRemark(java.lang.String value) {
		this.remark = value;
	}
	
	/**获取"备注"**/
	public java.lang.String getRemark() {
		return this.remark;
	}
	/**设置"创建日期"**/
	public void setCreateTime(java.util.Date value) {
		this.createTime = value;
	}
	
	/**获取"创建日期"**/
	public java.util.Date getCreateTime() {
		return this.createTime;
	}
	/**设置"更新日期"**/
	public void setUpdateTime(java.util.Date value) {
		this.updateTime = value;
	}
	
	/**获取"更新日期"**/
	public java.util.Date getUpdateTime() {
		return this.updateTime;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public int getStatusCode() {
		return statusCode;
	}

	public void setStatusCode(int statusCode) {
		this.statusCode = statusCode;
	}
	
}
