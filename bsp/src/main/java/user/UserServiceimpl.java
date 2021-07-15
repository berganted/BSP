package user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceimpl implements UserService {
	@Autowired
	UserDao dao ; 
	@Override
	public List<UserVo> selectAll(UserVo vo) {
		int totCount = dao.count(vo);	
		int totPage = totCount/vo.getPageRow();
		if(totCount % vo.getPageRow()>0) totPage++;
		int strPage = (vo.getReqPage()-1)/vo.getPageRange()*vo.getPageRange()+1;
		int endPage = strPage + (vo.getPageRange()-1);
		if(endPage>totPage) {
			endPage = totPage;
		}
		vo.setStrPage(strPage);
		vo.setEndPage(endPage);
		vo.setTotCount(totCount);
		vo.setTotPage(totPage);
		return dao.selectAll(vo);
	}
	@Override
	public UserVo detail(UserVo vo) {
		return dao.detail(vo);
	}
	@Override
	public UserVo edit(UserVo vo) {
		return dao.detail(vo);
	}
	@Override
	public int insert(UserVo vo) {
		return dao.insert(vo);
		
	}
	@Override
	public int update(UserVo vo) {
		return dao.update(vo);
		
	}
	@Override
	public int delete(UserVo vo) {
		return dao.delete(vo);
		 
	}
	@Override
	public int isDuplicateld(String id) {
		return dao.isDuplicateld(id);
	}

}
