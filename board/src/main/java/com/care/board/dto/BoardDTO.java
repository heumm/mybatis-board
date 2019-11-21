package com.care.board.dto;

import java.text.Format;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class BoardDTO {
	private int boardNum;
	private String title;
	private String content;
	private String writerId;
	private String regDate;
	private int viewCount;
	private int recommend;
	private int unrecommend;
	
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	
	public BoardDTO() {}
	
	public BoardDTO(String title, String content, String writerId) {
		this.title = title;
		this.content = content;
		this.writerId = writerId;
	}
	
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriterId() {
		return writerId;
	}
	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}
	public String getRegDate() {
		format.applyPattern(regDate);
		return regDate;
	}
	public void setRegDate(String regDate) {
		try {
			this.regDate = format.format(format.parse(regDate));
		} catch (ParseException e) {
			e.printStackTrace();
		}
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
		return "BoardDTO [boardNum=" + boardNum + ", title=" + title + ", content=" + content + ", writerId=" + writerId
				+ ", regDate=" + regDate + ", viewCount=" + viewCount + ", recommend=" + recommend + ", unrecommend="
				+ unrecommend + "]";
	}
	
	
}
