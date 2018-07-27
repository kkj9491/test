package web.board1;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class board1Ctr {
	
	@Autowired
	private board1Svc boardSvc;
	
	// 리스트작성
	@RequestMapping(value = "/Board1List")
	public String BoardList(ModelMap modelMap) throws Exception{
		List<?> listview = boardSvc.selectBoardList();
		
		modelMap.addAttribute("listview", listview);
		return "board1/BoardList";
	}
	
	// 글쓰기
	@RequestMapping(value = "/board1Form")
	public String boardForm() throws Exception {
		return "board1/boardForm";		
	}
	
}
