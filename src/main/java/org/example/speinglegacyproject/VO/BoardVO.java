package org.example.speinglegacyproject.VO;

import java.sql.Timestamp;

public class BoardVO {
    private int id;
    private String title;
    private String content;
    private String writer;
    private Timestamp createdAt;
    
    // Default constructor
    public BoardVO() {}
    
    // Constructor with parameters
    public BoardVO(String title, String content, String writer) {
        this.title = title;
        this.content = content;
        this.writer = writer;
    }
    
    // Getters and Setters
    public int getId() {
        return id;
    }
    
    public void setId(int id) {
        this.id = id;
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
    
    public String getWriter() {
        return writer;
    }
    
    public void setWriter(String writer) {
        this.writer = writer;
    }
    
    public Timestamp getCreatedAt() {
        return createdAt;
    }
    
    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }
    
    @Override
    public String toString() {
        return "BoardVO{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", writer='" + writer + '\'' +
                ", createdAt=" + createdAt +
                '}';
    }
} 