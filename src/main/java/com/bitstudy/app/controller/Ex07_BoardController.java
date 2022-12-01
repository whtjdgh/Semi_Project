package com.bitstudy.app.controller;

import com.bitstudy.app.domain.Ex02_BoardDto;
import com.bitstudy.app.domain.Ex04_PageHandler;
import com.bitstudy.app.service.Ex06_BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* 게시판 리스트 화면 만들기
 *
 * 1) views 폴더에 boardList.jsp 만들기
 * 2) 보여줄 정보 결정
 *   1. 게시글
 *   2. 페이징: [이전] 1 2 3... [다음]
 *   3. 헌재 보고있는 페이지 번호
 * 1번은 Ex05_Test 에서 selectAll 부분 처럼 다 가져오면 됨.
 * 2,3번은 현재페이지, 한번에 표시해줄 페이지 개수(10개 같은)가 필요해서 Ex04_PageHandler 필요
 * */

@Controller
@RequestMapping("/board7")
public class Ex07_BoardController {

    @Autowired
    Ex06_BoardService boardService;

    /* - 순서 -
          1) 사용자가 게시판 페이지로 들어올때 '현재페이지'와 '한 페이지당 보여줄 페이지 개수' 를 컨트롤러에서 받아와야 하기 때문에 GetMapping 메서드에서 매개변수로 currPage pageSize를 받아야 한다.
          2) currPage와 pageSize를 받아서 map에 저장
          3) 모델에 담아서 뷰 단으로 넘겨준다
       *
       * */
    @GetMapping("/list")
    public String list(Integer page, Integer pageSize, Model m, HttpServletRequest request) {


        System.out.println("::" + request.getRequestURL());

        /** 로그인 아직 안한상태면 현재주소를 저장해서 로그인 페이지에 같이 보내기 */
        if(!loginChk(request)) {
			HttpSession session = request.getSession();
			session.setAttribute("toURL", request.getRequestURL());
			return "redirect:/login/login";
        }

        try {
            // 이건 매개변수 타입을 Integer 로 했을때 사용 가능
            if(page==null) page = 1;
            if(pageSize==null) pageSize = 10;


            // 종 게시물 개수 구해서
            int totalCount = boardService.getCount();
            //System.out.println("totalCount: " + totalCount);
            // 페이징 계산
            Ex04_PageHandler pageHandler = new Ex04_PageHandler(totalCount, page, pageSize);
            //System.out.println("pageHandler : " + pageHandler);

            // 페이징 계산 끝난 결과를 출력
            // boardMapper.xml 에 <select id="selectPage"> 부분에 값 보내서
            // 몇번째 부터 몇번째 까지 글을 긁어올건지 결정
            Map map = new HashMap();
            map.put("offset", (page-1)*pageSize);
            map.put("pageSize", pageSize);

            List<Ex02_BoardDto> list = boardService.getPage(map);
            // 이렇게 하면 최근 글 10개 가져온다.
            // view에 넘길거니까 모델에 담아서 보낸다.
            m.addAttribute("list", list);
            m.addAttribute("ph", pageHandler);

            System.out.println("list: " + list);

            return "boardList";

        } catch (Exception e) {
//            throw new RuntimeException(e);
            e.printStackTrace();
            return "0";
        }

    }

    private boolean loginChk(HttpServletRequest request) {
        HttpSession session = request.getSession();
        return session.getAttribute("id") != null; // 세션통에 id가 있다
        // 로그인 한 상태면 true, 아니면 false;
    }
}
