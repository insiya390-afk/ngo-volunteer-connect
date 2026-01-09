package com.crce.post;
public class post {
private String title;
private int id;

private String caption;
private String imgpath;

public post() {
	
}

public post(String title, int id, String caption, String imgpath) {
	super();
	this.title = title;
	this.id = id;
	this.caption = caption;
	this.imgpath = imgpath;
}


public String getTitle() {
	return title;
}

public void setTitle(String title) {
	this.title = title;
}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getCaption() {
	return caption;
}

public void setCaption(String caption) {
	this.caption = caption;
}

public String getImgpath() {
	return imgpath;
}

public void setImgpath(String imgpath) {
	this.imgpath = imgpath;
}

@Override
public String toString() {
	return "post [title=" + title + ", id=" + id + ", caption=" + caption + ", imgpath=" + imgpath + "]";
}






}
