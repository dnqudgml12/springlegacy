package org.example.speinglegacyproject.mapper;

import org.example.speinglegacyproject.VO.BoardVO;

import java.util.List;

public interface BoardMapper {
    List<BoardVO> getList();
    BoardVO get(int id);
    void insert(BoardVO board);
    void update(BoardVO board);
    void delete(int id);
} 