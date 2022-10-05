package com.megabox.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.megabox.member.dto.Member;

@Mapper // Mapper로 등록
public interface MemberMapper {

	public void memberJoin(Member m) throws Exception;

	public int memberLogin(String memberId, String mPassword) throws Exception;

	public int idcheck(String memberId) throws Exception;

	public String findId(String mName, String mEmail) throws Exception;

	public String findPw(String memberId, String mName, String mEmail) throws Exception;

	public Member getReadData(String memberId) throws Exception;

	public void updateMember(Member m) throws Exception;

	public Member updateMember(String memberId) throws Exception;
	
	public void deleteMember(String memberId, String mPassword) throws Exception;

}
