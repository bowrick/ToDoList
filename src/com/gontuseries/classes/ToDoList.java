package com.gontuseries.classes;

public class ToDoList {

    private final long id;
    private final String content;

    public ToDoList(long id, String content) {
        this.id = id;
        this.content = content;
    }

    public long getId() {
        return id;
    }

    public String getContent() {
        return content;
    }
}