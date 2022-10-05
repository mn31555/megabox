package com.megabox.member.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.megabox.mapper.MemberMapper;
import com.megabox.member.dto.Member;

//MemberService 인터페이스를 구현한 클래스
@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired ////memberMapper에 있는 sql문을 MemberServiceImpl로 읽어와서 의존성주입하여 객체생성 한것.
	private MemberMapper memberMapper; //의존성 주입
	
	//경로 : MemberController -> MemberService(I) -> MemberServiceImpl(C) ->
	//		 MemberMapper(I) -> MemberMapper.xml
	
	//회원가입 처리
	@Override 
	public void memberJoin(Member m) throws Exception {
		memberMapper.memberJoin(m);
	}
	
	//로그인 Ajax검사
	@Override
	public int memberLogin(String memberId, String mPassword) throws Exception {
		int count = memberMapper.memberLogin(memberId, mPassword);
		
		return count;
	}
	
	//ID 중복처리
	@Override
	public int idcheck(String memberId) throws Exception {
		int count = memberMapper.idcheck(memberId);
		return count;
	}
	
	// ID 찾기
	@Override
	public String findId(String mName, String mEmail) throws Exception {
		System.out.println(mName + mEmail);
		String id = memberMapper.findId(mName, mEmail);	
		System.out.println(id);
		return id;
	}
	
	// PW 찾기
	@Override
	public String findPw(String memberId, String mName, String mEmail) throws Exception {
		
		String pw = memberMapper.findPw(memberId, mName, mEmail);
		return pw;
	}
	
	//하나의 유저 정보 가져오기(로그인 시 세션)
	@Override
	public Member getReadData(String memberId) throws Exception {
		Member m = memberMapper.getReadData(memberId);
		return m;
	}
	
	// 마이 페이지(회원정보 수정)
	@Override
	public void updateMember(Member m) throws Exception {
		memberMapper.updateMember(m);
	}
	
	@Override
	public void deleteMember(String memberId, String mPassword) throws Exception {
		memberMapper.deleteMember(memberId, mPassword);
	}

}
