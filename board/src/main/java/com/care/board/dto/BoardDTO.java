package com.care.board.dto;

import java.util.Date;

public class BoardDTO {
	private int boardNum;
	private String title;
	private String writerId;
	private Date regDate;
	private int viewCount;
	private int recommend;
	private int unrecommend;
	
	
	public int getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriterId() {
		return writerId;
	}
	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getViewCount() {
		return viewCount;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	public int getRecommend() {
		return recommend;
	}
	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}
	public int getUnrecommend() {
		return unrecommend;
	}
	
	public void setUnrecommend(int unrecommend) {
		this.unrecommend = unrecommend;
	}
	@Override
	public String toString() {
		return "BoardDTO [boardNum=" + boardNum + ", title=" + title + ", writerId=" + writerId + ", regDate=" + regDate
				+ ", viewCount=" + viewCount + ", recommend=" + recommend + ", unrecommend=" + unrecommend + "]";
	}
	
}
