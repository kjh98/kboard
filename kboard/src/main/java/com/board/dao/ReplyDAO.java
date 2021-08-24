package com.board.dao;

import java.util.List;

import com.board.domain.ReplyVO;

public interface ReplyDAO {
	// 댓글 조회
	public List<ReplyVO> list(int bno) throws Exception;

	// 댓글 작성
	public String write(ReplyVO vo) throws Exception;

	// 댓글 수정
	public void modify(ReplyVO vo) throws Exception;

	// 댓글 삭제
	public void delete(ReplyVO vo) throws Exception;

	// 게시글 관련 댓글 전부 삭제
	public void replyDelete(ReplyVO vo) throws Exception;
}
