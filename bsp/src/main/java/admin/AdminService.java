package admin;

import java.util.List;

import user.UserVo;

public interface AdminService {
	List<AdminVo> selectAll(AdminVo vo);
	int insert(AdminVo vo);
	int delete(AdminVo vo);
	AdminVo login(AdminVo vo);
}
