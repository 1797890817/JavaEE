package cn.goodjobs.cms.utils;

import java.io.Serializable;

import org.apache.commons.validator.GenericValidator;

public class Pager implements Serializable {

	private static final long serialVersionUID = -4853649627933466931L;

	private int pageSize = 10;

	private String requestPage;

	private int recordCount = -1;

	private int firstRow = 0;

	private int rowCount = 10;

	
	private int currentPage = 1;

	private int pageCount = 1;

	private int firstPage = 1;

	private int priviousPage = 1;

	private int nextPage = 1;

	private int lastPage = 1;

	public Pager() {
	}

	public int getCurrentPage() {
		return this.currentPage;
	}

	public int getFirstPage() {
		return this.firstPage;
	}

	public Integer getFirstRow() {
		return this.firstRow;
	}

	public int getLastPage() {
		return this.lastPage;
	}

	public int getNextPage() {
		return this.nextPage;
	}

	public int getPageCount() {
		return this.pageCount;
	}

	public Integer getPageSize() {

		return this.pageSize;
	}

	public int getPriviousPage() {
		return this.priviousPage;
	}

	public int getRecordCount() {
		return this.recordCount;
	}

	public String getRequestPage() {
		return GenericValidator.isLong(this.requestPage) ? this.requestPage : "1";
	}

	public Integer getRowCount() {
		return this.rowCount;
	}
	
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public void setRequestPage(String requestPage) {
		this.requestPage = requestPage;
	}

	/**
	 * @param recordCount
	 * @param pageSize
	 * @param requestPage
	 */
	public void init(int recordCount, int pageSize, String requestPage) {

		if(requestPage == null){
			requestPage = "-1";
		}
		int iRequestPage = Integer.parseInt(requestPage); 		
		this.recordCount = recordCount;
		this.pageSize = pageSize;

		this.pageCount = recordCount % pageSize == 0 ? recordCount/pageSize : recordCount/pageSize + 1;
		if (iRequestPage > this.pageCount) {
			iRequestPage = this.pageCount;
		} else if (iRequestPage < 1) {
			iRequestPage = 1;
		}

		this.currentPage = iRequestPage;
		this.priviousPage = this.currentPage - 1;
		this.nextPage = this.currentPage + 1;
		this.lastPage = this.pageCount;
		this.firstRow = new Integer(pageSize * (this.currentPage - 1));
		this.rowCount = this.pageSize;

	}
}
