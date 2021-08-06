package order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class OrderServiceimpl implements OrderService {
	@Autowired
	OrderDao dao ;

	@Override
	public List<OrderVo> selectAll(OrderVo vo) {
		int totCount = dao.count(vo); // 총갯수
		// 총페이지수
		int totPage = totCount / vo.getPageRow();
		if (totCount % vo.getPageRow() > 0) totPage++;
		// 시작페이지
		int strPage = (vo.getReqPage()-1)/vo.getPageRange()
						*vo.getPageRange()+1;
		int endPage = strPage+vo.getPageRange()-1;
		if (endPage > totPage) endPage = totPage;
		
		vo.setStrPage(strPage);
		vo.setEndPage(endPage);
		vo.setTotCount(totCount);
		vo.setTotPage(totPage);
		System.out.println(vo);
		return dao.selectAll(vo);
	}
	
	@Override
	public OrderVo detail1(OrderVo vo) {
		return dao.detail1(vo);
	}

	@Override
	public List<OrderVo> detail2(OrderVo vo) {
		return dao.detail2(vo);
	}

	@Override
	public int insert(OrderVo vo) {
		return dao.insert(vo);
	}

	@Override
	public int update(OrderVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(OrderVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	/* 팝업 */
	@Override
	public List<OrderVo> selectPopup(OrderVo vo) {
		return dao.selectPopup(vo);
	}

	
	//----------------ADMIN--------------------------
	@Override
	public List<OrderVo> selectAdmin(OrderVo vo) {
		int totCount = dao.countAdmin(vo); // 총갯수
		// 총페이지수
		int totPage = totCount / vo.getPageRow();
		if (totCount % vo.getPageRow() > 0) totPage++;
		// 시작페이지
		int strPage = (vo.getReqPage()-1)/vo.getPageRange()
						*vo.getPageRange()+1;
		int endPage = strPage+vo.getPageRange()-1;
		if (endPage > totPage) endPage = totPage;
		
		vo.setStrPage(strPage);
		vo.setEndPage(endPage);
		vo.setTotCount(totCount);
		vo.setTotPage(totPage);
		System.out.println(vo);
		return dao.selectAdmin(vo);
	}

	@Override
	public List<OrderVo> selectAdmindelist(OrderVo vo) {
		int totCount = dao.countAdmin(vo); // 총갯수
		// 총페이지수
		int totPage = totCount / vo.getPageRow();
		if (totCount % vo.getPageRow() > 0) totPage++;
		// 시작페이지
		int strPage = (vo.getReqPage()-1)/vo.getPageRange()
						*vo.getPageRange()+1;
		int endPage = strPage+vo.getPageRange()-1;
		if (endPage > totPage) endPage = totPage;
		
		vo.setStrPage(strPage);
		vo.setEndPage(endPage);
		vo.setTotCount(totCount);
		vo.setTotPage(totPage);
		System.out.println(vo);
		return dao.selectAdmindelist(vo);
	}

	@Override
	public OrderVo selectoneAdmin(OrderVo vo) {
		return dao.selectoneAdmin(vo);
	}

	@Override
	public int insertIo(OrderVo vo) {
		return dao.insertIo(vo);
	}

	@Override
	public OrderVo selectPay(OrderVo vo) {
		return dao.selectPay(vo);
	}

	@Override
	public void updatePb(int no) {
		dao.updatePb(no);
	}

	@Override
	public void updatePi(int no) {
		dao.updatePi(no);
	}
	public OrderVo lastaddr(OrderVo vo) {
		return dao.lastaddr(vo);
	}

	@Override
	public List<OrderVo> wantReturning(OrderVo vo) {
		return dao.wantReturning(vo);
	}




}
