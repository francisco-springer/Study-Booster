package com.studybooster.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;


/**
 * The persistent class for the SystemHistory database table.
 * 
 */
@Entity
@NamedQuery(name="SystemHistory.findAll", query="SELECT s FROM SYSTEM_HISTORY s")
public class SYSTEM_HISTORY implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="SYSTEMHISTORY_HISTORYID_GENERATOR" )
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="SYSTEMHISTORY_HISTORYID_GENERATOR")
	private String historyID;

	@Lob
	private String desc1;

	private Timestamp historyDate;

	@Lob
	private String txt;

	public SYSTEM_HISTORY() {
	}

	public String getHistoryID() {
		return this.historyID;
	}

	public void setHistoryID(String historyID) {
		this.historyID = historyID;
	}

	public String getDesc1() {
		return this.desc1;
	}

	public void setDesc1(String desc1) {
		this.desc1 = desc1;
	}

	public Timestamp getHistoryDate() {
		return this.historyDate;
	}

	public void setHistoryDate(Timestamp historyDate) {
		this.historyDate = historyDate;
	}

	public String getTxt() {
		return this.txt;
	}

	public void setTxt(String txt) {
		this.txt = txt;
	}

}