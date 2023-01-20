package com.customer;

public class music {
	
	private int id;
	private String  eventID;
	private String  eventName;
	private String  location;
	private String  musicBand;
	private String  artistA;
	private String  artistB;
	private String  artistC;
	private String  date;
	private String  tickets;
	public music(int id, String eventID, String eventName, String location, String musicBand, String artistA,
			String artistB, String artistC, String date, String tickets) {
		super();
		this.id = id;
		this.eventID = eventID;
		this.eventName = eventName;
		this.location = location;
		this.musicBand = musicBand;
		this.artistA = artistA;
		this.artistB = artistB;
		this.artistC = artistC;
		this.date = date;
		this.tickets = tickets;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEventID() {
		return eventID;
	}
	public void setEventID(String eventID) {
		this.eventID = eventID;
	}
	public String getEventName() {
		return eventName;
	}
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getMusicBand() {
		return musicBand;
	}
	public void setMusicBand(String musicBand) {
		this.musicBand = musicBand;
	}
	public String getArtistA() {
		return artistA;
	}
	public void setArtistA(String artistA) {
		this.artistA = artistA;
	}
	public String getArtistB() {
		return artistB;
	}
	public void setArtistB(String artistB) {
		this.artistB = artistB;
	}
	public String getArtistC() {
		return artistC;
	}
	public void setArtistC(String artistC) {
		this.artistC = artistC;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTickets() {
		return tickets;
	}
	public void setTickets(String tickets) {
		this.tickets = tickets;
	}
	
	
	

}
