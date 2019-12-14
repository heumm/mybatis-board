package com.care.board.pagination;

public class Pagination {

	 /** 한 페이지당 게시글 수 **/
    private int pageSize = 10;
    
    /** 한 블럭(range)당 페이지 수 **/
    private int rangeSize = 5;
    
    /** 현재 페이지 **/
    private int curPage = 1;
    
    /** 현재 블럭(range) **/
    private int curRange = 1;
    
    /** 총 게시글 수 **/
    private int listCnt;
    
    /** 총 페이지 수 **/
    private int pageCnt;
    
    /** 총 블럭(range) 수 **/
    private int rangeCnt;
    
    /** 시작 페이지 **/
    private int startPage = 1;
    
    /** 끝 페이지 **/
    private int endPage = 1;
    
    /** 시작 index **/
    private int startIndex = 0;
    
    /** 이전 페이지 **/
    private int prevPage;
    
    /** 다음 페이지 **/
    private int nextPage;
	
	public Pagination(int listCnt, int curPage) {
		
		setListCnt(listCnt);
		setPageCnt(listCnt);
		setStartIndex(curPage);
		setEndPage(curPage);
		setCurPage(curPage);
		setCurRange(curPage);
		
		this.rangeCnt = (int)Math.ceil(this.pageCnt * 1.0 / this.rangeSize);
		if(pageCnt < endPage) {
			this.endPage = pageCnt;
			this.startPage = pageCnt / rangeSize * rangeSize + 1;
		}else {
			this.startPage = endPage - rangeSize + 1;
		}
		System.out.println(this);
	}

	

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getRangeSize() {
		return rangeSize;
	}

	public void setRangeSize(int rangeSize) {
		this.rangeSize = rangeSize;
	}

	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage <= pageCnt ? curPage : pageCnt;
	}

	public int getCurRange() {
		return curRange;
	}

	public void setCurRange(int curPage) {
		this.curRange = (int)Math.ceil(curPage * 1.0 / rangeSize);
	}

	public int getListCnt() {
		return listCnt;
	}

	public void setListCnt(int listCnt) {
		this.listCnt = listCnt;
	}

	public int getPageCnt() {
		return pageCnt;
	}

	/** 총 페이지 수 : Math.ceil은 소수점 아랫 자리를 올리는 메소드이다.
	 *  페이지가 나누어떨어지지 않으면 한 페이지가 더 필요하다
	 **/
	public void setPageCnt(int listCnt) {
		this.pageCnt = (int)Math.ceil(listCnt * 1.0 / this.pageSize);
	}

	public int getRangeCnt() {
		return rangeCnt;
	}

	public void setRangeCnt(int rangeCnt) {
		
		this.rangeCnt = rangeCnt;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int curPage) {
		this.endPage = (int)Math.ceil(curPage * 1.0 / this.rangeSize) * this.rangeSize;

	}

	public int getStartIndex() {
		return startIndex;
	}
	
	
	/** 
	 * MySQL의 limit를 사용하기 위해
	 * 현재 페이지를 받아서 그에 맞는 게시글 시작 번호를 설정한다.
	 **/
	public void setStartIndex(int curPage) {
		this.startIndex = (curPage - 1) * pageSize;
	}

	public int getPrevPage() {
		return prevPage;
	}

	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}
	
	
	
	
	@Override
	public String toString() {
		return "Pagination [pageSize=" + pageSize + ", rangeSize=" + rangeSize + ", curPage=" + curPage + ", curRange="
				+ curRange + ", listCnt=" + listCnt + ", pageCnt=" + pageCnt + ", rangeCnt=" + rangeCnt + ", startPage="
				+ startPage + ", endPage=" + endPage + ", startIndex=" + startIndex + ", prevPage=" + prevPage
				+ ", nextPage=" + nextPage + "]";
	}
	
}
