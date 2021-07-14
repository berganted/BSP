package user;

import java.util.List;


public interface UserService {
	List<UserVo>selectAll(UserVo vo);
	UserVo detail(UserVo vo);
	int insert(UserVo vo);
	UserVo edit(UserVo vo);
	int update(UserVo vo);
	 int delete(UserVo vo);
}
